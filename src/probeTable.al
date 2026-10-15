table 50106 "BelohnungstufeProbe"
{
    DataClassification = ToBeClassified;
    caption = 'BelohnungstufeProbe';

    fields
    {
        field(1; STufe; Code[20])
        {
            DataClassification = ToBeClassified;
            caption = 'Stufe';
        }
        field(2; "Minimum Reward Points"; Integer)
        {
            DataClassification = ToBeClassified;
            caption = 'Minimum Reward Points';
            minvalue = 0;
            NotBlank = true;
        }
    }

    keys
    {
        key(Pk; STufe)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}