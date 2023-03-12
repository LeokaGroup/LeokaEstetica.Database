CREATE TABLE IF NOT EXISTS dbo."Users"
(
    "UserId" BIGSERIAL,
    "LastName" VARCHAR(120) NULL DEFAULT '',
    "FirstName" VARCHAR(120) NULL DEFAULT '',
    "SecondName" VARCHAR(120) NULL DEFAULT '',
    "Login" VARCHAR(120) NULL DEFAULT '',
    "UserIcon" TEXT NULL DEFAULT '',
    "DateRegister" TIMESTAMP NULL,
    "Email" VARCHAR(120) NOT NULL,
    "EmailConfirmed" BOOLEAN NOT NULL DEFAULT FALSE,
    "PasswordHash" TEXT NOT NULL DEFAULT '',
    "PhoneNumber" VARCHAR(500) NULL DEFAULT '',
    "PhoneNumberConfirmed" BOOLEAN NOT NULL DEFAULT FALSE,
    "TwoFactorEnabled" BOOLEAN NOT NULL DEFAULT FALSE,
    "LockoutEnd" BOOLEAN NOT NULL DEFAULT FALSE,
    "LockoutEnabled" BOOLEAN NOT NULL DEFAULT FALSE,
    "UserCode" uuid,
    "ConfirmEmailCode" TEXT NULL DEFAULT '',
    "LockoutEnabledDate" TIMESTAMP NULL,
    "LockoutEndDate" TIMESTAMP NULL,
    CONSTRAINT "PK_Users_UserId" PRIMARY KEY ("UserId")
);

CREATE UNIQUE INDEX IF NOT EXISTS "Idx_UserCode" ON dbo."Users" ("UserCode");

ALTER TABLE IF EXISTS dbo."Users"
ADD COLUMN "IsVkAuth" BOOLEAN NOT NULL DEFAULT FALSE,
    ADD COLUMN "VkUserId" BIGINT NULL;