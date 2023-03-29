CREATE TABLE IF NOT EXISTS "Profile"."ProfilesInfo"
(
    "ProfileInfoId" BIGSERIAL,
    "LastName" VARCHAR(200) NOT NULL,
    "FirstName" VARCHAR(200) NOT NULL,
    "Patronymic" VARCHAR(200) NULL,
    "IsShortFirstName" BOOLEAN NOT NULL,
    "Telegram" VARCHAR(200) NULL,
    "WhatsApp" VARCHAR(200) NULL,
    "Vkontakte" VARCHAR(200) NULL,
    "OtherLink" VARCHAR(200) NULL,
    "Aboutme" TEXT NOT NULL,
    "Job" VARCHAR(200) NULL,
    "UserId" BIGINT,
    CONSTRAINT "PK_ProfilesInfo_ProfileInfoId" PRIMARY KEY ("ProfileInfoId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users"("UserId")
);

ALTER TABLE "Profile"."ProfilesInfo" 
ADD COLUMN IF NOT EXISTS "WorkExperience" VARCHAR(50) NULL;
