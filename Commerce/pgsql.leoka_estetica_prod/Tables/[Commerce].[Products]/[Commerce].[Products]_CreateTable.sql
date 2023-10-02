CREATE TABLE IF NOT EXISTS "Commerce"."Products"
(
    "ProductId" BIGSERIAL,
    "ProductName" VARCHAR(150) NOT NULL,
    "IsDiscount" BOOLEAN NOT NULL DEFAULT FALSE,
    "PercentDiscount" INT NOT NULL,
    "RuleId" INT NOT NULL,
    "ProductType" VARCHAR(100) NOT NULL,
    "ProductPrice" DECIMAL(12,2) NULL,
    CONSTRAINT "PK_Products_ProductId" PRIMARY KEY ("ProductId")
);