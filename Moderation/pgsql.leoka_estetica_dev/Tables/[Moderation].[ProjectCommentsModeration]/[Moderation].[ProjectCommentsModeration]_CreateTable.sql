CREATE TABLE IF NOT EXISTS "Moderation"."ProjectCommentsModeration"
(
    "ModerationId" BIGSERIAL,
    "DateModeration" TIMESTAMP NOT NULL DEFAULT NOW(),
    "CommentId" BIGINT NOT NULL,
    "StatusId" INT NOT NULL,
    CONSTRAINT "PK_ProjectCommentsModeration_ModerationId" PRIMARY KEY ("ModerationId")
);

DO
$$
    BEGIN
        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Communications'
                    AND table_name = 'ProjectComments') THEN
            ALTER TABLE "Moderation"."ProjectCommentsModeration"
                ADD CONSTRAINT "FK_ProjectComments_CommentId"
                    FOREIGN KEY ("CommentId") REFERENCES "Communications"."ProjectComments" ("CommentId");
        END IF;

        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Moderation'
                    AND table_name = 'ModerationStatuses') THEN
            ALTER TABLE "Moderation"."Vacancies"
                ADD CONSTRAINT "FK_ProjectComments_StatusId"
                    FOREIGN KEY ("ModerationStatusId") REFERENCES "Moderation"."ModerationStatuses" ("StatusId");
        END IF;
    END;
$$;