CREATE OR REPLACE FUNCTION "Commerce"."OrderTransactionsInsert"() RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO "Commerce"."OrderTransactionsShadow" ("DateCreated", "ActionText", "ActionSysName", "UserId", "OrderId",
                                                      "StatusName")
    VALUES (NOW(), 'Создан новый заказ.', 'Add', NEW."UserId", NEW."OrderId", NEW."StatusName");

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;