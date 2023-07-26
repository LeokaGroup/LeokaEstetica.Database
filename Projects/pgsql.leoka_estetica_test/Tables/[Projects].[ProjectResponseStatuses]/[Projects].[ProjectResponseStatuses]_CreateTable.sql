CREATE TABLE IF NOT EXISTS "Projects"."ProjectResponseStatuses"
(
    "StatusId" SERIAL,
    "StatusName" VARCHAR(150) NOT NULL,
    "StatusSysName" VARCHAR(150) NOT NULL,
    CONSTRAINT "PK_ProjectResponseStatuses_StatusId" PRIMARY KEY ("StatusId")
);