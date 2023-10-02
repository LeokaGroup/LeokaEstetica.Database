CREATE TABLE IF NOT EXISTS "Moderation"."Users"
(
    "Id" BIGSERIAL,
    "UserId" BIGINT,
    "DateCreated" TIMESTAMP NOT NULL DEFAULT NOW(),
    "UserRoleId" INT,
    "PasswordHash" TEXT NOT NULL,
    CONSTRAINT "PK_Users_Id" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId"),
    CONSTRAINT "FK_Roles_UserRole" FOREIGN KEY ("UserRoleId") REFERENCES "Roles"."ModerationRoles" ("RoleId")
);