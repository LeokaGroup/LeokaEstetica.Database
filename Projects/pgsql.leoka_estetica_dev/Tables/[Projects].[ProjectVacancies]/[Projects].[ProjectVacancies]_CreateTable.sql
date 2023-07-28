CREATE TABLE IF NOT EXISTS "Projects"."ProjectVacancies"
(
    "ProjectVacancyId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "VacancyId" BIGINT,
    CONSTRAINT "PK_ProjectVacancies_ProjectVacancyId" PRIMARY KEY ("ProjectVacancyId")
);

DO
$$
    BEGIN
        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Vacancies'
                    AND table_name = 'UserVacancies') THEN
            ALTER TABLE "Vacancies"."UserVacancies"
                ADD CONSTRAINT "FK_UserVacancies_VacancyId"
                    FOREIGN KEY ("VacancyId") REFERENCES "Vacancies"."UserVacancies" ("VacancyId");
        END IF;
    END;
$$;