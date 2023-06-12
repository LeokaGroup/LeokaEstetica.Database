ALTER TABLE "Commerce"."Receipts"
    ADD COLUMN "ReceiptOrderId" VARCHAR(50) NOT NULL,
    ADD COLUMN "PaymentId"      VARCHAR(50) NOT NULL,
    ADD COLUMN "Status"         VARCHAR(50) NOT NULL,
    ADD COLUMN "Type"           VARCHAR(50) NOT NULL,
    ADD COLUMN "UserId"         BIGINT      NOT NULL;