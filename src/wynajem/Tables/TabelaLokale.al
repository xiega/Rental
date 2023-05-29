table 50121 Unit
{
    DataClassification = ToBeClassified;
    Caption = 'Units';

    fields
    {
        field(1; Unit_ID; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Building_ID; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = Building;
        }
        field(8; Name; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Number; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Surface; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Price/Meter"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Rec."Total Price" := Rec.Surface * Rec."Price/Meter";
            end;
        }
        field(6; "Total Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Primary; Unit_ID)
        {
            Clustered = true;
        }
        key(Foreign; Building_ID)
        {
            Clustered = false;
        }
    }

    var
        myInt: Decimal;

}