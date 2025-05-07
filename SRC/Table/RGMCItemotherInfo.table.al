table 50103 RGMC_MasterfileInfo
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ItemNo; COde[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = ItemMasterfile;
        }
        field(2; ItemInformation; tExT[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Description';
        }
    }

    keys
    {
        key(PK; ItemNo)
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