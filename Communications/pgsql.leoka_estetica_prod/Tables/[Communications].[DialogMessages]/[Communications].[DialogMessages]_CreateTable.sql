CREATE TABLE IF NOT EXISTS "Communications"."DialogMessages"
(
    "MessageId" BIGSERIAL,
    "Message" TEXT NOT NULL,
    "Created" TIMESTAMP NOT NULL DEFAULT NOW(),
    "DialogId" BIGINT NOT NULL,
    "UserId" BIGINT NOT NULL,
    "IsMyMessage" BOOLEAN NOT NULL,
    CONSTRAINT "PK_DialogMessages_MessageId" PRIMARY KEY ("MessageId"),
    CONSTRAINT "FK_MainInfoDialogs_DialogId" FOREIGN KEY ("DialogId") REFERENCES "Communications"."MainInfoDialogs"("DialogId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES "dbo"."Users" ("UserId")
);