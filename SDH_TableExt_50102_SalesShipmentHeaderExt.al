tableextension 50102 "Sales Shipment Header Ext" extends "Sales Shipment Header"
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