page 50100 Name
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Belohnungstufe;
    Caption = 'Bonusstufen';
    CardPageId = "Belohnungstufekarte";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)

            {
                field(Level; Rec.Level)
                {
                    ToolTip = 'Name der Bonusstufe, z. B. GOLD';

                }
                field("Minimum Reward Points"; Rec."Minimum Reward Points")
                {
                    ToolTip = 'Punkte, die ein Kunde mindestens braucht';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {


    }
}