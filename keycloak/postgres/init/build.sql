CREATE ROLE keycloak WITH
    LOGIN
    SUPERUSER
    CREATEDB
    CREATEROLE
    NOREPLICATION
    NOBYPASSRLS
    PASSWORD 'keycloak';

CREATE DATABASE keycloak WITH OWNER keycloak ENCODING 'UTF8' LC_COLLATE 'en_US.UTF-8' LC_CTYPE 'en_US.UTF-8' TEMPLATE template1 CONNECTION LIMIT -1 TABLESPACE pg_default IS_TEMPLATE false;
