CREATE OR REPLACE FUNCTION "Access"."UserEmailBlackListInsert"() RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO "Access"."UserEmailBlackListShadow" ("DateCreated", "ActionText", "ActionSysName", "UserId", "Email")
    VALUES (NOW(), 'Email пользователя был заблокирован.', 'Add', NEW."UserId", NEW."Email");

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;