CREATE TABLE IF NOT EXISTS "Communications"."ProjectComments"
(
    "CommentId" BIGSERIAL,
    "ProjectId" BIGINT NOT NULL,
    "Comment" TEXT NOT NULL,
    "IsMyComment" BOOLEAN NOT NULL,
    "Created" TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT "PK_ProjectComments_CommentId" PRIMARY KEY ("CommentId")
);