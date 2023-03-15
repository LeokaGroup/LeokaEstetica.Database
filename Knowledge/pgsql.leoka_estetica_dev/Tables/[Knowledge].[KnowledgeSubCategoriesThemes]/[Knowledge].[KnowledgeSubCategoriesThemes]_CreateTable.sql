CREATE TABLE IF NOT EXISTS "Knowledge"."KnowledgeSubCategoriesThemes"
(
    "SubCategoryThemeId"       BIGSERIAL,
    "SubCategoryThemeTitle"    VARCHAR(200) NOT NULL,
    "SubCategoryThemeSubTitle" VARCHAR(300) NOT NULL,
    "SubCategoryThemeText"     TEXT         NOT NULL,
    "SubCategoryThemeImg"      TEXT         NULL,
    "Position"                 INT          NOT NULL DEFAULT 0,
    "SubCategoryId"            BIGINT,
    CONSTRAINT "PK_KnowledgeSubCategories_SubCategoryThemeId" PRIMARY KEY ("SubCategoryThemeId")
);

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategoriesThemes"
    DROP CONSTRAINT IF EXISTS "FK_KnowledgeSubCategories_SubCategoryId";

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategoriesThemes"
    ADD CONSTRAINT "FK_KnowledgeSubCategories_SubCategoryId"
        FOREIGN KEY ("SubCategoryId")
            REFERENCES "Knowledge"."KnowledgeSubCategories" ("SubCategoryId");