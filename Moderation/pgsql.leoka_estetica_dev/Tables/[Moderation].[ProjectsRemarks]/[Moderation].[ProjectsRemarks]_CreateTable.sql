CREATE TABLE IF NOT EXISTS "Moderation"."ProjectsRemarks"
(
    "RemarkId"         BIGSERIAL,
    "ProjectId"        BIGINT,
    "FieldName"        VARCHAR(100) NOT NULL,
    "RemarkText"       VARCHAR(500) NOT NULL,
    "RussianName"      VARCHAR(100) NOT NULL,
    "ModerationUserId" BIGINT,
    "DateCreated"      TIMESTAMP    NOT NULL DEFAULT NOW(),
    "RemarkStatusId"   INT,
    CONSTRAINT "PK_RemarkId" PRIMARY KEY ("RemarkId"),
    CONSTRAINT "FK_Projects_UserProjects_ProjectId" FOREIGN KEY ("ProjectId") REFERENCES "Projects"."UserProjects" ("ProjectId"),
    CONSTRAINT "FK_Users_UserId_ModerationUserId" FOREIGN KEY ("ModerationUserId") REFERENCES dbo."Users" ("UserId"),
    CONSTRAINT "FK_Moderation_RemarksStatuses_RemarkStatusId" FOREIGN KEY ("RemarkStatusId") REFERENCES "Moderation"."RemarksStatuses" ("StatusId")
);