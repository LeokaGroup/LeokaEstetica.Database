CREATE TABLE IF NOT EXISTS "Communications"."PublicOffer"
(
    "OfferId"     SMALLSERIAL,
    "Name"        VARCHAR(200) NOT NULL,
    "Description" TEXT         NOT NULL
);