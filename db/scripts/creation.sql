DROP TABLE IF EXISTS Tickets;
DROP TABLE IF EXISTS Status;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS TicketStatus;
DROP TABLE IF EXISTS TicketType;
DROP TABLE IF EXISTS UserRole;

-- Foreign-Key-Unterstützung aktivieren (wichtig bei SQLite!)
PRAGMA foreign_keys = ON;

-- Tabelle: Author
CREATE TABLE User (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Firstname TEXT NOT NULL,
    Lastname TEXT NOT NULL,
    Role_Id INTEGER NOT NULL,
    FOREIGN KEY (Role_Id) REFERENCES UserRole(Id)
);

-- Tabelle: Status
CREATE TABLE TicketStatus (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Text TEXT NOT NULL UNIQUE
);

-- Tabelle: Tickets
CREATE TABLE Tickets (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    TicketType_Id INTEGER NOT NULL,
    Status_Id INTEGER NOT NULL,
    User_Id INTEGER NOT NULL,
    Created TEXT NOT NULL,
    Updated TEXT NOT NULL,
    FOREIGN KEY (Status_Id) REFERENCES TicketStatus(Id),
    FOREIGN KEY (TicketType_Id) REFERENCES TicketType(Id),
    FOREIGN KEY (User_Id) REFERENCES User(Id)
);

CREATE TABLE TicketType (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Text TEXT NOT NULL UNIQUE
);

-- Tabelle: UserRole
CREATE TABLE UserRole (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Text TEXT NOT NULL UNIQUE
);
