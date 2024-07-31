-- Tabelle anlegen
CREATE TABLE users(
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL
)

-- Datensatz speichern/anlegen
INSERT INTO
    users (username, password, email)
VALUES
    ("Lukas", "geheim", "lukas_bernegger@gmx.at")