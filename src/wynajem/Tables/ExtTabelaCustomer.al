tableextension 50140 "Customer Extension" extends Customer
{
    fields
    {
        field(50000; Customer_FlowField; Integer)
        {
            CalcFormula = COUNT("Rental Line" WHERE("Customer ID" = Field("No.")));

            Caption = 'Number of rented units';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    var
        myInt: Integer;
}

pageextension 50141 MyExtension extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field(Customer_FlowField; Rec.Customer_FlowField)
            {
            }
        }
    }

    var
        myInt: Integer;
}