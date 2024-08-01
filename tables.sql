-- Tabelle löschen
DROP TABLE users;
DROP TABLE category;

-- Verknüpfte Tabelle
CREATE TABLE category(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT NULL
)

-- Tabelle anlegen
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL,
    category_id INTEGER,  -- Erstellt die Spalte
    FOREIGN KEY (category_id)  -- Fremdschlüssel auf obige category_id anwenden
        REFERENCES category (id)  -- Die eigentliche Referenz auf das Objekt in der Tabelle category
)

-- Datensatz speichern/anlegen
INSERT INTO
    category (name, description)
VALUES
    ("admin", "Admins dürfen alles"),
    ("manager", "Manager sind für die Projekte zuständig"),
    ("developer", "Setzen Projekte um")

-- Datensatz speichern/anlegen
INSERT INTO
    users (username, password, email, category_id)
VALUES
    ("Max", "öleiaf", "max@gmx.at", 1),
    ("Lukas", "#ikeldlisef", "lukas@gmx.at", 3),
    ("Marin", "ääliesseed", "martin@gmx.at", 3)


-- Daten auslesen/selektieren (Anzeigen nur username und passwort)
SELECT username, password FROM users

-- Alle Daten auslesen/selektieren (Alle Spalten anzeigen mit *)
SELECT * FROM users

-- Bestimmte Spalte suchen.
SELECT * FROM users WHERE username = "Lukas"

-- Alle Daten auslesen/selektieren nach id
SELECT * FROM users WHERE id = 2

-- Alle Daten auslesen/selektieren uns aufsteigend sortieren.
SELECT * FROM users ORDER BY username ASC

-- Alle Daten auslesen/selektieren uns absteigend sortieren.
SELECT * FROM users ORDER BY username DESC

-- Daten aktualisieren
UPDATE users SET password = "5678", email = "neueemail@gmail.com" WHERE id = 2


-- Datensätze aus mehreren Tabelle selektieren
SELECT
    *
FROM users
LEFT JOIN category ON users.category_id = category.id;

-- Datensätze aus mehreren Tabelle selektieren
SELECT
    users.id as userid,
    users.username,
    category.name,
    category.description
FROM users
LEFT JOIN category ON users.category_id = category.id
ORDER BY category.name DESC;  -- Sortiert noch zusätzilch.


--Datensätze löschen
DELETE FROM users WHERE id = 2;
