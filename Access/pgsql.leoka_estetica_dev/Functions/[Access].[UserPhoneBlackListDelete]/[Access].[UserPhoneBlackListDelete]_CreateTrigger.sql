CREATE OR REPLACE FUNCTION "Access"."UserPhoneBlackListDelete"() RETURNS TRIGGER AS
$$
BEGIN
    DELETE
    FROM "Access"."UserPhoneBlackListShadow"
    WHERE "ShadowId" = NEW.ShadowId;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;