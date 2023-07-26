CREATE TABLE IF NOT EXISTS "Roles"."ModerationUserRoles"
(
    "UserRoleId" SERIAL NOT NULL,
    "RoleId" INT NOT NULL,
    "UserId" BIGINT NOT NULL,
    "IsActive" BOOLEAN NOT NULL,
    CONSTRAINT "PK_ModerationUserRoles_UserRoleId" PRIMARY KEY ("UserRoleId"),
    CONSTRAINT "FK_ModerationRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "Roles"."ModerationRoles" ("RoleId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId")
);