page 50124 Unit
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Unit;
    CardPageId = Card_Unit;
    Caption = 'Units';

    layout
    {
        area(Content)
        {
            repeater("Loakle:")
            {
                field(ID; Rec.Unit_ID)
                {
                    ApplicationArea = All;

                }
                field(Building; Rec.Building_ID)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Number; Rec.Number)
                {
                    ApplicationArea = All;

                }
                field(Surface; Rec.Surface)
                {
                    ApplicationArea = All;

                }
                field("Rental Cost"; Rec."Price/Meter")
                {
                    ApplicationArea = All;

                }
                field("Total Price"; Rec."Total Price")
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
            action(Action)
            {
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}