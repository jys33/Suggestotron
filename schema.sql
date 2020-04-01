CREATE DATABASE suggestotron;

USE suggestotron;

CREATE TABLE topics(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT NULL,
    PRIMARY KEY(id)
);

INSERT INTO topics(title, description)
VALUES(
    'Make Rainbow ElePHPants',
    'Create an elePHPant with rainbow fur'
);
INSERT INTO topics(title, description)
VALUES(
    'Make Giant Kittens',
    'Like kittens, but larger'
);
INSERT INTO topics(title, description)
VALUES(
    'Complete PHPBridge',
    'Because I am awesome'
);

CREATE TABLE votes(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    topic_id INT UNSIGNED NOT NULL,
    COUNT INT NOT NULL DEFAULT 0,
    PRIMARY KEY(id)
);

INSERT INTO votes(topic_id, COUNT)
SELECT
    id,
    0
FROM
    topics;