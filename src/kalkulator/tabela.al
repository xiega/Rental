table 50102 MyTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; X; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Y; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(3; Wynik; Decimal)
        {
            DataClassification = ToBeClassified;

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