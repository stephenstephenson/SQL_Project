CREATE PROCEDURE CREATE_STEPHEN_STEPHENSONS_SQL_FINAL
AS
BEGIN

-- Thank you for viewing my source code, this initiates the database --
DROP DATABASE LibraryDatabaseProject
CREATE DATABASE LibraryDatabaseProject;

-- Following includes creation and population of tables, dates were randomly generated, and sometimes may not land on todays date for VALUE "DueDate", if that is not first achieved, re-build tables --
-- It generally generates a couple days on the given day, but sometimes does not, it was good practice in building a new data filling system though!  --

DROP TABLE BOOK;
CREATE TABLE BOOK (
	book_id int IDENTITY(1,1) PRIMARY KEY,
	book_title varchar(200) NOT NULL,
	publisher_name varchar(250),
);

INSERT INTO BOOK (book_title, publisher_name)
VALUES
('Pride and Prejudice', 'Dover Publications'),
('Moby Dick', 'Richard Bentley'),
('Dracula', 'Constable and Robinson'),
('The Romance of Lust', 'CreateSpace Independent Publishing'),
('The Adventures of Tom Sawyer', 'American Publishing Company'),
('Heart of Darkness', 'Blackwood Magazine'),
('The Adventures of Sherlock Holmes', 'George Newnes'),
('Frankenstein', 'Lackington Publishing'),
('The Iliad', 'Simon and Schuster'),
('A Tale of Two Cities', 'Chapman and Hall'), 
('The Blazing-World', 'Penguin Classics'),
('Sappho', 'Shambhala'),
('Treasure Island', 'Cassell'),
('War and Peace', 'Vintage Classics'),
('Emma', 'Penguin Classics'),
('The Importance of Being Earnest', 'Dover Publications'),
('The Picture of Dorian Gray', 'Roads Classics'),
('IT', 'Scribner'),
('Cujo', 'Gallery Books'),
('The Lost Tribe', 'Picador USA')
;

DROP TABLE PUBLISHER;
CREATE TABLE PUBLISHER (
	name varchar(150) NOT NULL,
	address varchar(150) NOT NULL,
	phone varchar(50) NOT NULL
);

INSERT INTO PUBLISHER (name, address, phone)
VALUES
('Dover Publications', '31 EAST 2ND STREET, MINEOLA, NY', '(312)693-7840'),
('Richard Bentley', '8 NEW BURLINGTON PLACE, MAYFAIR, UK', '(430)987-1273'),
('Constable and Robinson', 'RUSSEL SQUARE, LONDON', '(303)465-6689'),
('CreateSpace Independent Publishing', '4900 LACROSS ROAD, NORTH CHALRESTON, SC', '(773)454-6954'),
('American Publishing Company', '41 MADISON AVENUE, NEW YORK, NEW YORK', '(458)216-9055'),
('Blackwood Magazine', 'EDINBURGH, SCOTLAND', '(210)897-5473'),
('George Newnes LTD', 'MANCHESTER, ENGLAND', '(316)602-5067'),
('Lackington Publishing', '46 CHISWELL STREET FINSBURY SQUARE, ENGLAND', '(682)738-2197'),
('Simon and Schuster', '1230 AVENUE OF THE AMERICAS, NEW YORK, NEW YORK', '(671)642-5348'),
('Penguin Classics', 'WESTMINSTER, LONDON, ENGLAND', '(610)893-8967'),
('Shambhala', '4720 WALNUT ST, BOULDER, CO 80301', '(561)227-6997'),
('Cassell', 'VICTORIA EMBANKMENT, LONDON, ENGLAND', '(646)206-5254'),
('Vintage Classics', 'NEW YORK, NEW YORK', '(304)227-4657'),
('Penguin Classics', 'WESTMINSTER, LONDON, ENGLAND', '(214)969-4717'),
('Dover Publications', '31 EAST 2ND STREET, MINEOLA, NY', '(208)886-9564'),
('Roads Classics', '323 VERMONT AVENUE, PRINCETON, NJ', '(209)774-3514'),
('Scribner', '153-157 FIFTH AVENUE, NEW YORK, NEW YORK', '(315)395-5306'),
('Gallery Books', '369 PLUMB BRANCH STREET, SODDY DAISY, TN', '(718)231-6683'),
('Picador USA', '756 WEST BISHOP STREET, SANTA CRUZ, CA', '(262)748-1350')
;

DROP TABLE BOOK_AUTHORS;
CREATE TABLE BOOK_AUTHORS (
	book_id int IDENTITY(1,1),
	author_name varchar(100)
);

INSERT INTO BOOK_AUTHORS (author_name)
VALUES
('Jane Austen'),
('Herman Melville'),
('Bram Stoker'),
('Anonymous'),
('Mark Twain'),
('Joseph Conrad'),
('Arthur Conan Doyle'),
('Mary Wollstonecraft Shelley'),
('Homer'),
('Charles Dickens'), 
('Duchess of Margaret Cavendish Newcastle'),
('Henry Thornton Wharton'),
('Robert Louis Stevenson'),
('graf Leo Tolstoy'),
('Jane Austen'),
('Oscar Wilde'),
('Oscar Wilde'),
('Stephen King'),
('Stephen King'),
('Mark Lee')
;

DROP TABLE BOOK_COPIES;
CREATE TABLE BOOK_COPIES (
	book_id int,
	branch_id int NOT NULL,
	no_of_copies int
);

INSERT INTO BOOK_COPIES (book_id, branch_id, no_of_copies)
VALUES
(1, '1', '3'),
(2, '1', '10'),
(3, '1', '8'),
(4, '1', '1'),
(5, '1', '3'),
(6, '1', '6'),
(7, '1', '6'),
(8, '1', '8'),
(9, '1', '2'),
(10, '1', '1'),
(11, '1', '1'),
(12, '1', '3'),
(13, '1', '8'),
(14, '1', '4'),
(15, '1', '1'),
(16, '1', '2'),
(17, '1', '2'),
(18, '1', '3'),
(19, '1', '5'),
(20, '1', '6'),
(1, '2', '1'),
(2, '2', '14'),
(3, '2', '2'),
(4, '2', '8'),
(5, '2', '3'),
(6, '2', '11'),
(7, '2', '14'),
(8, '2', '2'),
(9, '2', '13'),
(10, '2', '3'),
(11, '2', '1'),
(12, '2', '4'),
(13, '2', '5'),
(14, '2', '5'),
(15, '2', '1'),
(16, '2', '2'),
(17, '2', '9'),
(18, '2', '11'),
(19, '2', '13'),
(20, '2', '10'),
(1, '3', '9'),
(2,'3', '40'),
(3, '3', '10'),
(4, '3', '3'),
(5, '3', '6'),
(6, '3', '8'),
(7, '3', '29'),
(8, '3', '21'),
(9, '3', '11'),
(10, '3', '21'),
(11, '3', '12'),
(12, '3', '13'),
(13, '3', '20'),
(14, '3', '1'),
(15, '3', '2'),
(16, '3', '5'),
(17, '3', '8'),
(18, '3', '12'),
(19, '3', '13'),
(20, '3', '8'),
(1, '4', '11'),
(2, '4', '12'),
(4, '4', '20'),
(4, '4', '22'),
(5, '4', '26'),
(6, '4', '28'),
(7, '4', '12'),
(8, '4', '23'),
(9, '4', '28'),
(10, '4', '29'),
(11, '4', '28'),
(12, '4', '19'),
(13, '4', '12'),
(14, '4', '22'),
(15, '4', '23'),
(16, '4', '28'),
(17, '4', '5'),
(18, '4', '9'),
(19, '4', '12'),
(20, '4', '29')
;

DROP TABLE BORROWER;
CREATE TABLE BORROWER (
	card_no int,
	name varchar(150) NOT NULL,
	address varchar(200) NOT NULL,
	phone varchar(50) NOT NULL
);

INSERT INTO BORROWER (card_no, name, address, phone)
VALUES
(2, 'Patrik Houtkooper', '489 North Hill Field Court, Sioux Falls, SD 57103', '(559) 589-2003'),
(472, 'Patrik Houtkooper', '489 North Hill Field Court, Sioux Falls, SD 57103', '(559) 589-2003'),
(482, 'Patrik Houtkooper', '489 North Hill Field Court, Sioux Falls, SD 57103', '(559) 589-2003'),
(492, 'Patrik Houtkooper', '489 North Hill Field Court, Sioux Falls, SD 57103', '(559) 589-2003'),
(502, 'Patrik Houtkooper', '489 North Hill Field Court, Sioux Falls, SD 57103', '(559) 589-2003'),
(1, 'Jim Hanson', '89 South Tracy Avenue, New York, New York 54883', '(902) 366-2456'),
(12, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(402, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(412, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(422, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(432, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(442, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(452, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(462, 'Bethanie Draper', '168 Clinton Ave., Northville, MI 48167', '(755) 217-2124'),
(22, 'Agneza Stephens', '8502 Beaver Ridge Street, Freehold, NJ 07728', '(445) 460-8248'),
(102, 'Agneza Stephens', '8502 Beaver Ridge Street, Freehold, NJ 07728', '(445) 460-8248'),
(112, 'Agneza Stephens', '8502 Beaver Ridge Street, Freehold, NJ 07728', '(445) 460-8248'),
(122, 'Agneza Stephens', '8502 Beaver Ridge Street, Freehold, NJ 07728', '(445) 460-8248'),
(132, 'Agneza Stephens', '8502 Beaver Ridge Street, Freehold, NJ 07728', '(445) 460-8248'),
(32, 'Raynard Wilkie', '650 Young Court, Dorchester Center, MA 02124', '(622) 273-7114'),
(382, 'Raynard Wilkie', '650 Young Court, Dorchester Center, MA 02124', '(622) 273-7114'),
(392, 'Raynard Wilkie', '650 Young Court, Dorchester Center, MA 02124', '(622) 273-7114'),
(42, 'Sabina Jepson', '30 Vine St., Phoenixville, PA 19460', '(233) 303-1526'),
(142, 'Sabina Jepson', '30 Vine St., Phoenixville, PA 19460', '(233) 303-1526'),
(52, 'Malene Abbingh', '8055 Longfellow Lane, Pickerington, OH 43147', '(506) 858-6808'),
(11, 'Angela Stephens', '502 Bear Ridge, Hold, NJ 07723', '(445) 447-8254'),
(62, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(312, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(322, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(332, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(342, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(352, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(362, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(372, 'Peter Wynne', '9126 Mountainview Dr., Enfield, CT 06082', '(533) 311-5474'),
(72, 'Valerie Rijnder', '755 Greystone Ave., San Diego, CA 92111', '(488) 874-1752'),
(282, 'Valerie Rijnder', '755 Greystone Ave., San Diego, CA 92111', '(488) 874-1752'),
(292, 'Valerie Rijnder', '755 Greystone Ave., San Diego, CA 92111', '(488) 874-1752'),
(302, 'Valerie Rijnder', '755 Greystone Ave., San Diego, CA 92111', '(488) 874-1752'),
(82, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(202, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(222, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(232, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(242, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(252, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(262, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(272, 'Nelle Burrell', '743 Livingston Street, Hamden, CT 06514', '(292) 407-1288'),
(21, 'Nicholas Burrell', '3 Longway Street, Hall Court, CT 06517', '(292) 507-1388'),
(152, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(162, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(172, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(182, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(192, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(152, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(162, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(172, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(512, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(522, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(532, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(542, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(552, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(562, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(572, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(582, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(592, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(602, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(612, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(622, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(632, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(642, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(652, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(662, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(672, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(682, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(692, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(702, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(712, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(722, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(732, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(742, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(752, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(762, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(772, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(782, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114'),
(792, 'Maineville University', '9745 University St., Maineville, OH 45039', '(822) 697-6114')
;

DROP TABLE BRANCH;
CREATE TABLE BRANCH (
	branch_id int IDENTITY(1,1),
	branch_name varchar(100) NOT NULL,
	address varchar(100) NOT NULL
);

INSERT INTO BRANCH (branch_name, address)
VALUES
('Central', '4508 Kincheloe Road, Portland Oregon'),
('Sharpstown', '296 Michigan Avenue, Sharpstown Texas '),
('Portland', '3064 Gateway Road, Portland Oregon'), 
('Beaverton', '12375 SW 5th Street, Beaverton Oregon')
;

DROP TABLE BOOK_LOANS;
CREATE TABLE BOOK_LOANS (
	book_id int NOT NULL,
	branch_id int NOT NULL,
	card_no int IDENTITY(2,10),
	date_out date NULL,
	due_date date NULL,
);

INSERT INTO BOOK_LOANS (book_id, branch_id)
VALUES
(1, '1'),
(2, '1'),
(3, '1'),
(4, '1'),
(5, '1'),
(6, '1'),
(7, '1'),
(8, '1'),
(9, '1'),
(10, '1'),
(11, '1'),
(12, '1'),
(13, '1'),
(14, '1'),
(15, '1'),
(16, '1'),
(17, '1'),
(18, '1'),
(19, '1'),
(20, '1'),
(1, '2'),
(2, '2'),
(3, '2'),
(4, '2'),
(5, '2'),
(6, '2'),
(7, '2'),
(8, '2'),
(9, '2'),
(10, '2'),
(11, '2'),
(12, '2'),
(13, '2'),
(14, '2'),
(15, '2'),
(16, '2'),
(17, '2'),
(18, '2'),
(19, '2'),
(20, '2'),
(1, '3'),
(2,'3'),
(3, '3'),
(4, '3'),
(5, '3'),
(6, '3'),
(7, '3'),
(8, '3'),
(9, '3'),
(10, '3'),
(11, '3'),
(12, '3'),
(13, '3'),
(14, '3'),
(15, '3'),
(16, '3'),
(17, '3'),
(18, '3'),
(19, '3'),
(20, '3'),
(1, '4'),
(2, '4'),
(3, '4'),
(4, '4'),
(5, '4'),
(6, '4'),
(7, '4'),
(8, '4'),
(9, '4'),
(10, '4'),
(11, '4'),
(12, '4'),
(13, '4'),
(14, '4'),
(15, '4'),
(16, '4'),
(17, '4'),
(18, '4'),
(19, '4'),
(20, '4')
;
-- Instead of populating the date fields with random hand input data these two UPDATEs inject random dates within a certain range into the columns of Date_Out and Due_Date --

UPDATE BOOK_LOANS
SET date_out = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 30), '2018-5-28')
WHERE date_out IS NULL
;

UPDATE BOOK_LOANS
SET due_date = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 30), '2018-06-28')
WHERE due_date IS NULL
;

END
GO





 --	QUERIES --
 
-- #1 How many copies of the book titled 'The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? --

CREATE PROCEDURE QUESTION_1
AS
BEGIN
SELECT no_of_copies as 'NUMBER OF BOOKS TITLED "THE LOST TRIBE" IN BRANCH "SHARPSTOWN"' FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK.book_id = BOOK_COPIES.book_id
INNER JOIN BRANCH ON BRANCH.branch_id = BOOK_COPIES.branch_id
WHERE BOOK.book_title = 'The Lost Tribe' AND BRANCH.branch_name = 'Sharpstown'
;
END
GO

-- #2 How many copies of the book titled "The Lost Tribe" are owned by each branch? --

CREATE PROCEDURE QUESTION_2
AS
BEGIN
SELECT no_of_copies AS 'NUMBER OF COPIES', branch_name AS 'BRANCH NAME' FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK.book_id = BOOK_COPIES.book_id
INNER JOIN BRANCH ON BRANCH.branch_id = BOOK_COPIES.branch_id
WHERE BOOK.book_title = 'The Lost Tribe'
;
END
GO
-- #3 Retrieve the names of all borrowers who do not have any books checked out --

CREATE PROCEDURE QUESTION_3
AS
BEGIN
SELECT name AS 'BORROWERS WITH NO CHECKED OUT BOOKS' FROM BOOK_LOANS
RIGHT OUTER JOIN BORROWER ON BOOK_LOANS.card_no = BORROWER.card_no
WHERE date_out IS NULL
;
END
GO

--#4 For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today retrieve the book title, the borrower's name, and the borrower's address.  *Auto populated dates, make note* --

CREATE PROCEDURE QUESTION_4
AS
BEGIN
SELECT book_title AS 'BOOK TITLE', BORROWER.name AS 'BORROWER NAME', BORROWER.address AS 'BORROWER ADDRESS' FROM BOOK
INNER JOIN BOOK_LOANS ON BOOK.book_id = BOOK_LOANS.book_id
INNER JOIN BORROWER ON BOOK_LOANS.card_no = BORROWER.card_no
INNER JOIN BRANCH ON BOOK_LOANS.branch_id = BRANCH.branch_id
WHERE BRANCH.branch_name = 'Sharpstown' AND BOOK_LOANS.due_date = '2018-06-28'
;
END
GO

-- #5 For each library branch, retrieve the branch name and the total number of books loaned out from that branch. --

CREATE PROCEDURE QUESTION_5
AS
BEGIN
SELECT BRANCH.branch_name AS 'BRANCH', COUNT(BRANCH.branch_id) AS 'QUANTITY AT EACH BRANCH'
FROM BRANCH
INNER JOIN BOOK_LOANS ON BRANCH.branch_id = BOOK_LOANS.branch_id
INNER JOIN BOOK ON BOOK_LOANS.book_id = BOOK.book_id
GROUP BY BRANCH.branch_name
;
END
GO

-- #6 Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out. --

CREATE PROCEDURE QUESTION_6
AS
BEGIN
SELECT BORROWER.name AS 'BORROWER NAME', BORROWER.address AS 'BORROWER ADDRESS', COUNT(BORROWER.name) AS 'QUANTITY OF BOOKS BORROWED'
FROM BORROWER
GROUP BY BORROWER.name, BORROWER.address
HAVING COUNT(BORROWER.name) > 5
;
END
GO
-- #7 For each book authored (or co-authored by "Stephen King", retrieve the title and the number of copies owned by the libray branch whose name is "Central".

CREATE PROCEDURE QUESTION_7
AS
BEGIN
SELECT BOOK.book_title AS 'BOOK TITLE', no_of_copies AS 'TOTAL COPIES' FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK_COPIES.book_id = BOOK.book_id
INNER JOIN BOOK_AUTHORS ON BOOK.book_id = BOOK_AUTHORS.book_id
INNER JOIN BRANCH ON BOOK_COPIES.branch_id = BRANCH.branch_id
WHERE author_name = 'Stephen King' AND BRANCH.branch_name = 'Central'
;
END
GO

-- Display All Available Tables --

CREATE PROCEDURE DISPLAY_ALL_TABLES
AS
BEGIN

SELECT * FROM BOOK;
SELECT * FROM PUBLISHER;
SELECT * FROM BOOK_AUTHORS;
SELECT * FROM BOOK_COPIES;
SELECT * FROM BORROWER;
SELECT * FROM BRANCH;
SELECT * FROM BOOK_LOANS;

END
GO
