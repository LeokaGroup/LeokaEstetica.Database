CREATE TABLE IF NOT EXISTS "Communications"."TicketRoles"
(
    "RoleId"      SERIAL,
    "RoleName"    VARCHAR(100) NOT NULL,
    "RoleSysName" VARCHAR(100) NOT NULL,
    CONSTRAINT "PK_TicketRoles_RoleId" PRIMARY KEY ("RoleId")
);