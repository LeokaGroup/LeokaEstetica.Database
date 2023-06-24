CREATE TABLE IF NOT EXISTS "Communications"."TicketStatuses"
(
    "StatsuId"      SERIAL,
    "StatusName"    VARCHAR(50) NOT NULL,
    "StatusSysName" VARCHAR(50) NOT NULL,
    CONSTRAINT "PK_TicketStatuses_StatsuId" PRIMARY KEY ("StatsuId")
);