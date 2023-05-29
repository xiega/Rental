table 50147 RentalSetup
{
    DataClassification = ToBeClassified;
    Caption = 'RentalSetup';

    fields
    {
        field(1; "Rental Series No."; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Rental Series No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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