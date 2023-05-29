page 50101 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(X; Rec.X)
                {
                    ApplicationArea = All;
                }

                field(Y; Rec.Y)
                {
                    ApplicationArea = All;
                }

                field(Wynik; myInt)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Dodawanie)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    myInt := Rec.X + Rec.Y;
                end;
            }

            action(Odejmowanie)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    myInt := Rec.X - Rec.Y;
                end;
            }

            action(Mnożenie)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    myInt := Rec.X * Rec.Y;
                end;
            }

            action(Dzielenie)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    if Rec.Y = 0 then begin
                        MESSAGE('Uwaga, próba dzielenia przez zero!');
                    end
                    else begin
                        myInt := Rec.X / Rec.Y;
                    end;
                end;
            }
        }
    }

    var
        myInt: Decimal;
}