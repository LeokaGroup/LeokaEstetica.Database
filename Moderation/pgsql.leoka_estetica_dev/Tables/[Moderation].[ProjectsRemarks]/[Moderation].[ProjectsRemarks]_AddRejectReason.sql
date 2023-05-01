ALTER TABLE IF EXISTS "Moderation"."ProjectsRemarks"
ADD "RejectReason" VARCHAR(300) NOT NULL default('Не указана');