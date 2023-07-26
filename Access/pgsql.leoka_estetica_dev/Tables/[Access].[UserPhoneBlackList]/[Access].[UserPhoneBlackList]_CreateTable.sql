CREATE TABLE IF NOT EXISTS "Access"."UserPhoneBlackList"
(
    "BlackId" BIGSERIAL,
    "UserId" BIGINT NOT NULL,
    "PhoneNumber" VARCHAR(50) NOT NULL,
    CONSTRAINT "PK_UserPhoneBlackList_BlackId" PRIMARY KEY ("BlackId")
);

CREATE TRIGGER "UserPhoneBlackListInsertTrigger"
AFTER INSERT
ON "Access"."UserPhoneBlackList"
FOR EACH ROW
EXECUTE PROCEDURE "Access"."UserEmailBlackListInsert"();

CREATE TRIGGER "UserPhoneBlackListDeleteTrigger"
AFTER DELETE
ON "Access"."UserPhoneBlackList"
FOR EACH ROW
EXECUTE PROCEDURE "Access"."UserPhoneBlackListDelete"();