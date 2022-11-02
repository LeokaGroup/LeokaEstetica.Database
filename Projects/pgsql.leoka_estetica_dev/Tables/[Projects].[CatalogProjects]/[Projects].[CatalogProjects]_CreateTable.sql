CREATE TABLE IF NOT EXISTS "Projects"."CatalogProjects"
(
    "ProjectId" BIGSERIAL,
    "ProjectName" VARCHAR(200) NOT NULL,
    "UserId" BIGINT NOT NULL,
    "ProjectDetails" TEXT NOT NULL,
    "ProjectIcon" TEXT NULL,
    CONSTRAINT "PK_CatalogProjects_ProjectId" PRIMARY KEY ("ProjectId")
);