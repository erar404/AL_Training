codeunit 50119 RGMCTestCodeUnit_ER
{
    // access = Internal; - default value - external
    Subtype = Install; // default value - on call, upgrade - upon upgrade


    trigger OnRun()
    begin
        TestProcedureGet('A0001NIERWIN');
    end;

    procedure TestProcedureGet(pItemNo: code[20])
    var
        myInt: Integer;
    begin
        clear(recItemMaster);
        IF NOT recItemMaster.GET(pItemNo) THEN begin
            eRroR('Walang ganun e. sori!')
        end
        ELSE Begin
            MESSAGE('%1 - %2 Yesss', recItemMaster.ItemDesc, recItemMaster.UnitPrice);
        End;

    end;

    procedure TestProcFF()
    var
        myInt: Integer;
    begin
        recItemMaster.Reset;
        recItemMaster.SetCurrentKey(UnitPrice);
        if not recItemMaster.FINDfiRsT() then
            MESSAGE('BOLAGA!');

        MESSAGE('%1 - %2 PERSSS', recItemMaster.ItemNo, recItemMaster.UnitPrice);
    end;

    procedure TestProcNext()
    var
        myInt: Integer;
    begin
        recItemMaster.Reset;
        If recItemMaster.FINDLAST() then begin
            repeat
                myInt += 1;
                MESSAGE('%1 - %2 IKOT numero %3', recItemMaster.ItemNo, recItemMaster.UnitPrice, myInt);
            until recItemMaster.Next(-1) = 0;


        end;
    end;

    procedure TestDataMani(pfunction: Integer)
    var
        myInt: Integer;
    begin
        case pfunction of
            1: //Insert
                begin
                    recItemMaster.Init();
                    recItemMaster.Validate(ItemNo, 'F0001');
                    recItemMaster.ItemNo := 'D0001';
                    recItemMaster.ItemDesc := recItemMaster.ItemDesc;
                    recItemMaster.UnitPrice := 5002;
                    recItemMaster.Insert(True)

                end;
            2: // Update
                begin
                    Clear(recItemMaster);
                    if recItemMaster.get('A0001NIERWIN') then begin
                        recItemMaster.ItemDesc := 'UPDATED' + recItemMaster.ItemNo;
                        recItemMaster.UnitOfMeasure := 'CASE';
                        recItemMaster.UnitPrice := 12000;
                        recItemMaster.Modify();
                        // modifyall()
                    end;
                end;

            3: // Delete
                begin
                    Clear(recItemMaster);
                    if recItemMaster.get('A0001NIERWIN') then
                        recItemMaster.Delete();
                end;
        end;
    end;

    var
        myInt: Integer;
        recItemMaster: Record ItemMasterfile;

}

/*
Data Access 

GET - per primary key: one entry only


| - or 
$ - and
<> - not equal
>= - greaterthan equal
<= - less than or equal
@** - like ish
FromVal1..Val2


Transfer Fields
*/
