CREATE TABLE IF NOT EXISTS "Moderation"."Resumes"
(
    "ModerationId" BIGSERIAL,
    "ProfileInfoId" BIGINT NOT NULL,
    "DateModeration" TIMESTAMP NOT NULL DEFAULT NOW(),
    "ModerationStatusId" INT NOT NULL,
    CONSTRAINT "PK_Resumes_ModerationId" PRIMARY KEY ("ModerationId"),
    CONSTRAINT "FK_ModerationStatuses_StatusId" FOREIGN KEY ("ModerationStatusId")
        REFERENCES "Moderation"."ModerationStatuses"("StatusId"),
    CONSTRAINT "FK_ProfilesInfo_ProfileInfoId" FOREIGN KEY ("ProfileInfoId")
        REFERENCES "Profile"."ProfilesInfo"("ProfileInfoId")
);