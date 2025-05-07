page 50105 RGMCItemInformation
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RGMC_MasterfileInfo;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(ItemNo; Rec.ItemNo)
                {

                }
                field(ItemInformation; Rec.ItemInformation)
                {

                }
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