CREATE TABLE IF NOT EXISTS dbo."Header" (
  "HeaderId" SERIAL NOT NULL,
  "MenuItemTitle" VARCHAR(200) NOT NULL,
  "MenuItemUrl" VARCHAR(200) NULL,
  "Position" INT NOT NULL DEFAULT 0,
  CONSTRAINT "PK_Header_HeaderId" PRIMARY KEY ("HeaderId")
);