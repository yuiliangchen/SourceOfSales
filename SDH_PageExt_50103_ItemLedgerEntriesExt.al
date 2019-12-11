pageextension 50103 "Item Ledger Entries Ext" extends "Item Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
        addafter("Entry Type")
        {
            field("Source of Sales"; "Source of Sales")
            {
                ApplicationArea = All;
                Importance = Promoted;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}