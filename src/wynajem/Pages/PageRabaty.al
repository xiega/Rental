page 50141 "Discount Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Discount;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;

                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;

                }
                field("Unit ID"; Rec."Unit ID")
                {
                    ApplicationArea = All;

                }
                field("Unit Name"; Rec."Unit Name")
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
                field("Discount"; Rec.Discount)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}