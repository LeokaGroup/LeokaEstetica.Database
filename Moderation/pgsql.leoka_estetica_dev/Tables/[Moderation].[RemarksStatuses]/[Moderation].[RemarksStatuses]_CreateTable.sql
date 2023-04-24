CREATE TABLE IF NOT EXISTS "Moderation"."RemarksStatuses"
(
    "StatusId"      SERIAL,
    "StatusName"    VARCHAR(150) NOT NULL,
    "StatusSysName" VARCHAR(150) NOT NULL,
    CONSTRAINT "PK_StatusId" PRIMARY KEY ("StatusId")
);