CREATE TABLE IF NOT EXISTS "Projects"."CatalogProjects"
(
    "CatalogProjectId" BIGSERIAL,
     "ProjectId" BIGINT,
    CONSTRAINT "PK_CatalogProjects_CatalogProjectId" PRIMARY KEY ("CatalogProjectId"),
    CONSTRAINT "FK_UserProjects_ProjectId"
        FOREIGN KEY ("ProjectId")
            REFERENCES "Projects"."UserProjects"("ProjectId")
            ON DELETE CASCADE
);