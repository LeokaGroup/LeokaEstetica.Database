CREATE TABLE IF NOT EXISTS "Communications"."TicketStatuses"
(
    "StatusId"      SERIAL,
    "StatusName"    VARCHAR(50) NOT NULL,
    "StatusSysName" VARCHAR(50) NOT NULL,
    CONSTRAINT "PK_TicketStatuses_StatusId" PRIMARY KEY ("StatusId")
);