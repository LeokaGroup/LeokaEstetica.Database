CREATE TABLE IF NOT EXISTS "Moderation"."ProfileRemarks"
(
    "RemarkId"         BIGSERIAL,
    "ProfileInfoId"    BIGINT,
    "FieldName"        VARCHAR(100)            NOT NULL,
    "RemarkText"       VARCHAR(500)            NOT NULL,
    "RussianName"      VARCHAR(100)            NOT NULL,
    "ModerationUserId" BIGINT,
    "DateCreated"      TIMESTAMP DEFAULT NOW() NOT NULL,
    "RemarkStatusId"   INTEGER,
    CONSTRAINT "PK_ProfileRemarks_RemarkId" PRIMARY KEY ("RemarkId"),
    CONSTRAINT "FK_Users_UserId_ModerationUserId" FOREIGN KEY ("ModerationUserId") REFERENCES dbo."Users" ("UserId"),
    CONSTRAINT "FK_Profile_ProfileInfoId" FOREIGN KEY ("ProfileInfoId") REFERENCES "Profile"."ProfilesInfo" ("ProfileInfoId"),
    CONSTRAINT "FK_Moderation_RemarksStatuses_RemarkStatusId" FOREIGN KEY ("RemarkStatusId") REFERENCES "Moderation"."RemarksStatuses" ("StatusId")
);