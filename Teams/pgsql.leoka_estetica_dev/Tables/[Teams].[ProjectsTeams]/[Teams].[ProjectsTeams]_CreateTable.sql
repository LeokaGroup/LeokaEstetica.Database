CREATE TABLE IF NOT EXISTS "Teams"."ProjectsTeams"
(
    "TeamId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL UNIQUE,
    "Created" TIMESTAMP NOT NULL,
    CONSTRAINT "PK_ProjectsTeams_TeamId" PRIMARY KEY ("TeamId"),
    CONSTRAINT "FK_UserProjects_ProjectId" FOREIGN KEY ("ProjectId") REFERENCES "Projects"."UserProjects" ("ProjectId")
);