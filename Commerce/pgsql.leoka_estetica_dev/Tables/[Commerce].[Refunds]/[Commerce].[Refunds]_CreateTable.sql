CREATE TABLE IF NOT EXISTS "Commerce"."Refunds"
(
    "RefundId"  BIGSERIAL,
    "PaymentId" VARCHAR(50)    NOT NULL,
    "Price"     DECIMAL(12, 2) NOT NULL,
    CONSTRAINT "PK_Refunds_RefundId" PRIMARY KEY ("RefundId")
);