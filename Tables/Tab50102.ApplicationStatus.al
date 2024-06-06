table 50102 ApplicationStatus
{
    Caption = 'ApplicationStatus';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "CourseApllicatonId"; Code[20])
        {
            Caption = 'CourseApllicaton Id';
        }
        field(2; "StudentId"; Code[20])
        {
            Caption = 'Application Id';
            TableRelation = "student details";
        }
        field(3; CourseId; Code[20])
        {
            Caption = 'CourseId';
            TableRelation = Course;
        }
        field(4; Status; enum status)
        {
            caption = 'Status';

        }
        field(5; Noseries; Code[20])
        {
            Caption = 'CourseId';
        }
    }
    keys
    {
        key(PK; "CourseApllicatonId")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit "NoSeriesManagement";//creating a variable
    begin
        if "CourseApllicatonId" = '' then begin
            NoSeriesMgt.InitSeries('SCI', "Noseries", 0D, "CourseApllicatonId", "Noseries");
        end;
    end;
}

