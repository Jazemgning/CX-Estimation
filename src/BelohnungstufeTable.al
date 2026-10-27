table 50100 "Belohnungstufe"
{
    Caption = 'Stufe';
    TableType = Normal;
    DataClassification = CustomerContent;

    fields
    {
        field(1; Level; code[20])
        {
            Caption = 'Level';
            DataClassification = CustomerContent;
        }

        field(2; "Minimum Reward Points"; Integer)
        {
            Caption = 'Minimum Reward Points';
            DataClassification = CustomerContent;
            MinValue = 0;
            NotBlank = true;
            trigger OnValidate();
            var
                RewardLevel: Record "Belohnungstufe";
            begin
                RewardLevel.SetRange("Minimum Reward Points", "Minimum Reward Points");
                RewardLevel.SetFilter(Level, '<>%1', Level);
                if not RewardLevel.IsEmpty() then begin
                    Error('Minimum Reward Points must be unique');
                end;
            end;

        }
    }

    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }
        key("Minimum Reward Points"; "Minimum Reward Points") { }
    }

    trigger OnInsert();
    begin

        Validate("Minimum Reward Points");
    end;

    trigger OnModify();
    begin
        Validate("Minimum Reward Points");
    end;
}