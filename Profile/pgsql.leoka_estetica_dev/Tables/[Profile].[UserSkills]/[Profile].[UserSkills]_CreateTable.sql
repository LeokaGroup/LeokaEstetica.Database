CREATE TABLE IF NOT EXISTS "Profile"."UserSkills"
(
    "UserSkillId" SERIAL,
    "SkillId" INT NOT NULL,
    "UserId" BIGINT NOT NULL,
    "Position" INT NOT NULL,
    CONSTRAINT "PK_UserSkills_UserSkillId" PRIMARY KEY ("UserSkillId")
);