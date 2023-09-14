CREATE TABLE IF NOT EXISTS "Communications"."Contacts"
(
    "ContactId"   SMALLSERIAL,
    "Name"        VARCHAR(200) NOT NULL,
    "Description" TEXT         NOT NULL,
    CONSTRAINT "PK_Contacts_ContactId" PRIMARY KEY ("ContactId")
);