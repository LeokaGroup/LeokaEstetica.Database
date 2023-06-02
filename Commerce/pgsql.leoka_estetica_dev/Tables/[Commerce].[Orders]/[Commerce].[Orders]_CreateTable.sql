CREATE TABLE IF NOT EXISTS "Commerce"."Orders"
(
    "OrderId" BIGSERIAL,
    "OrderName" VARCHAR(200) NOT NULL,
    "OrderDetails" VARCHAR(300) NOT NULL,
    "DateCreated" TIMESTAMP NOT NULL DEFAULT NOW(),
    "UserId" BIGINT NOT NULL,
    "StatusName" VARCHAR(50) NOT NULL DEFAULT 'Новый',
    "StatusSysName" VARCHAR(50) NOT NULL DEFAULT 'New',
    "Price" DECIMAL(12,2) NOT NULL DEFAULT 0,
    "Currency" VARCHAR(5) NOT NULL DEFAULT 'RUB',
    "PaymentMonth" SMALLINT NOT NULL DEFAULT 1,
    "PaymentId" VARCHAR(50) NOT NULL,
    CONSTRAINT "PK_Orders_OrderId" PRIMARY KEY ("OrderId")
);

-- CREATE OR REPLACE TRIGGER "OrderTransactionsShadowInsertTrigger"
--     AFTER INSERT
--     ON "Commerce"."Orders"
--     FOR EACH ROW
-- EXECUTE PROCEDURE "Commerce"."OrderTransactionsInsert"();

-- CREATE OR REPLACE TRIGGER "OrderTransactionsUpdateTrigger"
--     AFTER UPDATE
--     ON "Commerce"."Orders"
--     FOR EACH ROW
-- EXECUTE PROCEDURE "Commerce"."OrderTransactionsUpdate"();