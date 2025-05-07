page 50104 RGMCIMasterCardPart_ER
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RGMC_MasterfileInfo

    layout
    {
        area(Content)
        {
            group(Geeral)
            {
                field(ItemInformation; rec.ItemInformation)
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