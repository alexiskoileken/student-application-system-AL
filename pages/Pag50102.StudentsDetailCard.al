/// <summary>
/// Page Students Detail Card (ID 50102).
/// </summary>
page 50102 "Students Detail Card"
{
    ApplicationArea = All;
    Caption = 'Students Detail Card';
    PageType = Card;
    SourceTable = "student details";


    layout
    {
        area(content)
        {
            group("Personal Details")
            {
                Caption = 'Personal details';

                field("Student Id"; Rec."StudentId")
                {
                    ToolTip = 'Specifies the value of the Application Id  field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Second Name"; Rec."Second Name")
                {
                    ToolTip = 'Specifies the value of the Second Name field.', Comment = '%';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field(Nationality; Rec.Nationality)
                {
                    ToolTip = 'Specifies the value of the Nationality field.', Comment = '%';
                    TableRelation = "Country/Region".Name;
                }
            }
            group(contact)
            {
                Caption = 'Contact Details';

                field(" P.O BOX "; Rec." P.O BOX ")
                {
                    ToolTip = 'Specifies the value of the  P.O BOX  field.', Comment = '%';
                }
                field("Email"; Rec."Email")
                {
                    ToolTip = 'Specifies the value of the Email Address  field.', Comment = '%';
                    trigger OnValidate()
                    var
                        StudentEmail: codeunit MyPublisher;
                    begin
                        StudentEmail.OnEmailAdd(Rec."Email");
                    end;
                }
                field("Mobile Phone"; Rec."Mobile Phone")
                {
                    ToolTip = 'Specifies the value of the Mobile Phone field.', Comment = '%';
                    trigger OnValidate()
                    var
                        StudentPhoneNumber: codeunit MyPublisher;
                    begin
                        StudentPhoneNumber.OnPhoneNumberAdd(rec."Mobile Phone");
                    end;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.', Comment = '%';
                }
            }
            group("Parents Details")
            {
                Caption = 'parent details';

                field("Name of the father"; Rec."Name of the father")
                {
                    ToolTip = 'Specifies the value of the Name of the father field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                    trigger OnValidate()
                    var
                        ParentPhoneNumber: Codeunit MyPublisher;
                    begin
                        ParentPhoneNumber.OnPhoneNumberAdd(rec."Phone Number");
                    end;
                }
                field(Occupation; Rec.Occupation)
                {
                    ToolTip = 'Specifies the value of the Occupation field.', Comment = '%';
                }
                field(Deceased; Rec.Deceased)
                {
                    ToolTip = 'Specifies the value of the Deceased field.', Comment = '%';
                }
                field("Name of the mother"; Rec."Name of the mother")
                {
                    ToolTip = 'Specifies the value of the Name of the mother field.', Comment = '%';
                }
                field("Name of the Guardian"; Rec."Name of the Guardian")
                {
                    ToolTip = 'Specifies the value of the Name of the Guardian field.', Comment = '%';
                }

            }
            group("course")
            {
                Caption = 'courses offered';


                field("Courses "; Rec."Courses ")
                {
                    ToolTip = 'Specifies the value of the Courses  field.', Comment = '%';

                }
            }
        }
    }

}
