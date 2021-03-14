#DDL - Coderstrust Survey Database
#Databasen oprettes
CREATE DATABASE CT_survey2021;

#Tables oprettes til de fem entiteter
CREATE TABLE `Survey` (
  `User_ID` Int,
  `User_Name` Varchar(55),
  `Question_1` Varchar(55),
  `Question_2` Varchar(55),
  `Question_3` Varchar(55),
  `Question_4` Varchar(55),
  `Question_5` Varchar(55),
  `Question_6` Varchar(55),
  `Question_7` Varchar(55),
  `Question_8` Varchar(55),
  `Question_9` Varchar(55),
  `Question_10` Varchar(55),
  `Question_11` Varchar(55),
  `Question_12` Varchar(55),
  `Creative_points` Varchar(2),
  `Development_points` Varchar(2),
  `DigMarketing_points` Varchar(2),
  KEY `Pk, Fk` (`User_ID`),
  KEY `Key` (`User_Name`, `Question_1`, `Question_2`, `Question_3`, `Question_4`, `Question_5`, `Question_6`, `Question_7`, `Question_8`, `Question_9`, `Question_10`, `Question_11`, `Question_12`, `Creative_points`, `Development_points`, `DigMarketing_points`)
);

CREATE TABLE `User` (
  `User_ID` Int,
  `User_First_name` Varchar(50),
  `User_Surname` Varchar(50),
  `User_DoB` Date,
  `User_Gender` Varchar(1),
  `User_Time_zone` Varchar(50),
  `User_email` Varchar(50),
  `Creative_score` Varchar(4),
  `Development_score` Varchar(4),
  `DigitalMarketing_score` Varchar(4),
  KEY `Pk` (`User_ID`),
  KEY `Key` (`User_First_name`, `User_Surname`, `User_DoB`, `User_Gender`, `User_Time_zone`, `User_email`),
  KEY `Fk` (`Creative_score`, `Development_score`, `DigitalMarketing_score`)
);

CREATE TABLE `Topics` (
  `Topic_ID` Varchar(1),
  `Topic_Name` Varchar(50),
  KEY `Pk` (`Topic_ID`),
  KEY `Key` (`Topic_Name`)
);

CREATE TABLE `Questions` (
  `Question_ID` Int,
  `Question_Name` Varchar(150),
  `Answer_A_topic` Varchar(1),
  `Answer_B_topic` Varchar(1),
  `Answer_C_topic` Varchar(1),
  `Value` Int,
  KEY `Pk` (`Question_ID`),
  KEY `Fk` (`Question_Name`, `Answer_A_topic`, `Answer_B_topic`, `Answer_C_topic`, `Value`)
);

CREATE TABLE `Final_score` (
  `User_ID` Int,
  `Creative_score` Varchar(4),
  `Development_score` Varchar(4),
  `Digital_Marketing_score` Varchar(4),
  KEY `Fk` (`User_ID`),
  KEY `Pk` (`Creative_score`, `Development_score`, `Digital_Marketing_score`)
);

