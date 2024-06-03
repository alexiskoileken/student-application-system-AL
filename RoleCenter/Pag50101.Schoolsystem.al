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
    Caption = 'MyProfile';

}

