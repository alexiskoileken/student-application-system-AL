table 50100 "student details"
{

    Caption = 'student details';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "StudentId"; Code[20])
        {
            Caption = 'Application Id ';
            Editable = false;


        }
        field(20; "Noseries"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(2; "Full Name"; Text[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(3; "First Name"; Text[20])
        {
            Caption = 'First Name';
            trigger OnValidate()


            begin
                fullname();
            end;
        }
        field(4; "Second Name"; Text[20])
        {
            Caption = 'Second Name';
            trigger OnValidate()


            begin
                fullname();
            end;
        }
        field(5; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
        field(6; Nationality; Text[10])
        {
            Caption = 'Nationality';
        }
        field(7; " P.O BOX "; Code[10])
        {
            Caption = ' P.O BOX ';
        }
        field(8; "Email Address "; Code[50])
        {
            Caption = 'Email Address ';
        }
        field(9; "Mobile Phone"; Code[50])
        {
            Caption = 'Mobile Phone';
        }
        field(10; City; Text[50])
        {
            Caption = 'City';
        }
        field(11; "Name of the father"; Text[50])
        {
            Caption = 'Name of the father';
        }
        field(12; "Phone Number"; code[50])
        {
            Caption = 'Phone Number';
        }
        field(13; Occupation; Text[50])
        {
            Caption = 'Occupation';
        }
        field(14; Deceased; Boolean)
        {
            Caption = 'Deceased';
        }
        field(15; "Name of the mother"; Text[50])
        {
            Caption = 'Name of the mother';
        }

        field(16; "Name of the Guardian"; Text[50])
        {
            Caption = 'Name of the Guardian';
        }


        field(19; "Courses "; Text[50])
        {
            Caption = 'Courses ';
            TableRelation = Course.CourseId;
        }

        field(21; "Status"; Option)
        {
            Caption = 'status ';
            OptionMembers = "Applied","Approved","Rejected";
        }
        field(22; EnrolledCourses; Text[50])
        {
            Caption = 'Enrolled courses';
            trigger OnValidate()

            begin
                EnrolledCourses := "Courses "
            end;

        }

    }
    keys
    {
        key(PK; "StudentId")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit "NoSeriesManagement";//creating a variable
    begin
        if "StudentId" = '' then begin
            NoSeriesMgt.InitSeries('SDN', "Noseries", 0D, "StudentId", "Noseries");
        end;
    end;

    trigger OnModify()


    begin
        fullname();
    end;

    local procedure fullname()
    begin
        "Full Name" := "First Name" + ' ' + "Second Name";
    end;

}
