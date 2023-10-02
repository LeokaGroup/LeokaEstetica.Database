ALTER TABLE "Communications"."MainInfoDialogs"
    ADD COLUMN IF NOT EXISTS "VacancyId" BIGINT NULL;

ALTER TABLE IF EXISTS "Vacancies"."CatalogVacancies"
    DROP CONSTRAINT IF EXISTS "Uniq_CatalogVacancies_VacancyId";

ALTER TABLE IF EXISTS "Vacancies"."CatalogVacancies"
    ADD CONSTRAINT "Uniq_CatalogVacancies_VacancyId" UNIQUE ("VacancyId");

ALTER TABLE "Communications"."MainInfoDialogs"
    ADD CONSTRAINT "FK_CatalogVacancies_VacancyId" FOREIGN KEY ("VacancyId") REFERENCES "Vacancies"."CatalogVacancies" ("VacancyId");