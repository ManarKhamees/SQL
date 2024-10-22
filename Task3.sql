CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(20),
    email VARCHAR(20) UNIQUE,
    phone_number int,
    birthdate DATE,
    password VARCHAR(20)
);


CREATE TABLE Messages (
    message_id INT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    message_text TEXT,
    sent_at DATETIME,
    FOREIGN KEY (sender_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES Users(user_id)
);


CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(20),
    service_description TEXT,
    service_price DECIMAL(10, 2)
);


CREATE TABLE UserServices (
    user_service_id INT PRIMARY KEY,
    user_id INT,
    service_id INT,
    purchase_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);


CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    user_id INT,
    service_id INT,
    payment_amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);

---------------------------------------------------------------------------
-------------------------------- The Inserts ------------------------------
-- Users Table
INSERT INTO Users VALUES (1, 'Ali', 'Ali@gmail.com', 0771234567, '1990-01-01', 'password1');
INSERT INTO Users VALUES (2, 'Ahmad', 'Ahmad@gmail.com', 0781234567, '1985-05-15', 'password2');
INSERT INTO Users VALUES (3, 'Leen', 'Leen@gmail.com', 0791234567, '1993-10-30', 'password3');
INSERT INTO Users VALUES (4, 'Lana', 'Lana@gmail.com', 0772345678, '1995-12-21', 'password4');
INSERT INTO Users VALUES (5, 'Mahmoud', 'Mahmoud@gmail.com', 0782345678, '1975-07-25', 'password5');
INSERT INTO Users VALUES (6, 'Marah', 'Marah@gmail.com', 0792345678, '1991-11-11', 'password6');


-- Messages Table
INSERT INTO Messages VALUES (1, 1, 2, 'Hello!!', '2024-10-15 10:00:00');
INSERT INTO Messages VALUES (2, 2, 1, 'Hi!!', '2024-10-15 10:05:00');
INSERT INTO Messages VALUES (3, 3, 4, 'How are you?!', '2024-10-16 08:30:00');
INSERT INTO Messages VALUES (4, 4, 3, 'I am good!!', '2024-10-16 08:32:00');
INSERT INTO Messages VALUES (5, 5, 6, 'Good morning!!', '2024-10-17 09:15:00');
INSERT INTO Messages VALUES (6, 6, 5, 'Bonjour!!', '2024-10-17 09:20:00');


-- Services Table
INSERT INTO Services VALUES (1, 'Premium Messaging', 'Send unlimited messages.', 9.99);
INSERT INTO Services VALUES (2, 'File Sharing', 'Share files with other users.', 5.99);
INSERT INTO Services VALUES (3, 'Ad-Free Experience', 'Use the app without ads.', 3.99);
INSERT INTO Services VALUES (4, 'Voice Calls', 'Make voice calls to other users.', 7.99);
INSERT INTO Services VALUES (5, 'Video Calls', 'Make video calls to other users.', 8.99);
INSERT INTO Services VALUES (6, 'Custom Themes', 'Use custom themes in the app.', 2.99);


-- UserServices Table
INSERT INTO UserServices VALUES (1, 1, 1, '2024-10-01');
INSERT INTO UserServices VALUES (2, 2, 2, '2024-10-02');
INSERT INTO UserServices VALUES (3, 3, 3, '2024-10-03');
INSERT INTO UserServices VALUES (4, 4, 4, '2024-10-04');
INSERT INTO UserServices VALUES (5, 5, 5, '2024-10-05');
INSERT INTO UserServices VALUES (6, 6, 6, '2024-10-06');


-- Payments Table
INSERT INTO Payments VALUES (1, 1, 1, 9.99, '2024-10-01');
INSERT INTO Payments VALUES (2, 2, 2, 5.99, '2024-10-02');
INSERT INTO Payments VALUES (3, 3, 3, 3.99, '2024-10-03');
INSERT INTO Payments VALUES (4, 4, 4, 7.99, '2024-10-04');
INSERT INTO Payments VALUES (5, 5, 5, 8.99, '2024-10-05');
INSERT INTO Payments VALUES (6, 6, 6, 2.99, '2024-10-06');


---------------------------------------------------------------------------
-------------------------------- The Updates ------------------------------
/*
UPDATE Users SET phone_number = 0777777777 WHERE user_id = 1;
UPDATE Users SET phone_number = 0788888888 WHERE user_id = 2;
*/


---------------------------------------------------------------------------
------------------------------- The Deletions -----------------------------
/*
DELETE FROM Messages WHERE message_id = 3;
DELETE FROM Messages WHERE message_id = 4;
*/


---------------------------------------------------------------------------
----------------------------- The Modifications ---------------------------
-- Tables Names :
/*
ALTER TABLE Users RENAME TO AppUsers;
ALTER TABLE Messages RENAME TO UserMessages;
*/

-- Columns Names :
/*
-- Rename and change datatype of birthdate in AppUsers
ALTER TABLE AppUsers 
    ALTER COLUMN birthdate VARCHAR(20);
------------------
-- Rename and change datatype of sent_at in UserMessages
ALTER TABLE UserMessages 
    ALTER COLUMN sent_at DATE;
*/