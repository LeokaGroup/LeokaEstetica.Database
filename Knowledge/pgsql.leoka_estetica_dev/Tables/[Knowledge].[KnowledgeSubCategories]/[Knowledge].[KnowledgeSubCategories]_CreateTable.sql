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

DO
$$
    BEGIN
        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Knowledge'
                    AND table_name = 'KnowledgeSubCategories') THEN
            ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategories"
                ADD CONSTRAINT "FK_KnowledgeCategories_CategoryId"
                    FOREIGN KEY ("CategoryId")
                        REFERENCES "Knowledge"."KnowledgeCategories" ("CategoryId");
        END IF;
    END;
$$;       

DO
$$
    BEGIN
        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Knowledge'
                    AND table_name = 'KnowledgeSubCategoriesThemes') THEN
            ALTER TABLE IF EXISTS "Knowledge"."KnowledgeSubCategories"
                ADD CONSTRAINT "FK_KnowledgeSubCategoriesThemes_SubCategoryThemeId"
                    FOREIGN KEY ("SubCategoryThemeId")
                        REFERENCES "Knowledge"."KnowledgeSubCategoriesThemes" ("SubCategoryThemeId");
        END IF;
    END;
$$;
