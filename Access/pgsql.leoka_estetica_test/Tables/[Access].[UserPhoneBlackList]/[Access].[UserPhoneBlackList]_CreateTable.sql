CREATE TABLE IF NOT EXISTS "Access"."UserPhoneBlackList"
(
    "BlackId" BIGSERIAL,
    "UserId" BIGINT NOT NULL,
    "PhoneNumber" VARCHAR(50) NOT NULL,
    CONSTRAINT "PK_UserPhoneBlackList_BlackId" PRIMARY KEY ("BlackId")
);

-- DO
-- $$
--     BEGIN
--         IF EXISTS(SELECT '"Access"."UserPhoneBlackListInsertTrigger"()'::REGPROCEDURE) THEN
--             CREATE TRIGGER "UserPhoneBlackListInsertTrigger"
--                 AFTER INSERT
--                 ON "Access"."UserPhoneBlackList"
--                 FOR EACH ROW
--             EXECUTE PROCEDURE "Access"."UserEmailBlackListInsert"();
--         END IF;
--     END;
-- $$;

-- DO
-- $$
--     BEGIN
--         IF EXISTS(SELECT '"Access"."UserPhoneBlackListDeleteTrigger"()'::REGPROCEDURE) THEN
--             CREATE TRIGGER "UserPhoneBlackListDeleteTrigger"
--                 AFTER DELETE
--                 ON "Access"."UserPhoneBlackList"
--                 FOR EACH ROW
--             EXECUTE PROCEDURE "Access"."UserPhoneBlackListDelete"();
--         END IF;
--     END;
-- $$;