CREATE TABLE IF NOT EXISTS "Configs"."GlobalConfig"
(
    "ParamId" BIGSERIAL,
    "ParamKey" VARCHAR(200) NOT NULL,
    "ParamValue" VARCHAR(50) NOT NULL,
    "ParamType" VARCHAR(50) NOT NULL,
    "ParamDescription" VARCHAR(200) NOT NULL,
    "ParamTag" VARCHAR(50) NULL
);