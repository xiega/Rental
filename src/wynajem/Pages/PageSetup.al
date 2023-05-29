page 50148 PageSetup
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RentalSetup;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Rental Series No."; Rec."Rental Series No.")
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