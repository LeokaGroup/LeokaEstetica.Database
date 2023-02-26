CREATE TABLE IF NOT EXISTS "Notifications"."Notifications"
(
    "NotificationId" BIGSERIAL,
    "NotificationName" VARCHAR(200) NOT NULL,
    "NotificationSysName" VARCHAR(200) NOT NULL,
    "IsNeedAccepted" BOOLEAN NOT NULL,
    "Approved" BOOLEAN NULL,
    "Rejected" BOOLEAN NULL,
    "ProjectId" BIGINT NULL,
    "VacancyId" BIGINT NULL,
    "UserId" BIGINT NOT NULL,
    "NotificationText" TEXT NOT NULL,
    "Created" timestamp NOT NULL DEFAULT NOW(),
    "NotificationType" VARCHAR(100) NOT NULL,
    "IsShow" BOOLEAN NOT NULL,
    CONSTRAINT "PK_Notifications_NotificationId" PRIMARY KEY ("NotificationId")
);