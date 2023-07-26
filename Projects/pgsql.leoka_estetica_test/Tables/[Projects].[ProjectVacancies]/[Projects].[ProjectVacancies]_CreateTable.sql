CREATE TABLE IF NOT EXISTS "Projects"."ProjectVacancies"
(
    "ProjectVacancyId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "VacancyId" BIGINT,
    CONSTRAINT "PK_ProjectVacancies_ProjectVacancyId" PRIMARY KEY ("ProjectVacancyId"),
    CONSTRAINT "FK_UserVacancies_VacancyId" FOREIGN KEY ("VacancyId") REFERENCES "Vacancies"."UserVacancies" ("VacancyId")
);