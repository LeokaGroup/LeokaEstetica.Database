CREATE TABLE IF NOT EXISTS "Communications"."WishesOffers"
(
    "WisheOfferId"   BIGINT,
    "ContactEmail"   VARCHAR(200) NOT NULL,
    "WisheOfferText" TEXT         NOT NULL,
    "DateCreated"    TIMESTAMP    NOT NULL DEFAULT NOW(),
    CONSTRAINT "PK_WishesOffers_WisheOfferId" PRIMARY KEY ("WisheOfferId")
);