CREATE TABLE IF NOT EXISTS "Projects"."ProjectStages"
(
    "StageId" SERIAL,
    "StageName" VARCHAR(150) NOT NULL,
    "StageSysName" VARCHAR(150) NOT NULL,
    "Position" INT NOT NULL,
    CONSTRAINT "PK_ProjectStages_StageId" PRIMARY KEY ("StageId")
);