CREATE TABLE IF NOT EXISTS "Vacancies"."Vacancies"
(
    "VacancyId" BIGSERIAL,
    "VacancyName" VARCHAR(250) NOT NULL,
    "VacancyText" TEXT NOT NULL,
    "WorkExperience" VARCHAR(100) NULL,
    "Employment" VARCHAR(200) NULL,
    "DateCreated" TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    "Payment" VARCHAR(150) NULL,
    "UserId" BIGINT NOT NULL,
    CONSTRAINT "PK_Vacancies_VacancyId" PRIMARY KEY("VacancyId")
);