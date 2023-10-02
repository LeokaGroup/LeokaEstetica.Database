CREATE TABLE IF NOT EXISTS "Communications"."ProjectComments"
(
    "CommentId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "Comment" TEXT NOT NULL,
    "IsMyComment" BOOLEAN NOT NULL,
    "Created" TIMESTAMP NOT NULL DEFAULT NOW(),
    "UserId" BIGINT NOT NULL,
    CONSTRAINT "PK_ProjectComments_CommentId" PRIMARY KEY ("CommentId"),
    CONSTRAINT "FK_Users_UserId" FOREIGN KEY ("UserId") REFERENCES dbo."Users" ("UserId")
);