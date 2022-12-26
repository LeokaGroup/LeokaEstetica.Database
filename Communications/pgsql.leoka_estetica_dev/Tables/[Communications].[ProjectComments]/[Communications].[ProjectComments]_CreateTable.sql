CREATE TABLE IF NOT EXISTS "Communications"."ProjectComments"
(
    "CommentId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "Comment" TEXT NOT NULL,
    "IsMyComment" BOOLEAN NOT NULL,
    "Created" TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT "PK_ProjectComments_CommentId" PRIMARY KEY ("CommentId")
);

ALTER TABLE IF EXISTS "Communications"."ProjectComments"
ADD COLUMN IF NOT EXISTS "UserId" BIGINT NOT NULL,
    ADD CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId");