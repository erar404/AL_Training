table 50101 ItemMasterfile
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ItemNo; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Item Code';

            trigger OnValidate()
            begin
                rec.ItemNo := rec.ItemNo + 'NIERWIN';
                rec.ItemDesc := rec.ItemNo + 'ITEM';
                rec.UnitPrice := 100;
            end;
        }

        field(2; ItemDesc; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Item Desc';
        }

        field(3; UnitPrice; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Unit Price';
        }

        field(4; ItemBlock; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Blocked';
        }

        field(5; UnitOfMeasure; code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
        }

        field(6; PurchasingCode; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Purchasing Code';
        }

        field(7; LastModifiedDate; Date)
        {
            DataClassification = CustomerContent;
        }
        field(8; ModifiedBy; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Modified By';
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
        if UnitOfMeasure = '' then
            UnitOfMeasure := 'PACK';
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        if UnitPrice <> 0 then
            error('s');
    end;

    trigger OnRename()
    begin

    end;

}