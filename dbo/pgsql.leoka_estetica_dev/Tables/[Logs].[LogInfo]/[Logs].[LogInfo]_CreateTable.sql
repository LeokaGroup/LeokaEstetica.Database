CREATE TABLE IF NOT EXISTS "Logs"."LogInfo" (
  "LogId" BIGSERIAL PRIMARY KEY,
  "ExceptionMessage" TEXT NOT NULL,
  "DateCreated" TIMESTAMP NOT NULL DEFAULT NOW(),
  "Account" VARCHAR(100) NOT NULL,
  "StackTrace" TEXT NOT NULL
);

ALTER TABLE IF EXISTS "Logs"."LogInfo"
ADD COLUMN "LogKey" UUID NOT NULL;

CREATE UNIQUE INDEX IF NOT EXISTS "Index_LogInfo_LogKey"
    ON "Logs"."LogInfo" USING btree ("LogKey");