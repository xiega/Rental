page 50123 Building
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Building;
    CardPageId = Card_Building;
    Caption = 'Buildings';

    layout
    {
        area(Content)
        {
            repeater("Budynki:")
            {
                field(ID; Rec.Building_ID)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Adress)
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