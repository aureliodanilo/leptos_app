DROP TABLE IF EXISTS Tickets;
DROP TABLE IF EXISTS Status;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS TicketStatus;

-- Foreign-Key-Unterstützung aktivieren (wichtig bei SQLite!)
PRAGMA foreign_keys = ON;

-- Tabelle: Author
CREATE TABLE Author (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Firstname TEXT NOT NULL,
    Lastname TEXT NOT NULL
);

-- Tabelle: Status
CREATE TABLE TicketStatus (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Text TEXT NOT NULL UNIQUE
);

-- Tabelle: Tickets
CREATE TABLE Tickets (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Status_Id INTEGER NOT NULL,
    Author_Id INTEGER NOT NULL,
    Created TEXT NOT NULL,
    Updated TEXT NOT NULL,
    FOREIGN KEY (Status_Id) REFERENCES Status(Id),
    FOREIGN KEY (Author_Id) REFERENCES Author(Id)
);
