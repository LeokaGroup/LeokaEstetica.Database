CREATE TABLE IF NOT EXISTS "Communications"."MainInfoTickets"
(
    "TicketId"       BIGSERIAL,
    "TicketName"     VARCHAR(200) NOT NULL,
    "DateCreated"    TIMESTAMP    NOT NULL DEFAULT NOW(),
    "TicketStatusId" SMALLINT     NOT NULL,
    "TicketFileId"   BIGINT       NOT NULL,
    CONSTRAINT "PK_MainInfoTickets_TicketId" PRIMARY KEY ("TicketId"),
    CONSTRAINT "FK_TicketFiles_FileId" FOREIGN KEY ("TicketFileId") REFERENCES "Communications"."TicketFiles" ("FileId")
);