CREATE TABLE IF NOT EXISTS "Communications"."TicketCategories"
(
    "CategoryId"      SMALLINT,
    "CategoryName"    VARCHAR(150) NOT NULL,
    "CategorySysName" VARCHAR(150) NOT NULL,
    "Position"        SMALLINT     NOT NULL DEFAULT 0,
    CONSTRAINT "PK_TicketCategories_CategoryId" PRIMARY KEY ("CategoryId")
);