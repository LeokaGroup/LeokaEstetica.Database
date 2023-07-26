CREATE TABLE IF NOT EXISTS "Subscriptions"."UserSubscriptions"
(
    "UserSubscriptionId" BIGSERIAL,
    "UserId" BIGINT,
    "IsActive" BOOLEAN NOT NULL DEFAULT FALSE,
    "MonthCount" SMALLINT NOT NULL DEFAULT 1,
    "SubscriptionId" BIGINT NOT NULL,
    CONSTRAINT "PK_UserSubscriptions_UserSubscriptionId" PRIMARY KEY ("UserSubscriptionId")
);