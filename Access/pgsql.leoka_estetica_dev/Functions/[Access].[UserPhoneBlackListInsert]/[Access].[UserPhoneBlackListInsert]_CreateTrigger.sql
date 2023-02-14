CREATE OR REPLACE FUNCTION "Access"."UserPhoneBlackListInsert"() RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO "Access"."UserPhoneBlackListShadow" ("DateCreated", "ActionText", "ActionSysName", "UserId")
    VALUES (NEW."DateCreated", NEW."ActionText", NEW."ActionSysName", NEW."UserId");

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;