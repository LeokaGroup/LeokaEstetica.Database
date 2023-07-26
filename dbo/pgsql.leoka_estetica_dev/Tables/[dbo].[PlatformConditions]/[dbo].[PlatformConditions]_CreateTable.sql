CREATE TABLE IF NOT EXISTS dbo."PlatformConditions"
(
    "PlatformConditionId"       SERIAL,
    "PlatformConditionTitle"    VARCHAR(200) NULL,
    "PlatformConditionSubTitle" VARCHAR(200) NOT NULL,
    "Position"                  INT          NOT NULL DEFAULT 0,
    CONSTRAINT "PK_PlatformConditions_PlatformConditionId" PRIMARY KEY ("PlatformConditionId")
);