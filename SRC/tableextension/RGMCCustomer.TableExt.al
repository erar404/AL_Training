tableextension 50106 RGMCCUstomerExt_ER extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50109; CustomerHobbies; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Hobbies';
        }
        field(50110; CustomerAnswer; Integer)
        {
            Caption = 'Gender';
            ToolTip = '1: Yes 2: No';
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}