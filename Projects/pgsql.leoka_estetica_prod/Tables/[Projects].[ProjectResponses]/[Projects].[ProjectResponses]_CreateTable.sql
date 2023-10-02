CREATE TABLE IF NOT EXISTS "Projects"."ProjectResponses"
(
    "ResponseId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "UserId" BIGINT NOT NULL,
    "DateResponse" TIMESTAMP NOT NULL DEFAULT NOW(),
    "ProjectResponseStatuseId" INT NOT NULL,
    "VacancyId" BIGINT NULL,
    CONSTRAINT "PK_ProjectResponses_ResponseId" PRIMARY KEY ("ResponseId")
);