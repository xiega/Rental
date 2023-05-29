page 50125 Card_Building
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Building;

    layout
    {
        area(Content)
        {
            group(Informacje)
            {
                field(ID; Rec.Building_ID)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
            group(Lokalizacja)
            {
                field(City; Rec.City)
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Adress)
                {
                    ApplicationArea = All;

                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the picture that has been set up for the company, such as a company logo.';

                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();
                    end;
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