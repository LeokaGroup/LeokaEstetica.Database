CREATE TABLE IF NOT EXISTS "Configs"."ValidationColumnsExclude"
(
    "ValidationId" SERIAL,
    "ParamName" VARCHAR(150) NOT NULL,
    CONSTRAINT "PK_ValidationColumnsExclude_ValidationId" PRIMARY KEY("ValidationId")
);