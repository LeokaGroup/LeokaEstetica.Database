CREATE OR REPLACE FUNCTION "Commerce"."OrderTransactionsUpdate"() RETURNS TRIGGER AS
$$
BEGIN
   UPDATE "Commerce"."OrderTransactionsShadow"
    SET "ActionText"    = 'Статус заказа изменен на ',
        "ActionSysName" = 'Change',
        "OrderId"       = NEW."OrderId",
        "StatusName"    = NEW."StatusName"
    WHERE "OrderId" = NEW."OrderId";

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;