CREATE TABLE IF NOT EXISTS "Communications"."MainInfoDialogs"
(
    "DialogId" BIGSERIAL,
    "DialogName" VARCHAR(150) NOT NULL,
    "Created" TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT "PK_MainInfoDialogs_DialogId" PRIMARY KEY ("DialogId")
);