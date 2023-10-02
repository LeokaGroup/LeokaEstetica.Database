CREATE TABLE IF NOT EXISTS "Communications"."TicketMembers"
(
    "MemberId" BIGSERIAL,
    "UserId"   BIGINT    NOT NULL,
    "Joined"   TIMESTAMP NOT NULL DEFAULT NOW(),
    "TicketId" BIGINT    NOT NULL,
    CONSTRAINT "PK_TicketMembers_MemberId" PRIMARY KEY ("MemberId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId"),
    CONSTRAINT "FK_MainInfoTickets_TicketId" FOREIGN KEY ("TicketId") REFERENCES "Communications"."MainInfoTickets" ("TicketId")
);