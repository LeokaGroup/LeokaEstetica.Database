CREATE TABLE IF NOT EXISTS "Teams"."ProjectsTeamsVacancies"
(
    "TeamVacancyId" BIGSERIAL,
    "VacancyId" BIGINT NOT NULL,
    "IsActive" BOOLEAN NOT NULL,
    "TeamId" BIGINT NOT NULL,
    CONSTRAINT "PK_ProjectsTeamsVacancies_TeamVacancyId" PRIMARY KEY ("TeamVacancyId"),
    CONSTRAINT "FK_UserVacancies_VacancyId" FOREIGN KEY ("VacancyId") REFERENCES "Vacancies"."UserVacancies" ("VacancyId"),
    CONSTRAINT "FK_ProjectsTeams_TeamId" FOREIGN KEY ("TeamId") REFERENCES "Teams"."ProjectsTeams" ("TeamId")
);