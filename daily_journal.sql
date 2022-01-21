CREATE TABLE Entries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    concept VARCHAR(30) NOT NULL,
    entry  VARCHAR(250) NOT NULL,
    mood_id INTEGER NOT NULL,
    date_time TEXT
);

CREATE TABLE Moods (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    label VARCHAR(10) NOT NULL
);


INSERT INTO Moods(label)
VALUES 
    ('Happy'),
    ('Sad'),
    ('Angry'),
    ('OK');

SELECT * FROM Moods;

INSERT INTO Entries(concept, entry, mood_id, date_time)
VALUES
    ("Javascript", "I learned about loops today. They can be a lot of fun.\nI learned about loops today. They can be a lot of fun.\nI learned about loops today. They can be a lot of fun.", 1, datetime('now', 'localtime')),
    ("Python", "Python is named after the Monty Python comedy group from the UK. I'm sad because I thought it was named after the snake", 4, datetime('now', 'localtime')),
    ("Python", "Why did it take so long for python to have a switch statement? It's much cleaner than if/elif blocks", 3, datetime('now', 'localtime')),
    ("Javascript", "Dealing with Date is terrible. Why do you have to add an entire package just to format a date. It makes no sense.", 3,  datetime('now', 'localtime'));

SELECT id, concept, entry, mood_id, date_time
FROM Entries;

SELECT * FROM Entries;

INSERT INTO Entries(concept, entry, mood_id, date_time)
VALUES
    ("Javascript", "Dealing with Date is terrible. Why do you have to add an entire package just to format a date. It makes no sense.", 3,  datetime('now', 'localtime'));


