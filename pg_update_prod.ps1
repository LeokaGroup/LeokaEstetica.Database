liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="schemasonly" update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="typesonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="tablesonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="viewssonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="functionsonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="proceduresonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="specialonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="specialonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_prod.properties --changeLogFile=pgsql.leoka_estetica_prod.xml --contexts="Common"   update