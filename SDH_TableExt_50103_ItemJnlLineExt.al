tableextension 50103 "Item Journal Line Ext" extends "Item Journal Line"
{
    fields
    {
        // Add changes to table fields here
        field(50100; "Source of Sales"; Code[20])
        {
            TableRelation = "Source of Sales".Code where (Blocked = const (false));
        }
    }

    var
        myInt: Integer;
}