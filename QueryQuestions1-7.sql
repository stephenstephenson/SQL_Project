

[dbo].[CREATE_STEPHEN_STEPHENSONS_SQL_FINAL]


-- Display All Tables --

[dbo].[DISPLAY_ALL_TABLES]

-- #1 How many copies of the book titled 'The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? --

[dbo].[QUESTION_1]

-- #2 How many copies of the book titled "The Lost Tribe" are owned by each branch? --

[dbo].[QUESTION_2]


-- #3 Retrieve the names of all borrowers who do not have any books checked out --

[dbo].[QUESTION_3]


--#4 For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today retrieve the book title, the borrower's name, and the borrower's address.  *Auto populated dates, make note* --
-- Date_Out and Due_Date are randomly generated. They sometimes may not land on todays date for VALUE "DueDate", if that is not first achieved, re-build tables date tables by selecting DATE_RESET --
-- It generally generates a couple days on the given day, but sometimes does not, it was good practice in building a new data filling system though!  --

[dbo].[QUESTION_4]

[dbo].[DATE_RESET]

-- #5 For each library branch, retrieve the branch name and the total number of books loaned out from that branch. --

[dbo].[QUESTION_5]


-- #6 Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out. --

[dbo].[QUESTION_6]

-- #7 For each book authored (or co-authored by "Stephen King", retrieve the title and the number of copies owned by the libray branch whose name is "Central".

[dbo].[QUESTION_7]