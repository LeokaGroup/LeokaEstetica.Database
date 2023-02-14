CREATE TABLE IF NOT EXISTS "Access"."UserEmailBlackList"
(
    "BlackId" BIGSERIAL,
    "UserId" BIGINT NOT NULL,
    "Email" VARCHAR(120) NOT NULL,
    CONSTRAINT "PK_UserEmailBlackList_BlackId" PRIMARY KEY ("BlackId")
);

CREATE TRIGGER "UserEmailBlackListInsertTrigger"
AFTER INSERT
ON "Access"."UserEmailBlackList"
FOR EACH ROW
EXECUTE PROCEDURE "Access"."UserEmailBlackListInsert"();

CREATE TRIGGER "UserEmailBlackListDeleteTrigger"
AFTER DELETE
ON "Access"."UserEmailBlackList"
FOR EACH ROW
EXECUTE PROCEDURE "Access"."UserEmailBlackListDelete"();