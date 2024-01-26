-- Create a database (change 'MovieDatabase' to your preferred database name)
CREATE DATABASE IF NOT EXISTS MovieDatabase;
USE MovieDatabase;

-- Create 'Movie' table
CREATE TABLE IF NOT EXISTS Movie (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    StudioID INT,
    GenreID INT,
    Director VARCHAR(255),
    Releasedate DATE,
    Rating INT,
    FOREIGN KEY (StudioID) REFERENCES Studio(StudioID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

-- Create 'Genre' table
CREATE TABLE IF NOT EXISTS Genre (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    Genre VARCHAR(255),
    Studio VARCHAR(255)
);

-- Create 'Studio' table
CREATE TABLE IF NOT EXISTS Studio (
    StudioID INT AUTO_INCREMENT PRIMARY KEY,
    Studio VARCHAR(255),
    ProductionCompany VARCHAR(255),
    FilmingLocation VARCHAR(255)
);

-- Create 'User' table
CREATE TABLE IF NOT EXISTS User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    passwd VARCHAR(255),
    Username VARCHAR(255),
    Email VARCHAR(255),
    DateCreated DATE
);

-- Create 'Ratings' table
CREATE TABLE IF NOT EXISTS Ratings (
    RatingID INT AUTO_INCREMENT PRIMARY KEY,
    Value INT,
    MovieID INT,
    UserID INT,
    Comments VARCHAR(255),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);
