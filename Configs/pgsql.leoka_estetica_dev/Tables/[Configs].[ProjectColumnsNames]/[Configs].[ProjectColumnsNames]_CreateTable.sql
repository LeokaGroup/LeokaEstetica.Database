CREATE TABLE IF NOT EXISTS "Configs"."ProjectColumnsNames"
(
    "ColumnId" BIGSERIAL,
    "ColumnName" VARCHAR(200) NOT NULL,
    "TableName" VARCHAR(200) NOT NULL,
    "Position" INT NOT NULL,
    CONSTRAINT "PK_ColumnsNames_ColumnId" PRIMARY KEY("ColumnId")
);