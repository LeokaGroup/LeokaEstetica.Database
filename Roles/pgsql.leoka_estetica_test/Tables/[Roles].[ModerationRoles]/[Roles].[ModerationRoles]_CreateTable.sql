CREATE TABLE IF NOT EXISTS "Roles"."ModerationRoles"
(
    "RoleId" SERIAL,
    "RoleName" VARCHAR(150) NOT NULL,
    "RolSyseName" VARCHAR(150) NOT NULL,
    CONSTRAINT "PK_ModerationRoles_RoleId" PRIMARY KEY ("RoleId")
);