CREATE TABLE IF NOT EXISTS "Projects"."ProjectCommentsStatuses"
(
    "StatusId"      SERIAL
        CONSTRAINT "PK_ProjectCommentsStatuses_StatusId"
            PRIMARY KEY,
    "StatusName"    VARCHAR(150) NOT NULL,
    "StatusSysName" VARCHAR(150) NOT NULL
);