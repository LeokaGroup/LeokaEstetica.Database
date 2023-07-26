CREATE TABLE IF NOT EXISTS "Communications"."TicketFiles"
(
    "FileId"      BIGSERIAL    NOT NULL,
    "Url"         TEXT         NOT NULL,
    "Title"       VARCHAR(150) NULL,
    "Description" TEXT         NULL,
    "Position"    SMALLINT     NOT NULL,
    "Type"        VARCHAR(50)  NOT NULL,
    CONSTRAINT "PK_TicketFiles_FileId" PRIMARY KEY ("FileId")
);