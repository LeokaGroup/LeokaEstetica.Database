CREATE TABLE IF NOT EXISTS "Subscriptions"."Subscriptions"
(
    "SubscriptionId" BIGINT,
    "ObjectId" BIGINT NOT NULL,
    "IsLatter" BOOLEAN NOT NULL DEFAULT FALSE,
    "SubscriptionType" VARCHAR(100) NOT NULL,
    CONSTRAINT "PK_Subscriptions_SubscriptionId" PRIMARY KEY ("SubscriptionId")
);