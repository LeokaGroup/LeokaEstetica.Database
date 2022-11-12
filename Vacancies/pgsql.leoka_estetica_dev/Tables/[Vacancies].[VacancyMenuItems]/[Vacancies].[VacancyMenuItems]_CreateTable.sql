CREATE TABLE IF NOT EXISTS "Vacancies"."VacancyMenuItems"
(
 "ProfileMenuItemId" SERIAL CONSTRAINT "PK_ProfileMenuItems_ProfileMenuItemId" PRIMARY KEY,
    "ProfileMenuItems" JSONB NOT NULL
);