CREATE TABLE IF NOT EXISTS "Projects"."CatalogProjects"
(
    "ProjectId" BIGSERIAL,
    "ProjectName" VARCHAR(200) NOT NULL,
    "UserId" BIGINT NOT NULL,
    "ProjectDetails" TEXT NOT NULL,
    "ProjectIcon" TEXT NULL,
    "ProjectCode" UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
    CONSTRAINT "PK_CatalogProjects_ProjectId" PRIMARY KEY ("ProjectId")
);