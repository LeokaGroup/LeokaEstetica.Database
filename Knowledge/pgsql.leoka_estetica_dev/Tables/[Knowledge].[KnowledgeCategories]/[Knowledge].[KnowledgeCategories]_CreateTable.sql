CREATE TABLE IF NOT EXISTS "Knowledge"."KnowledgeCategories"
(
    "CategoryId"          BIGSERIAL,
    "CategoryTitle"       VARCHAR(200) NOT NULL,
    "SubCategoryId"       BIGINT       NOT NULL,
    "SubCategoryTypeName" VARCHAR(200) NOT NULL,
    "CategoryTypeSysName" VARCHAR(200) NOT NULL,
    "IsTop"               BOOLEAN      NOT NULL DEFAULT FALSE,
    "Position"            INT          NOT NULL DEFAULT 0,
    "StartId"             BIGINT,
    CONSTRAINT "PK_KnowledgeCategories_CategoryId"
        PRIMARY KEY ("CategoryId")
);

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeCategories"
    DROP CONSTRAINT IF EXISTS "FK_KnowledgeStart_StartId";

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeCategories"
    ADD CONSTRAINT "FK_KnowledgeStart_StartId"
        FOREIGN KEY ("StartId")
            REFERENCES "Knowledge"."KnowledgeStart" ("StartId");