CREATE TABLE IF NOT EXISTS "Moderation"."ProjectCommentsModeration"
(
    "ModerationId" BIGSERIAL,
    "DateModeration" TIMESTAMP NOT NULL DEFAULT NOW(),
    "CommentId" BIGINT NOT NULL,
    "StatusId" INT NOT NULL,
    CONSTRAINT "PK_ProjectCommentsModeration_ModerationId" PRIMARY KEY ("ModerationId"),
    CONSTRAINT "FK_ProjectComments_CommentId" FOREIGN KEY ("CommentId") REFERENCES "Communications"."ProjectComments"("CommentId"),
    CONSTRAINT "FK_ProjectComments_StatusId" FOREIGN KEY ("StatusId") REFERENCES "Moderation"."ModerationStatuses"("StatusId")
);