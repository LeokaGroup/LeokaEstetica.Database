CREATE OR REPLACE FUNCTION "Access"."UserEmailBlackListTrigger"() RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO "Access"."UserEmailBlackListShadow" ("DateCreated", "ActionText", "ActionSysName", "UserId")
    VALUES (NEW."DateCreated", NEW."ActionText", NEW."ActionSysName", NEW."UserId");

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;