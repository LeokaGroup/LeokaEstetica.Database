CREATE TABLE IF NOT EXISTS "Moderation"."Users"
(
    "Id" BIGSERIAL,
    "UserId" BIGINT,
    "DateCreated" TIMESTAMP NOT NULL DEFAULT NOW(),
    "UserRoleId" INT,
    "PasswordHash" TEXT NOT NULL,
    CONSTRAINT "PK_Users_Id" PRIMARY KEY ("Id")
);

DO
$$
    BEGIN
        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'dbo'
                    AND table_name = 'Users') THEN
            ALTER TABLE "Moderation"."Users"
                ADD CONSTRAINT "FK_Users_UserId"
                    FOREIGN KEY ("UserId") REFERENCES "dbo"."Users" ("UserId");
        END IF;

        IF EXISTS(SELECT 1
                  FROM information_schema.tables
                  WHERE table_schema = 'Roles'
                    AND table_name = 'ModerationRoles') THEN
            ALTER TABLE "Moderation"."Users"
                ADD CONSTRAINT "FK_Roles_UserRole"
                    FOREIGN KEY ("UserRoleId") REFERENCES "Roles"."ModerationRoles" ("RoleId");
        END IF;
    END;
$$;