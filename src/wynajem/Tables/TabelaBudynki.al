table 50120 Building
{
    DataClassification = ToBeClassified;
    DrillDownPageID = "Building";
    LookupPageId = "Card_Building";
    Caption = 'Building Table';

    fields
    {
        field(1; Building_ID; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; City; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Adress; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;

            trigger OnValidate()
            begin
                PictureUpdated := true;
            end;
        }
    }

    keys
    {
        key(Primary; Building_ID)
        {
            Clustered = true;
        }
    }

    var
        PictureUpdated: Boolean;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}