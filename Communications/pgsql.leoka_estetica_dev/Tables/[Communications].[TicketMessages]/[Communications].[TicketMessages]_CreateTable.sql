CREATE TABLE IF NOT EXISTS "Communications"."TicketMessages"
(
    "MessageId"   BIGSERIAL,
    "TicketId"    BIGINT    NOT NULL,
    "Message"     TEXT      NOT NULL,
    "DateCreated" TIMESTAMP NOT NULL DEFAULT NOW(),
    "UserId"      BIGINT    NOT NULL,
    "IsMyMessage" BOOLEAN   NOT NULL,
    CONSTRAINT "FK_TicketMessages_TicketId" FOREIGN KEY ("TicketId") REFERENCES "Communications"."MainInfoTickets" ("TicketId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId")
);