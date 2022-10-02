CREATE TABLE IF NOT EXISTS dbo."PlatformOffers"
(
    "OfferId" SERIAL PRIMARY KEY,
    "OffeTitle" VARCHAR(200) NOT NULL,
    "OfferSubTitle" VARCHAR(200) NOT NULL
);