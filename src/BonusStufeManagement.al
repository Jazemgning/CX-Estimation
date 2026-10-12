codeunit 50100 "BonusStufeManagement"
{
    procedure GetBonusLevel(BonusPoints: Integer): Code[20]
    var
        RewardLevel: Record Belohnungstufe;
    begin
        RewardLevel.SetCurrentKey("Minimum Reward Points");
        RewardLevel.SetFilter("Minimum Reward Points", '<=%1', BonusPoints);
        if RewardLevel.FindLast() then
            exit(RewardLevel.Level);
        exit('');
    end;

    procedure ShowBonusLevel(Customer: Record Customer)
    var
        Level: Code[20];
        LevelMsg: Label 'Der Kunde %1 hat %2 Bonuspunkte und ist %3.', Comment = '%1 = Kundenname, %2 = Bonuspunkte, %3 = Bonusstufe';
        NoLevelMsg: Label 'Der Kunde %1 hat %2 Bonuspunkte und noch keine Bonusstufe erreicht..', Comment = '%1 = Kundenname, %2 = Bonuspunkte';
    begin
        Level := GetBonusLevel(Customer."Bonus Points");
        if Level = '' then
            Message(NoLevelMsg, Customer.Name, Customer."Bonus Points")
        else
            Message(LevelMsg, Customer.Name, Customer."Bonus Points", Level);
    end;
}