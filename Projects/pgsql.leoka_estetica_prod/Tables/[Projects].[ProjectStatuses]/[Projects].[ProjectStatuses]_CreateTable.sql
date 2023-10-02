CREATE TABLE IF NOT EXISTS "Projects"."ProjectStatuses"
(
    "StatusId" SERIAL,
    "ProjectId" BIGINT NOT NULL,
    "ProjectStatusSysName" VARCHAR(100) NOT NULL,
    "ProjectStatusName" VARCHAR(100) NOT NULL,
    CONSTRAINT "PK_ProjectStatuses_StatusId" PRIMARY KEY("StatusId"),
    CONSTRAINT "FK_UserProjects_ProjectId" FOREIGN KEY("ProjectId") REFERENCES "Projects"."UserProjects"("ProjectId")
);