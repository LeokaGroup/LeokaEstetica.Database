CREATE TABLE IF NOT EXISTS "Profile"."Intents"
(
    "IntentId" SERIAL,
    "IntentName" VARCHAR(200) NOT NULL,
    "IntentSysName" VARCHAR(200) NOT NULL,
    "Position" INT NOT NULL,
    CONSTRAINT "PK_Intents_IntentId" PRIMARY KEY ("IntentId")
);