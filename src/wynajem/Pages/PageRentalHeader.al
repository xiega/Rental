page 50133 "Rental Header List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Rental Header";
    CardPageId = "Rental Header Card";
    Caption = 'Rental Header';

    layout
    {
        area(content)
        {
            repeater("Header")
            {
                field("Rental Header"; Rec."Rental Header ID")
                {
                    ApplicationArea = All;
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("OD"; Rec."OD")
                {
                    ApplicationArea = All;
                }
                field("DO"; Rec."DO")
                {
                    ApplicationArea = All;
                }
                field("Payment Method"; Rec."Payment Method")
                {
                    ApplicationArea = All;
                }
                field("Payment Terms"; Rec."Payment Terms")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Payment Termin"; Rec."Payment Termin")
                {
                    ApplicationArea = All;
                }
                field(Customer_FlowField; Rec.Customer_FlowField)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        zmienna: Text;
}