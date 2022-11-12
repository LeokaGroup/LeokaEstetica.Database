CREATE TABLE IF NOT EXISTS "Vacancies"."VacancyMenuItems"
(
 "ProfileMenuItemId" SERIAL CONSTRAINT "PK_VacancyMenuItems_ProfileMenuItemId" PRIMARY KEY,
    "ProfileMenuItems" JSONB NOT NULL
);