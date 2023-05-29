page 50126 Card_Unit
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Unit;

    layout
    {
        area(Content)
        {
            group(Informacje)
            {
                field(ID; Rec.Unit_ID)
                {
                    ApplicationArea = All;

                }
                field(Building_ID; Rec.Building_ID)
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