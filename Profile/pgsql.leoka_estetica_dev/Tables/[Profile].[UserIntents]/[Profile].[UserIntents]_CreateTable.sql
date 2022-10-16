CREATE TABLE IF NOT EXISTS "Profile"."UserIntents"
(
    "UserIntentId" SERIAL,
    "IntentId" INT NOT NULL,
    "UserId" BIGINT NOT NULL,
    "Position" INT NOT NULL,
    CONSTRAINT "PK_UserIntents_IntentId" PRIMARY KEY ("UserIntentId")
);