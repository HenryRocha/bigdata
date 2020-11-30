DROP DATABASE IF EXISTS buffalo;
CREATE DATABASE buffalo;
USE buffalo;
CREATE TABLE buffalo (id INT, nome VARCHAR(80), PRIMARY KEY (id));
CREATE TABLE intimida (
    id_agressor INT,
    id_vitima INT,
    ocorrencias INT,
    PRIMARY KEY (id_agressor, id_vitima),
    CONSTRAINT fk_agressor FOREIGN KEY (id_agressor) REFERENCES buffalo (id) ON DELETE CASCADE,
    CONSTRAINT fk_vitima FOREIGN KEY (id_vitima) REFERENCES buffalo (id) ON DELETE CASCADE,
    CONSTRAINT chk_ocorrencias CHECK (ocorrencias > 0)
);