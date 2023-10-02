ALTER TABLE "Communications"."MainInfoDialogs"
    ADD COLUMN IF NOT EXISTS "ProjectId" BIGINT NULL;

ALTER TABLE IF EXISTS "Projects"."CatalogProjects"
    DROP CONSTRAINT IF EXISTS "Uniq_CatalogProjects_ProjectId";

ALTER TABLE IF EXISTS "Projects"."CatalogProjects"
    ADD CONSTRAINT "Uniq_CatalogProjects_ProjectId" UNIQUE ("ProjectId");

ALTER TABLE "Communications"."MainInfoDialogs"
    ADD CONSTRAINT "FK_CatalogProjects_ProjectId" FOREIGN KEY ("ProjectId") REFERENCES "Projects"."CatalogProjects" ("ProjectId");