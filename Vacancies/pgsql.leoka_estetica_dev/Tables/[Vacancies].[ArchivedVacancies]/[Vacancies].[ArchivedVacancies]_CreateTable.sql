CREATE TABLE IF NOT EXISTS "Vacancies"."ArchivedVacancies"
(
    "ArchiveId" BIGSERIAL,
    "VacancyId" BIGINT NOT NULL,
    "DateArchived" TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT "PK_ArchivedVacancies_ArchiveId" PRIMARY KEY("ArchiveId"),
    CONSTRAINT "FK_UserVacancies_VacancyId" FOREIGN KEY("VacancyId") REFERENCES "Vacancies"."UserVacancies"("VacancyId")
);