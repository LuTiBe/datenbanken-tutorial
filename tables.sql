-- Tabelle löschen
DROP TABLE users;

-- Tabelle anlegen
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL
)

-- Datensatz speichern/anlegen
INSERT INTO
    users (username, password, email)
VALUES
    ("Max", "öleiaf", "max@gmx.at"),
    ("Lukas", "#ikeldlisef", "lukas@gmx.at"),
    ("Marin", "ääliesseed", "martin@gmx.at")


-- Daten auslesen/selektieren (Anzeigen nur username und passwort)
SELECT username, password FROM users;  

-- Alle Daten auslesen/selektieren (Alle Spalten anzeigen mit *)
SELECT * FROM users;

-- Bestimmte Spalte suchen.
SELECT * FROM users WHERE username = "Lukas";

-- Alle Daten auslesen/selektieren nach id
SELECT * FROM users WHERE id = 2;

-- Alle Daten auslesen/selektieren uns aufsteigend sortieren.
SELECT * FROM users ORDER BY username ASC;

-- Alle Daten auslesen/selektieren uns absteigend sortieren.
SELECT * FROM users ORDER BY username DESC;

