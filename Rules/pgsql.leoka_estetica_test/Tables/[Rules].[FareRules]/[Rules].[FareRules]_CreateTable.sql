CREATE TABLE IF NOT EXISTS "Rules"."FareRules"
(
    "RuleId" SERIAL,
    "Name" VARCHAR(150) NOT NULL,
    "Label" VARCHAR(200) NOT NULL,
    "Position" INT NOT NULL DEFAULT 0,
    "Price" DECIMAL(12,2) NOT NULL,
    "Currency" VARCHAR(5) NOT NULL DEFAULT 'RUB',
    "IsPopular" BOOLEAN NOT NULL DEFAULT FALSE,
    "IsFree" BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT "PK_FareRules_RuleId" PRIMARY KEY ("RuleId")
);

ALTER TABLE IF EXISTS "Rules"."FareRules"
ADD COLUMN "PublicId" UUID NOT NULL DEFAULT uuid_in(("overlay"("overlay"(md5((((random())::text || ':'::text) || (random())::text)), '4'::text, 13), to_hex((floor(((random() * (((11 - 8) + 1))::double precision) + (8)::double precision)))::integer), 17))::cstring);