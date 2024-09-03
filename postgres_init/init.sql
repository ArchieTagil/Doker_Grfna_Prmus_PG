DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS emails CASCADE;

CREATE TABLE users
(
    login VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255),
    date DATE
);

CREATE TABLE emails
(
    login VARCHAR(255),
    email VARCHAR(255),
    FOREIGN KEY (login) REFERENCES users (login)
);

INSERT INTO users (login, password, date) VALUES
    ('Dmitry', 'love', '1992-05-24'),
    ('Igor', 'secret', '1989-02-16'),
    ('Plague', 'GOD', '1995-08-25'),
    ('Peter', '123456', '1984-11-12'),
    ('Sergey', 'pa$$w0rd', '1979-06-12')
;

INSERT INTO emails (login, email) VALUES
    ('Dmitry', 'dmitry@yandex.ru'),
    ('Dmitry', 'dmitry@mail.ru'),
    ('Dmitry', 'dmitry@yahoo.com'),
    ('Dmitry', 'dmitry@gmail.com'),
    ('Plague', 'plague@gmail.com'),
    ('Plague', 'plague@gibson.com'),
    ('Peter', 'peter@mail.ru')
;
