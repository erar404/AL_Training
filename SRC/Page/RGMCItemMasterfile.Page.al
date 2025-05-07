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
        // area(inputArea){
        //     field(inputfield)
        // }
        area(Content)
        {
            // group(inputArea) 
            // {
            //     field(code) {

            //     }
            // }
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
            action(KUHA)
            {

                trigger OnAction()
                begin
                    // TestCodeUnit.Run();
                    // dlgdialog.oPeN('Input Item Number: #1######################');
                    // dlgdialog.Update(1, myitemcode);
                    TestCodeUnit.TestProcedureGet(Rec.ItemNo);
                end;
            }
            action(PAYNDPERS)
            {
                trigger OnAction()
                begin
                    TestCodeUnit.TestProcFF();
                end;
            }
            action(IKOT)
            {
                trigger OnAction()
                begin
                    TestCodeUnit.TestProcNext();
                end;
            }
            action(PASOK)
            {

                trigger OnAction()
                begin
                    TestCodeUnit.TestDataMani(1);
                end;
            }
            action(UPDEYT)
            {

                trigger OnAction()
                begin
                    TestCodeUnit.TestDataMani(2);
                end;
            }
            action(TANGGAL)
            {

                trigger OnAction()
                begin
                    TestCodeUnit.TestDataMani(3);
                end;
            }
        }
    }

    var
        myInt: Integer;
        myItemCOde: code[20];
        dlgdialog: Dialog;
        TestCodeUnit: Codeunit RGMCTestCodeUnit_ER;
}