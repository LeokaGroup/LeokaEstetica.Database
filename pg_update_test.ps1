liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="schemasonly" update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="typesonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="tablesonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="viewssonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="functionsonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="proceduresonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="specialonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="specialonly"   update

liquibase --defaultsFile=pgsql.leoka_estetica_test.properties --changeLogFile=pgsql.leoka_estetica_test.xml --contexts="Common"   update