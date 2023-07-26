CREATE TABLE IF NOT EXISTS "Moderation"."ModerationStatuses"
(
    "StatusId" SERIAL,
    "StatusName" VARCHAR(150) NOT NULL,
    "StatusSysName" VARCHAR(150) NOT NULL,
    CONSTRAINT "PK_ModerationStatuses_StatusId" PRIMARY KEY ("StatusId")
);