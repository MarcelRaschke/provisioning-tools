CREATE DATABASE {{ db_name }};
USE {{ db_name }};

CREATE TABLE IF NOT EXISTS Jobs (
    ID char(36) NOT NULL UNIQUE PRIMARY KEY,
    JobName varchar(65535) NOT NULL,
    Repository varchar(65535) NOT NULL,
    Payload varchar(65535) NOT NULL,
    RepositoryPath varchar(65535) NOT NULL,
    Script varchar(65535) NOT NULL,
    ScriptArgs varchar(65535) NOT NULL,
    TransferScript boolean NOT NULL,
    Dependencies varchar(65535) NOT NULL,
    WorkerName varchar(65535) NOT NULL,
    StartTime timestamp NOT NULL,
    FinishTime timestamp NOT NULL,
    Successful boolean NOT NULL,
    ErrorMessage varchar(65535) NOT NULL
);

CREATE USER '{{ db_user}}'@'localhost' IDENTIFIED BY '{{ db_pass }}';
GRANT ALL PRIVILEGES ON *.* TO '{{ db_user }}'@'localhost';
FLUSH PRIVILEGES;