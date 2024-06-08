/// <summary>
/// Page Course table (ID 50103).
/// </summary>
page 50103 "Course table"
{
    ApplicationArea = All;
    Caption = 'Course table';
    PageType = List;
    SourceTable = Course;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CourseId; Rec.CourseId)
                {
                    ToolTip = 'Specifies the value of the CourseId field.', Comment = '%';

                }
                field(CourseName; Rec.CourseName)
                {
                    ToolTip = 'Specifies the value of the CourseName field.', Comment = '%';
                }
            }
        }
    }
}
