CREATE OR REPLACE FUNCTION "Access"."UserPhoneBlackListInsert"() RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO "Access"."UserPhoneBlackListShadow" ("DateCreated", "ActionText", "ActionSysName", "UserId", "PhoneNumber")
    VALUES (NOW(), 'Номер телефона пользователя был заблокирован.', 'Add', NEW."UserId", NEW."PhoneNumber");

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;