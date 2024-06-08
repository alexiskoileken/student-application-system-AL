/// <summary>
/// Table Course (ID 50101).
/// </summary>
table 50101 Course
{
    Caption = 'Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CourseId; Code[20])
        {
            Caption = 'CourseId';
            Editable = false;

        }
        field(2; CourseName; Text[50])
        {
            Caption = 'CourseName';
        }
        field(3; Noseries; Code[20])
        {
            Caption = 'CourseName';

        }

    }
    keys
    {
        key(PK; CourseId, CourseName)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit "NoSeriesManagement";//creating a variable
    begin
        if "CourseId" = '' then begin
            NoSeriesMgt.InitSeries('SCI', "Noseries", 0D, "CourseId", "Noseries");
        end;
    end;


}
