CREATE TABLE IF NOT EXISTS "Teams"."ProjectsTeamsMembers"
(
    "MemberId" BIGSERIAL,
    "VacancyId" BIGINT NOT NULL,
    "Joined" TIMESTAMP NOT NULL,
    "UserId" BIGINT NOT NULL,
    "TeamId" BIGINT NOT NULL,
    CONSTRAINT "PK_ProjectsTeamsMembers_MemberId" PRIMARY KEY ("MemberId"),
    CONSTRAINT "FK_UserVacancies_VacancyId" FOREIGN KEY ("VacancyId") REFERENCES "Vacancies"."UserVacancies" ("VacancyId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId"),
    CONSTRAINT "FK_ProjectsTeams_TeamId" FOREIGN KEY ("TeamId") REFERENCES "Teams"."ProjectsTeams" ("TeamId")
);