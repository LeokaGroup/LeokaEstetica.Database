CREATE TABLE IF NOT EXISTS "Moderation"."Vacancies"
(
    "ModerationId" BIGINT,
    "VacancyId" BIGINT,
    "DateModeration" TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    "ModerationStatusId" INT NOT NULL DEFAULT 2,
    CONSTRAINT "PK_Vacancies_ModerationId" PRIMARY KEY("ModerationId")
);

DO
$$
    BEGIN
        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Vacancies'
                    AND table_name = 'UserVacancies') THEN
            ALTER TABLE "Moderation"."Vacancies"
                ADD CONSTRAINT "FK_Vacancies_VacancyId"
                    FOREIGN KEY ("VacancyId") REFERENCES "Vacancies"."UserVacancies" ("VacancyId");
        END IF;

        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Moderation'
                    AND table_name = 'ModerationStatuses') THEN
            ALTER TABLE "Moderation"."Vacancies"
                ADD CONSTRAINT "FK_ModerationStatuses_StatusId"
                    FOREIGN KEY ("ModerationStatusId") REFERENCES "Moderation"."ModerationStatuses" ("StatusId");
        END IF;
    END;
$$;