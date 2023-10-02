CREATE TABLE IF NOT EXISTS "Vacancies"."CatalogVacancies"
(
    "CatalogVacancyId" BIGSERIAL,
    "VacancyId" BIGINT NOT NULL,
    CONSTRAINT "PK_CatalogVacancies_CatalogVacancyId" PRIMARY KEY("CatalogVacancyId"),
    CONSTRAINT "FK_CatalogVacancies_VacancyId" FOREIGN KEY("VacancyId") REFERENCES "Vacancies"."UserVacancies"("VacancyId")
);