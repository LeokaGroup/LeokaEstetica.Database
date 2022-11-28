CREATE TABLE IF NOT EXISTS "Configs"."ProjectVacancyColumnsNames"
(
    "ColumnId" BIGINT,
    "ColumnName" VARCHAR(200) NOT NULL,
    "TableName" VARCHAR(200) NOT NULL,
    "Position" INT NOT NULL,
    CONSTRAINT "PK_ProjectVacancyColumnsNames_ColumnId" PRIMARY KEY ("ColumnId")
);