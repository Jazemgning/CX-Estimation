tableextension 50100 "Client Bonus" extends Customer
{
    fields
    {
        field(50100; "Bonus Points"; Integer)
        {
            Caption = 'Bonuspunkte';
            DataClassification = CustomerContent;
            MinValue = 0;
        }
    }

}