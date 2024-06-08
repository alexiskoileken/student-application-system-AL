/// <summary>
/// Page School system (ID 50101).
/// </summary>
page 50101 "School system"
{
    ApplicationArea = All;
    Caption = 'School system';
    PageType = RoleCenter;
    actions
    {
        area(Sections)
        {
            group("student")
            {
                Caption = 'student registration details';
                group("Students")
                {
                    caption = 'students applications';
                    action("students Details")
                    {
                        RunObject = page "student registration details";
                        ApplicationArea = All;

                    }
                    action("Student courses")
                    {
                        RunObject = page "Course table";
                        ApplicationArea = ALL;
                    }
                }
                group(approval)
                {

                }

            }
            group(School)
            {
                Caption = 'school data';
                action("Registered Students")
                {
                    RunObject = page "Course Application List";
                    ApplicationArea = ALL;
                }
            }


        }
    }
}
profile MyProfile
{
    Description = 'Profile Display Name';
    RoleCenter = "School system";
    Caption = 'welcome ';

}
