CREATE TABLE IF NOT EXISTS "Moderation"."Projects"
(
    "ModerationId" BIGSERIAL,
    "ProjectId" BIGINT,
    "DateModeration" TIMESTAMP WITHOUT TIME ZONE not NULL DEFAULT NOW(),
    CONSTRAINT "PK_Projects_ModerationId" PRIMARY KEY("ModerationId"),
    CONSTRAINT "FK_Projects_ProjectId" FOREIGN KEY("ProjectId") REFERENCES "Projects"."UserProjects"("ProjectId")
);

ALTER TABLE IF EXISTS "Moderation"."Projects"
ADD COLUMN IF NOT EXISTS "ModerationStatusId" INT NOT NULL DEFAULT 2,
    ADD CONSTRAINT "FK_ModerationStatuses_StatusId" FOREIGN KEY ("ModerationStatusId") REFERENCES "Moderation"."ModerationStatuses";