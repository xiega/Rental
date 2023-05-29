page 50136 "Rental Header Card"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Rental Header";

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field("Rental Header"; Rec."Rental Header ID")
                {
                    ApplicationArea = All;
                }
                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                    //trigger OnValidate()
                    //begin
                    //    zmienna := Customer.Name
                    //end;
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
            }
            part(RentalLines; "Card_Lines")
            {
                ApplicationArea = Basic, Suite;
                Editable = true;
                SubPageLink = "Rental Header ID" = FIELD("Rental Header ID");
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Report")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    Reportt: Report LinesReport;
                    Header: Record "Rental Header";
                begin
                    CurrPage.SetSelectionFilter(Header);
                    Reportt.SetTableView(Header);
                    Reportt.Run();
                end;
            }
            action("Faktura")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesHeader: record "Sales Header";
                    Sales_Document_Type: Enum "Sales Document Type";
                begin
                    SalesHeader.Init();
                    SalesHeader."No." := Rec."Rental Header ID";
                    SalesHeader."Document Type" := Sales_Document_Type::Invoice;
                    SalesHeader.Insert();
                end;
            }
        }
    }

    var
        Customer: Record Customer;
        zmienna: Text;
}