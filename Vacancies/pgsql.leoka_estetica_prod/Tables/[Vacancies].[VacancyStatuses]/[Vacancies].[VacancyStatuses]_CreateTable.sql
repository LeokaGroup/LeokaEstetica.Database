CREATE TABLE IF NOT EXISTS "Vacancies"."VacancyStatuses"
(
    "StatusId" SERIAL,
    "VacancyStatusSysName" VARCHAR(100) NOT NULL,
    "VacancyStatusName" VARCHAR(100) NOT NULL,
    "VacancyId" INT,
    CONSTRAINT "PK_VacancyStatuses_StatusId" PRIMARY KEY("StatusId"),
    CONSTRAINT "FK_UserVacancies_VacancyId" FOREIGN KEY("VacancyId") REFERENCES "Vacancies"."UserVacancies"("VacancyId")
);