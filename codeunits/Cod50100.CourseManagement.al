codeunit 50100 "Course Management"
{
    Subtype = Normal;

    procedure ApproveApplication(CourseApllicatonId: Code[20])
    var
        CourseApp: Record ApplicationStatus;
        StudentRec: Record "student details";
    begin

        if not CourseApp.Get(CourseApllicatonId) then
            Error('Application not found.');


        if CourseApp.Status <> CourseApp.Status::Applied then
            Error('Application is not in a valid state for approval.');


        if not StudentRec.Get(CourseApp."StudentId") then
            Error('Student not found.');


        if StudentRec."Status" = StudentRec.Status::Rejected then
            Error('Student application cannot be approved as the student status is rejected.');

        CourseApp.Status := CourseApp.Status::Approved;
        CourseApp.Modify();


        if StudentRec."EnrolledCourses" = '' then
            StudentRec."EnrolledCourses" := CourseApp."CourseId"
        else
            StudentRec."EnrolledCourses" := StudentRec."EnrolledCourses" + ';' + CourseApp."CourseId";
        StudentRec.Modify();
    end;
}



