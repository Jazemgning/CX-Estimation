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
    actions                                                   // ← neu
    {
        addlast(processing)
        {
            action(ShowBonusLevel)
            {
                ApplicationArea = All;
                Caption = 'Bonusstufe ermitteln';
                ToolTip = 'Zeigt, welche Bonusstufe der Kunde mit seinen Bonuspunkten erreicht.';
                Image = Calculate;

                trigger OnAction()
                var
                    BonusStufeMgt: Codeunit BonusStufeManagement;
                begin
                    BonusStufeMgt.ShowBonusLevel(Rec);
                end;
            }
        }
    }
}


