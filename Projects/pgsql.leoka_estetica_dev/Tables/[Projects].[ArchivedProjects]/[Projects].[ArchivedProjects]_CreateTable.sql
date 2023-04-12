CREATE TABLE IF NOT EXISTS "Projects"."ArchivedProjects"
(
    "ArchiveId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "DateArchived" TIMESTAMP NOT NULL DEFAULT NOW(),  
    CONSTRAINT "PK_ArchivedProjects_ArchiveId" PRIMARY KEY ("ArchiveId"),
    CONSTRAINT "FK_UserProjects_ProjectId" FOREIGN KEY("ProjectId") REFERENCES "Projects"."UserProjects"("ProjectId")
);

ALTER TABLE IF EXISTS "Projects"."ArchivedProjects" 
ADD COLUMN IF NOT EXISTS "UserId" BIGINT NOT NULL;