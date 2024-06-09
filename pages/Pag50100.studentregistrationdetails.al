/// <summary>
/// Page student registration details (ID 50100).
/// </summary>
page 50100 "student registration details"
{
    ApplicationArea = All;
    Caption = 'student registration details';
    PageType = List;
    SourceTable = "student details";
    CardPageId = "Students Detail Card";


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Student Id "; Rec."StudentId")
                {
                    ToolTip = 'Specifies the value of the Application Id  field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("Email"; Rec."Email")
                {
                    ToolTip = 'Specifies the value of the Email Address  field.', Comment = '%';
                }
            }
        }
    }
}
