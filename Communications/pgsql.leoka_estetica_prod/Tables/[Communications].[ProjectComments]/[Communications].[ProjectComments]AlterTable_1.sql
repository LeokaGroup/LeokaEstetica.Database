ALTER TABLE IF EXISTS "Moderation"."ProjectCommentsModeration"
    ADD COLUMN IF NOT EXISTS "ModerationStatusId" INT NOT NULL,
    ADD CONSTRAINT "FK_ModerationStatuses_StatusId"
        FOREIGN KEY ("ModerationStatusId")
            REFERENCES "Moderation"."ModerationStatuses" ("StatusId");