CREATE TABLE IF NOT EXISTS dbo."PlatformOffersItems"
(
    "ItemId" SERIAL PRIMARY KEY,
    "ItemText" VARCHAR(200) NOT NULL,
    "ItemIcon" TEXT NULL,
    "Position" INT NOT NULL
);