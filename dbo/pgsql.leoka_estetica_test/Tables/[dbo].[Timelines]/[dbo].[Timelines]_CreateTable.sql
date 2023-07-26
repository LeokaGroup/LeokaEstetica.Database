CREATE TABLE IF NOT EXISTS dbo."Timelines"
(
    "TimelineId" SERIAL,
    "TimelineTitle" VARCHAR(200) NOT NULL,
    "TimelineText" TEXT NOT NULL,
    "TimelineSysType" VARCHAR(150) NOT NULL,
    "TimelineTypeName" VARCHAR(150) NULL,
    CONSTRAINT "PK_TimelineId" PRIMARY KEY ("TimelineId")
);