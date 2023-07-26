CREATE TABLE IF NOT EXISTS "Moderation"."VacanciesRemarks"
(
    "RemarkId"         BIGSERIAL,
    "VacancyId"        BIGINT,
    "FieldName"        VARCHAR(100)            NOT NULL,
    "RemarkText"       VARCHAR(500)            NOT NULL,
    "RussianName"      VARCHAR(100)            NOT NULL,
    "DateCreated"      TIMESTAMP DEFAULT NOW() NOT NULL,
    "RemarkStatusId"   INTEGER,
    "ModerationUserId" BIGINT,
    CONSTRAINT "PK_VacanciesRemarks_RemarkId" PRIMARY KEY ("RemarkId"),
    CONSTRAINT "FK_Vacancies_UserVacancies_VacancyId" FOREIGN KEY ("VacancyId") REFERENCES "Vacancies"."UserVacancies" ("VacancyId"),
    CONSTRAINT "FK_Moderation_RemarksStatuses_RemarkStatusId" FOREIGN KEY ("RemarkStatusId") REFERENCES "Moderation"."RemarksStatuses" ("StatusId"),
    CONSTRAINT "FK_Users_UserId_ModerationUserId" FOREIGN KEY ("ModerationUserId") REFERENCES dbo."Users" ("UserId")
);