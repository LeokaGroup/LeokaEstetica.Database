CREATE TABLE IF NOT EXISTS "Moderation"."Vacancies"
(
    "ModerationId" BIGINT,
    "VacancyId" BIGINT,
    "DateModeration" TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    CONSTRAINT "PK_Vacancies_ModerationId" PRIMARY KEY("ModerationId"),
    CONSTRAINT "FK_Vacancies_VacancyId" FOREIGN KEY("VacancyId") REFERENCES "Vacancies"."UserVacancies"("VacancyId")
);