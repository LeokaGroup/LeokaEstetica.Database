CREATE TABLE IF NOT EXISTS "Access"."UserEmailBlackList"
(
    "BlackId" BIGSERIAL,
    "UserId" BIGINT NOT NULL,
    "Email" VARCHAR(120) NOT NULL,
    CONSTRAINT "PK_UserEmailBlackList_BlackId" PRIMARY KEY ("BlackId")
);