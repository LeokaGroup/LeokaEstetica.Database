ALTER TABLE IF EXISTS "Vacancies"."UserVacancies"
ADD COLUMN IF NOT EXISTS "Conditions" TEXT NULL;