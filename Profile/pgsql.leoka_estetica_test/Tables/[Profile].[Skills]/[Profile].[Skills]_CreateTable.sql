CREATE TABLE IF NOT EXISTS "Profile"."Skills"
(
    "SkillId" SERIAL,
    "SkillName" VARCHAR(200) NOT NULL,
    "SkillSysName" VARCHAR(200) NOT NULL,
    "Position" INT NOT NULL,
    "Tag" VARCHAR(150) NOT NULL,
    CONSTRAINT "PK_Skills_SkillId" PRIMARY KEY ("SkillId")
);