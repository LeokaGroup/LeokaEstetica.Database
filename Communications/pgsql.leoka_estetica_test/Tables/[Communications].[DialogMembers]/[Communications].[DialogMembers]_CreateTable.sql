CREATE TABLE IF NOT EXISTS "Communications"."DialogMembers"
(
    "MemberId" BIGSERIAL,
    "DialogName" VARCHAR(150) NOT NULL,
    "Joined" TIMESTAMP NOT NULL DEFAULT NOW(),
    "DialogId" BIGINT NOT NULL,
    "UserId" BIGINT NOT NULL,
    CONSTRAINT "PK_MainInfoDialogs_MemberId" PRIMARY KEY ("MemberId"),
    CONSTRAINT "FK_MainInfoDialogs_DialogId" FOREIGN KEY ("DialogId") REFERENCES "Communications"."MainInfoDialogs"("DialogId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES "dbo"."Users" ("UserId")
);