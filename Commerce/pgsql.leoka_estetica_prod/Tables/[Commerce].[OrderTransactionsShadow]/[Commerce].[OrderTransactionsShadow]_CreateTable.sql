CREATE TABLE IF NOT EXISTS "Commerce"."OrderTransactionsShadow"
(
    "ShadowId"      BIGSERIAL,
    "DateCreated"   TIMESTAMP DEFAULT NOW() NOT NULL,
    "ActionText"    VARCHAR(300)            NOT NULL,
    "ActionSysName" VARCHAR(100)            NOT NULL,
    "UserId"        BIGINT                  NOT NULL,
    "OrderId"       BIGINT                  NOT NULL,
    "StatusName"    VARCHAR(50)             NOT NULL,
    CONSTRAINT "PK_OrderTransactionsShadow_ShadowId" PRIMARY KEY ("ShadowId")
);