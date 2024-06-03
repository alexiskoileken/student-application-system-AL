page 50104 "Course Application List"
{
    ApplicationArea = All;
    Caption = 'Course Application List';
    PageType = List;
    SourceTable = ApplicationStatus;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CourseApllicatonId; Rec.CourseApllicatonId)
                {
                    ToolTip = 'Specifies the value of the CourseApllicaton Id field.', Comment = '%';

                }
                field(StudentId; Rec.StudentId)
                {
                    ToolTip = 'Specifies the value of the Application Id field.', Comment = '%';
                    TableRelation = "student details"."Full Name";
                }
                field(CourseId; Rec.CourseId)
                {
                    ToolTip = 'Specifies the value of the CourseId field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(ApproveApplication)
            {
                Caption = 'Approve Application';
                ApplicationArea = All;

                trigger OnAction()
                var
                    CourseMgt: Codeunit "Course Management";
                begin
                    CourseMgt.ApproveApplication(Rec."StudentId");
                end;
            }
        }
    }
}