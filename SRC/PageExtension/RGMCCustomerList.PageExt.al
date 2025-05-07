pageextension 50108 RGMCCUstomerList_ER extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter("Payments (LCY)")
        {
            field(CustomerHobbies; Rec.CustomerHobbies)
            {
                ApplicationArea = all;
                Caption = 'Customer Hobbies';
            }
            field(CustomerAnswer; Rec.CustomerAnswer)
            {
                ApplicationArea = all;
                Caption = 'Customer answer';
            }
        }
        modify("Balance Due (LCY)")
        {
            Caption = 'Balance Dues of the Customer (LCY)';
        }
        // add to specific list
    }

    actions
    {
        // Add changes to page actions here
        addafter(NewSalesOrder)
        {
            Action(MenuExtension)
            {
                ApplicationArea = all;
                trigger OnAction()
                begin
                    Message('Test New Extension')
                end;
            }

        }
    }

    var
        myInt: Integer;
}