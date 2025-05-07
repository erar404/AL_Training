page 50109 RGMCCardPage_ER
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ItemMasterfile;

    layout
    {
        area(Content)
        {
            group(GenInfo)
            {
                Caption = 'General Info Ni Erwin';
                field(Name; Rec.ItemNo)
                {

                }
                field(ItemDesc; Rec.ItemDesc) { }
                field(ItemBlock; Rec.ItemBlock) { }
                field(UnitOfMeasure; Rec.UnitOfMeasure) { }
                field(UnitPrice; Rec.UnitPrice) { }
                field(LastModifiedDate; Rec.LastModifiedDate) { }
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
                    Message('Menu 1 Ni Erwin');
                    //autosplitkey - for integers
                end;
            }
        }
    }

    var
        myInt: Integer;
}