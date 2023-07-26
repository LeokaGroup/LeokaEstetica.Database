CREATE TABLE IF NOT EXISTS "Projects"."UserProjectsStages"
(
    "UserProjectStageId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "StageId" INT NOT NULL,
    CONSTRAINT "PK_UserProjectsStages_UserProjectStageId" PRIMARY KEY ("UserProjectStageId"),
    CONSTRAINT "FK_UserProjects_ProjectId" FOREIGN KEY("ProjectId" ) REFERENCES "Projects"."UserProjects"
);