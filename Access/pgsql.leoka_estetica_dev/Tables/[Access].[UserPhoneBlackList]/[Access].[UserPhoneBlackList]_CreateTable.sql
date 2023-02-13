CREATE TABLE IF NOT EXISTS "Access"."UserPhoneBlackList"
(
    "BlackId" BIGSERIAL,
    "UserId" BIGINT NOT NULL,
    "PhoneNumber" VARCHAR(50) NOT NULL,
    CONSTRAINT "PK_UserPhoneBlackList_BlackId" PRIMARY KEY ("BlackId")
);