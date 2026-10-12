page 50101 "Belohnungstufekarte"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Belohnungstufe;
    CardPageId = "Belohnungstufekarte";
    caption = 'Bonusstufe';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Allgemein';
                field(Level; Rec.Level)
                {
                    ToolTip = 'Name der Bonusstufe, z. B. GOLD';
                }
                field("Minimum Reward points"; Rec."Minimum Reward Points")
                {
                    ToolTip = 'Punkte, die ein Kunde mindestens braucht';
                }
            }
        }

    }


}