pageextension 50100 "Client Bonus" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Bonus Points"; Rec."Bonus Points")
            {
                ApplicationArea = All;
                ToolTip = 'Bonuspunkte, die der Kunde gesammelt hat';
            }
        }
    }
}


