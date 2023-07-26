CREATE TABLE IF NOT EXISTS "Knowledge"."KnowledgeSubCategories"
(
    "SubCategoryId"          BIGSERIAL,
    "CategoryId"             BIGINT,
    "Position"               INT          NOT NULL DEFAULT 0,
    "SubCategoryTypeName"    VARCHAR(200) NOT NULL,
    "SubCategoryTypeSysName" VARCHAR(200) NOT NULL,
    "SubCategoryThemeId"     BIGINT,
    CONSTRAINT "PK_KnowledgeSubCategories_SubCategoryId" PRIMARY KEY ("SubCategoryId")
);

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategories"
    DROP CONSTRAINT IF EXISTS "FK_KnowledgeCategories_CategoryId";

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategories"
    DROP CONSTRAINT IF EXISTS "FK_KnowledgeSubCategoriesThemes_SubCategoryThemeId";

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategories"
    ADD CONSTRAINT "FK_KnowledgeCategories_CategoryId"
        FOREIGN KEY ("CategoryId")
            REFERENCES "Knowledge"."KnowledgeCategories" ("CategoryId");          

ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategories"
    ADD CONSTRAINT "FK_KnowledgeSubCategoriesThemes_SubCategoryThemeId"
        FOREIGN KEY ("SubCategoryThemeId")
            REFERENCES "Knowledge"."KnowledgeSubCategoriesThemes" ("SubCategoryThemeId");