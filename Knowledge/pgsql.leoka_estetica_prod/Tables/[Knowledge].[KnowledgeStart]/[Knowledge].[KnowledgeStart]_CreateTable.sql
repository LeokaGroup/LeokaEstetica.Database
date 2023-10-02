CREATE TABLE IF NOT EXISTS "Knowledge"."KnowledgeStart"
(
    "StartId"             BIGSERIAL,
    "CategoryTitle"       VARCHAR(200) NOT NULL,
    "CategoryTypeName"    VARCHAR(200) NOT NULL,
    "CategoryTypeSysName" VARCHAR(200) NOT NULL,
    "SubCategoryTitle"    VARCHAR(200) NOT NULL,
    "Position"            INT          NOT NULL DEFAULT 0,
    "TopCategories"       JSONB        NOT NULL DEFAULT '[]',
    CONSTRAINT "PK_KnowledgeStart_StartId" PRIMARY KEY ("StartId")
);