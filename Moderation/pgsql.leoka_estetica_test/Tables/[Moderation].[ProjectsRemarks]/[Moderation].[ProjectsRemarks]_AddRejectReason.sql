ALTER TABLE IF EXISTS "Moderation"."ProjectsRemarks"
ADD COLUMN IF NOT EXISTS "RejectReason" VARCHAR(300) NOT NULL DEFAULT '';