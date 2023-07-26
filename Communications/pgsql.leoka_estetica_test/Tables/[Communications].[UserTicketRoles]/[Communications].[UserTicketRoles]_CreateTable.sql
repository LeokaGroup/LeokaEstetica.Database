CREATE TABLE IF NOT EXISTS "Communications"."UserTicketRoles"
(
    "UserRoleId" BIGSERIAL,
    "UserId"     BIGINT NOT NULL,
    "RoleId"     INT    NOT NULL,
    CONSTRAINT "PK_UserTicketRoles_UserRoleId" PRIMARY KEY ("UserRoleId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId"),
    CONSTRAINT "FK_TicketRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "Communications"."TicketRoles" ("RoleId")
);