table 50132 "Rental Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Rental Lines';

    fields
    {
        field(1; "Rental Header ID"; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Rental Header";
        }
        field(15; "Customer ID"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Rental Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Unit_ID"; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = Unit;
            trigger OnValidate()
            var
                Unit: Record Unit;
            begin
                Unit.SetRange("Unit_ID", Rec."Unit_ID");
                if (Unit.FindFirst()) then begin
                    Rec."Name" := Unit.Name;
                    Rec."Price/Meter" := Unit."Price/Meter";
                    Rec.Surface := Unit.Surface;
                    Rec."Total Price" := Unit."Total Price";
                end;
                Header.SetRange("Rental Header ID", Rec."Rental Header ID");
                if (Header.FindFirst()) then begin
                    Rec."Customer ID" := Header."Customer ID";
                    Header_OD := Header.OD;
                    Header_DO := Header."DO";
                end;
                if (Header.FindFirst()) then begin
                    Discount.SetRange("Customer ID", Rec."Customer ID");
                    Discount.SetRange("Unit ID", Rec."Unit_ID");
                    if (Discount.FindFirst()) then begin
                        if (Discount.OD < Header_OD) AND (Header_DO < Discount."DO") then begin
                            Validate(Rec.Discount, Discount.Discount);
                        end
                    end;
                end;
            end;
        }
        field(8; "Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Price/Meter"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                zmienna: Decimal;
            begin
                if (Rec.Discount > 0) then begin
                    zmienna := Rec.Discount / 100;
                    Rec."Total Price" := Rec."Price/Meter" * Rec.Surface * zmienna;
                end else begin
                    Rec."Total Price" := Rec."Price/Meter" * Rec.Surface;
                end;
            end;
        }
        field(10; "Surface"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                zmienna: Decimal;
            begin
                if (Rec.Discount > 0) then begin
                    zmienna := Rec.Discount / 100;
                    Rec."Total Price" := Rec."Price/Meter" * Rec.Surface * zmienna;
                end else begin
                    Rec."Total Price" := Rec."Price/Meter" * Rec.Surface;
                end;
            end;
        }
        field(11; "Total Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Discount"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                zmienna: Decimal;
            begin
                if (Rec.Discount > 0) then begin
                    zmienna := 100 - Rec.Discount;
                    zmienna := zmienna / 100;
                    Rec."Total Price" := Rec."Price/Meter" * Rec.Surface * zmienna;
                end else begin
                    Rec."Total Price" := Rec."Price/Meter" * Rec.Surface;
                end;
            end;
        }
    }

    keys
    {
        key(Primary;
        "Rental Header ID", "Rental Line No.")
        {
            Clustered = true;
        }
    }

    var
        Customer: Record Customer;
        Discount: Record Discount;
        Header: Record "Rental Header";
        Customer_ID: Text;
        Discount_OD: Date;
        Discount_DO: Date;
        Header_OD: Date;
        Header_DO: Date;
}