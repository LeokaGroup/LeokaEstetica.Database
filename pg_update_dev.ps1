liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="schemasonly" update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="typesonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="tablesonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="viewssonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="functionsonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="proceduresonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="specialonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="specialonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_dev.properties --changeLogFile=pgsql.leoka_estetica_dev.xml --contexts="Common"   update