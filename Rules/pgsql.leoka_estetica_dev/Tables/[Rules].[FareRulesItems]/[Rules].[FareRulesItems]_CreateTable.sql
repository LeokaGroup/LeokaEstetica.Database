CREATE TABLE IF NOT EXISTS "Rules"."FareRulesItems"
(
    "RuleItemId" SERIAL,
    "RuleId" INT,
    "Name" VARCHAR(150) NOT NULL,
    "Label" VARCHAR(200) NOT NULL,
    "Position" INT NOT NULL DEFAULT 0,
    "IsLater" BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT "PK_FareRulesItems_RuleItemId" PRIMARY KEY ("RuleItemId"),
    CONSTRAINT "FK_FareRules_RuleId" FOREIGN KEY ("RuleId") REFERENCES "Rules"."FareRules" ("RuleId")
);