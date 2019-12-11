codeunit 50100 "Extension Blogs Subscriber"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterCheckSalesDoc', '', true, true)]
    local procedure CheckSalesOrderSourceofSales(var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; WhseReceive: Boolean; WhseShip: Boolean)
    begin
        with SalesHeader do begin
            if "Document Type" <> "Document Type"::Order then
                exit;
            TestField("Source of Sales");
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesHeader', '', true, true)]
    local procedure TransferSourceofSalesToJournalLine(SalesHeader: Record "Sales Header"; var ItemJnlLine: Record "Item Journal Line")
    begin
        ItemJnlLine."Source Code" := SalesHeader."Source of Sales";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    local procedure TransferSourceofSalesToLedger(ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer; var NewItemLedgEntry: Record "Item Ledger Entry")
    begin
        NewItemLedgEntry."Source of Sales" := ItemJournalLine."Source of Sales";
    end;

    var
        myInt: Integer;
}