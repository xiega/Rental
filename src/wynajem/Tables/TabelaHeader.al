table 50131 "Rental Header"
{
    DataClassification = ToBeClassified;
    Caption = 'Rental Header';

    fields
    {
        field(1; "Rental Header ID"; Code[30])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Rental Header ID" <> xRec."Rental Header ID" then begin
                    NoSeriesMgt.TestManual('RENT');
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Customer ID"; Code[30])
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
        field(3; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "OD"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "DO"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Payment Method"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "payment method";
        }
        field(6; "Payment Terms"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "payment terms";
            trigger OnValidate()
            var
                Due: Record "Payment Terms";
            begin
                Due.SetRange("Code", Rec."Payment Terms");
                if (Due.FindFirst()) then begin
                    Rec."Due Date" := Due."Due Date Calculation";
                    Rec."Payment Termin" := CalcDate(Rec."Due Date", Rec.OD);
                end;
            end;
        }
        field(7; "Payment Termin"; Date)
        {
            DataClassification = ToBeClassified;
            TableRelation = "payment terms";
        }
        field(8; "Due Date"; DateFormula)
        {
            DataClassification = ToBeClassified;
            TableRelation = "payment terms";
        }
        field(9; Customer_FlowField; Integer)
        {
            CalcFormula = COUNT("Rental Line" WHERE("Customer ID" = Field("Customer ID")));

            Caption = 'Number of rented units';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "No. Series"; Code[20])
        {
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Primary; "Rental Header ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        InitInsert();
    end;

    var
        sHeader: Record "Sales Header";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NoSeries: Record "No. Series";
        RentalSetup: Record RentalSetup;

    Procedure InitInsert()
    begin

        if "Rental Header ID" = '' then begin
            NoSeriesMgt.InitSeries('RENT', xRec."No. Series", "OD", "Rental Header ID", "No. Series");
        end;
    end;
}