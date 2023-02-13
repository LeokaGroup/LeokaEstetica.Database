CREATE TABLE IF NOT EXISTS "Access"."UserPhoneBlackListShadow"
(
    "ShadowId" BIGSERIAL,
    "DateCreated" TIMESTAMP NOT NULL DEFAULT NOW(),
    "ActionText" TEXT NOT NULL,
    "ActionSysName" VARCHAR(100) NOT NULL,
    "UserId" BIGINT NOT NULL,
    CONSTRAINT "PK_UserPhoneBlackListShadow_ShadowId" PRIMARY KEY ("ShadowId")
);