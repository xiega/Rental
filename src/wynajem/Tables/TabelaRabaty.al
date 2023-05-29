table 50140 Discount
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer ID"; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                Customer.SetRange("No.", Rec."Customer ID");
                if (Customer.FindFirst()) then begin
                    Rec."Customer Name" := Customer.Name;
                end;
            end;
        }
        field(2; "Customer Name"; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Unit ID"; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = Unit;
            trigger OnValidate()
            var
                Unit: Record Unit;
            begin
                Unit.SetRange("Unit_ID", Rec."Unit ID");
                if (Unit.FindFirst()) then begin
                    Rec."Unit Name" := Unit.Name;
                end;
            end;
        }
        field(4; "Unit Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "OD"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "DO"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Discount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Customer ID", "Unit ID")
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