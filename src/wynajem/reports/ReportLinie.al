report 50140 LinesReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Header; "Rental Header")
        {
            column(Klient; "Customer Name")
            {
            }
            column(OD; "OD")
            {
            }
            column("Payment_Method"; "Payment Method")
            {
            }
            column(Total_Price; totalPrice)
            {
            }
            dataitem(Lines; "Rental Line")
            {
                DataItemLink = "Rental Header ID" = field("Rental Header ID");
                DataItemLinkReference = Header;
                column(Name; "Name")
                {
                }
                column(Price_Meter; "Price/Meter")
                {
                }
                column(Surface; Surface)
                {
                }
                column(TPrice; "Total Price")
                {
                }

            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }
    var
        totalPrice: Decimal;
}