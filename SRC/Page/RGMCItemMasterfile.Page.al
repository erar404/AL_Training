page 50101 RGMC_ItemMasterfile
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ItemMasterfile;
    Caption = 'RGMC Item Masterfile Ni Erwin List';
    ModifyAllowed = false;
    DeleteAllowed = false;
    Editable = fAlsE;
    CardPageId = RGMCCardPage_ER;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ItemNo; rec.ItemNo)
                {

                }
                field(Description; rec.ItemDesc)
                {

                }
                field(UnitPrice; Rec.UnitPrice)
                {

                }
                field(UnitofMeasure; rec.UnitOfMeasure)
                {

                }
                field(LastModifiedDate; Rec.LastModifiedDate)
                { }
            }


        }

        area(FactBoxes)
        {
            Part(ItemInfo; RGMCIMasterCardPart_ER)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}