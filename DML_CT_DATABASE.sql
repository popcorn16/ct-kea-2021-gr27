#DDL - Coderstrust Survey Database
#Herunder findes de basic scripts til at få et result-grid frem af alle fem tables.

SELECT * FROM Final_score;

SELECT * FROM Questions;

SELECT * FROM Survey;

SELECT * FROM Topics;

SELECT * FROM USER;


#Herunder ses et inner join script til at uddrage data fra "Final_score" samt "User" table.
#Vi har lavet en condition, således at alle brugere med en score på over 50% bliver grupperet.

SELECT User.user_id, User.user_gender, User.User_email , Final_score.Creative_score 
FROM User INNER JOIN Final_score
ON User.user_ID = Final_score.user_ID
WHERE Final_score.Creative_score > 50;

#For at effektivisere databasen, laves der "Views" som fungerer som en placeholder for scriptet.

#VIEW for Creative > 50% laves.
CREATE VIEW Creative AS
SELECT User.user_id, User.user_gender, User.User_email , Final_score.Creative_score 
FROM User INNER JOIN Final_score
ON User.user_ID = Final_score.user_ID
WHERE Final_score.Creative_score > 50;

#For at se view, bruges scriptet:
SELECT * FROM CT_survey2021.creative;

#VIEW for Development > 50% laves.
CREATE VIEW Development AS
SELECT User.user_id, User.user_gender, User.User_email , Final_score.Development_score 
FROM User INNER JOIN Final_score
ON User.user_ID = Final_score.user_ID
WHERE Final_score.Development_score > 50;

SELECT * FROM CT_survey2021.development;

#VIEW for Digital Marketing > 50% laves.
CREATE VIEW Digital_Marketing AS
SELECT User.user_id, User.user_gender, User.User_email , Final_score.Digital_Marketing_score 
FROM User INNER JOIN Final_score
ON User.user_ID = Final_score.user_ID
WHERE Final_score.Digital_Marketing_score > 50;

SELECT * FROM CT_survey2021.digital_marketing;
