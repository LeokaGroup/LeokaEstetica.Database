CREATE OR REPLACE FUNCTION "Access"."UserEmailBlackListDelete"() RETURNS TRIGGER AS
$$
BEGIN
    DELETE
    FROM "Access"."UserEmailBlackListShadow"
    WHERE "ShadowId" = NEW.ShadowId;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;