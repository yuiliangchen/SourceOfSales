tableextension 50100 "Sales Header Ext" extends "Sales Header"
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