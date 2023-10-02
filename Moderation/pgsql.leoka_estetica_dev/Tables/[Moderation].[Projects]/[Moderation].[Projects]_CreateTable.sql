CREATE TABLE IF NOT EXISTS "Moderation"."Projects"
(
    "ModerationId" BIGSERIAL,
    "ProjectId" BIGINT,
    "DateModeration" TIMESTAMP WITHOUT TIME ZONE not NULL DEFAULT NOW(),
    "ModerationStatusId" INT NOT NULL DEFAULT 2,
    CONSTRAINT "PK_Projects_ModerationId" PRIMARY KEY("ModerationId")
);

DO
$$
    BEGIN
        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Projects'
                    AND table_name = 'UserProjects') THEN
            ALTER TABLE "Moderation"."Projects"
                ADD CONSTRAINT "FK_Projects_ProjectId"
                    FOREIGN KEY ("ProjectId") REFERENCES "Projects"."UserProjects" ("ProjectId");
        END IF;

        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Moderation'
                    AND table_name = 'ModerationStatuses') THEN
            ALTER TABLE "Moderation"."Projects"
                ADD CONSTRAINT "FK_ModerationStatuses_StatusId"
                    FOREIGN KEY ("ModerationStatusId") REFERENCES "Moderation"."ModerationStatuses" ("StatusId");
        END IF;
    END;
$$;