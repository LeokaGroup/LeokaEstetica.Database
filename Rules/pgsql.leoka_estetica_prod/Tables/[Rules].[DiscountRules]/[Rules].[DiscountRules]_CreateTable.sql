CREATE TABLE IF NOT EXISTS "Rules"."DiscountRules"
(
    "RuleId"      SERIAL,
    "Percent"     DECIMAL(7, 4)  NOT NULL DEFAULT 0,
    "Price"       DECIMAL(12, 2) NULL,
    "Type"        VARCHAR(150)   NOT NULL,
    "RussianName" VARCHAR(150)   NOT NULL,
    "Month"       SMALLINT,
    CONSTRAINT "PK_DiscountRules_RuleId" PRIMARY KEY ("RuleId"),
    CONSTRAINT "DiscountRules_Check_Month" CHECK ("Month" > 0 AND "Month" <= 12)
);