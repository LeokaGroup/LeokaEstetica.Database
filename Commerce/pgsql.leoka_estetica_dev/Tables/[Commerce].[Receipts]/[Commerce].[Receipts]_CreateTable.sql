CREATE TABLE IF NOT EXISTS "Commerce"."Receipts"
(
    "ReceiptId" BIGSERIAL,
    "OrderId" BIGINT NOT NULL,
    "DateCreated" TIMESTAMP NOT NULL DEFAULT NOW(),
    "DateSend" TIMESTAMP NULL,
    CONSTRAINT "PK_Receipts_ReceiptId" PRIMARY KEY ("ReceiptId")
);