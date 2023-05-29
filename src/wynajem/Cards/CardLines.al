page 50134 Card_Lines
{
    AutoSplitKey = true;
    Caption = 'Lines';
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = "Rental Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Rental Header ID"; Rec."Rental Header ID")
                {
                    ApplicationArea = All;

                }
                field("No."; Rec."Rental Line No.")
                {
                    ApplicationArea = All;

                }
                field("Unit_ID"; Rec.Unit_ID)
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Price/Meter"; Rec."Price/Meter")
                {
                    ApplicationArea = All;
                }
                field("Surface"; Rec.Surface)
                {
                    ApplicationArea = All;
                }
                field("Total Price"; Rec."Total Price")
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

    var
        myInt: Integer;
}
