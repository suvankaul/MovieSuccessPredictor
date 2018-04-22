-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2018 at 07:07 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `director_name` varchar(18) DEFAULT NULL,
  `actor_1_name` varchar(20) DEFAULT NULL,
  `actor_2_name` varchar(20) DEFAULT NULL,
  `genres` varchar(11) DEFAULT NULL,
  `country` varchar(11) DEFAULT NULL,
  `budget` varchar(9) DEFAULT NULL,
  `imdb_score` decimal(2,1) DEFAULT NULL,
  `movie_facebook_likes` int(6) DEFAULT NULL,
  `hitFlop` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`director_name`, `actor_1_name`, `actor_2_name`, `genres`, `country`, `budget`, `imdb_score`, `movie_facebook_likes`, `hitFlop`) VALUES
('James Cameron', 'CCH Pounder', 'Joel David Moore', 'Action', 'USA', '237000000', '7.9', 33000, 'hit'),
('Gore Verbinski', 'Johnny Depp', 'Orlando Bloom', 'Fantasy', 'USA', '300000000', '7.1', 0, 'hit'),
('Sam Mendes', 'Christoph Waltz', 'Rory Kinnear', 'Thriller', 'UK', '245000000', '6.8', 85000, 'flop'),
('Christopher Nolan', 'Tom Hardy', 'Christian Bale', 'Action', 'USA', '250000000', '8.5', 164000, 'hit'),
('Doug Walker', 'Doug Walker', 'Rob Walker', 'Documentary', '', '', '7.1', 0, 'hit'),
('Andrew Stanton', 'Daryl Sabara', 'Samantha Morton', 'Sci-Fi', 'USA', '263700000', '6.6', 24000, 'flop'),
('Sam Raimi', 'J.K. Simmons', 'James Franco', 'Romance', 'USA', '258000000', '6.2', 0, 'flop'),
('Nathan Greno', 'Brad Garrett', 'Donna Murphy', 'Romance', 'USA', '260000000', '7.8', 29000, 'hit'),
('Joss Whedon', 'Chris Hemsworth', 'Robert Downey Jr.', 'Sci-Fi', 'USA', '250000000', '7.5', 118000, 'hit'),
('David Yates', 'Alan Rickman', 'Daniel Radcliffe', 'Mystery', 'UK', '250000000', '7.5', 10000, 'hit'),
('Zack Snyder', 'Henry Cavill', 'Lauren Cohan', 'Sci-Fi', 'USA', '250000000', '6.9', 197000, 'flop'),
('Bryan Singer', 'Kevin Spacey', 'Marlon Brando', 'Sci-Fi', 'USA', '209000000', '6.1', 0, 'flop'),
('Marc Forster', 'Giancarlo Giannini', 'Mathieu Amalric', 'Adventure', 'UK', '200000000', '6.7', 0, 'flop'),
('Gore Verbinski', 'Johnny Depp', 'Orlando Bloom', 'Fantasy', 'USA', '225000000', '7.3', 5000, 'hit'),
('Gore Verbinski', 'Johnny Depp', 'Ruth Wilson', 'Western', 'USA', '215000000', '6.5', 48000, 'flop'),
('Zack Snyder', 'Henry Cavill', 'Christopher Meloni', 'Sci-Fi', 'USA', '225000000', '7.2', 118000, 'hit'),
('Andrew Adamson', 'Peter Dinklage', 'Pierfrancesco Favino', 'Fantasy', 'USA', '225000000', '6.6', 0, 'flop'),
('Joss Whedon', 'Chris Hemsworth', 'Robert Downey Jr.', 'Sci-Fi', 'USA', '220000000', '8.1', 123000, 'hit'),
('Rob Marshall', 'Johnny Depp', 'Sam Claflin', 'Fantasy', 'USA', '250000000', '6.7', 58000, 'flop'),
('Barry Sonnenfeld', 'Will Smith', 'Michael Stuhlbarg', 'Sci-Fi', 'USA', '225000000', '6.8', 40000, 'flop'),
('Peter Jackson', 'Aidan Turner', 'Adam Brown', 'Fantasy', 'New Zealand', '250000000', '7.5', 65000, 'hit'),
('Marc Webb', 'Emma Stone', 'Andrew Garfield', 'Fantasy', 'USA', '230000000', '7.0', 56000, 'hit'),
('Ridley Scott', 'Mark Addy', 'William Hurt', 'Action', 'USA', '200000000', '6.7', 17000, 'flop'),
('Peter Jackson', 'Aidan Turner', 'Adam Brown', 'Fantasy', 'USA', '225000000', '7.9', 83000, 'hit'),
('Chris Weitz', 'Christopher Lee', 'Eva Green', 'Fantasy', 'USA', '180000000', '6.1', 0, 'flop'),
('Peter Jackson', 'Naomi Watts', 'Thomas Kretschmann', 'Romance', 'New Zealand', '207000000', '7.2', 0, 'hit'),
('James Cameron', 'Leonardo DiCaprio', 'Kate Winslet', 'Romance', 'USA', '200000000', '7.7', 26000, 'hit'),
('Anthony Russo', 'Robert Downey Jr.', 'Scarlett Johansson', 'Sci-Fi', 'USA', '250000000', '8.2', 72000, 'hit'),
('Peter Berg', 'Liam Neeson', 'Alexander Skarsgård', 'Thriller', 'USA', '209000000', '5.9', 44000, 'flop'),
('Colin Trevorrow', 'Bryce Dallas Howard', 'Judy Greer', 'Thriller', 'USA', '150000000', '7.0', 150000, 'hit'),
('Sam Mendes', 'Albert Finney', 'Helen McCrory', 'Action', 'UK', '200000000', '7.8', 80000, 'hit'),
('Sam Raimi', 'J.K. Simmons', 'James Franco', 'Romance', 'USA', '200000000', '7.3', 0, 'hit'),
('Shane Black', 'Robert Downey Jr.', 'Jon Favreau', 'Sci-Fi', 'USA', '200000000', '7.2', 95000, 'hit'),
('Tim Burton', 'Johnny Depp', 'Alan Rickman', 'Fantasy', 'USA', '200000000', '6.5', 24000, 'flop'),
('Brett Ratner', 'Hugh Jackman', 'Kelsey Grammer', 'Thriller', 'Canada', '210000000', '6.8', 0, 'flop'),
('Dan Scanlon', 'Steve Buscemi', 'Tyler Labine', 'Family', 'USA', '200000000', '7.3', 44000, 'hit'),
('Michael Bay', 'Glenn Morshower', 'Kevin Dunn', 'Sci-Fi', 'USA', '200000000', '6.0', 0, 'flop'),
('Michael Bay', 'Bingbing Li', 'Sophia Myles', 'Sci-Fi', 'USA', '210000000', '5.7', 56000, 'flop'),
('Sam Raimi', 'Tim Holmes', 'Mila Kunis', 'Fantasy', 'USA', '215000000', '6.4', 60000, 'flop'),
('Marc Webb', 'Emma Stone', 'Andrew Garfield', 'Sci-Fi', 'USA', '200000000', '6.7', 41000, 'flop'),
('Joseph Kosinski', 'Jeff Bridges', 'Olivia Wilde', 'Sci-Fi', 'USA', '170000000', '6.8', 30000, 'flop'),
('John Lasseter', 'Joe Mantegna', 'Thomas Kretschmann', 'Family', 'USA', '200000000', '6.3', 10000, 'flop'),
('Martin Campbell', 'Ryan Reynolds', 'Temuera Morrison', 'Action', 'USA', '200000000', '5.6', 24000, 'flop'),
('Lee Unkrich', 'Tom Hanks', 'John Ratzenberger', 'Fantasy', 'USA', '200000000', '8.3', 30000, 'hit'),
('McG', 'Christian Bale', 'Bryce Dallas Howard', 'Action', 'USA', '200000000', '6.6', 0, 'flop'),
('James Wan', 'Jason Statham', 'Paul Walker', 'Thriller', 'USA', '190000000', '7.2', 94000, 'hit'),
('Marc Forster', 'Peter Capaldi', 'Brad Pitt', 'Action', 'USA', '190000000', '7.0', 129000, 'hit'),
('Bryan Singer', 'Jennifer Lawrence', 'Peter Dinklage', 'Action', 'USA', '200000000', '8.0', 82000, 'hit'),
('J.J. Abrams', 'Benedict Cumberbatch', 'Bruce Greenwood', 'Sci-Fi', 'USA', '190000000', '7.8', 92000, 'hit'),
('Bryan Singer', 'Eddie Marsan', 'Ewen Bremner', 'Fantasy', 'USA', '195000000', '6.3', 22000, 'flop'),
('Baz Luhrmann', 'Leonardo DiCaprio', 'Elizabeth Debicki', 'Romance', 'Australia', '105000000', '7.3', 115000, 'hit'),
('Mike Newell', 'Jake Gyllenhaal', 'Richard Coyle', 'Romance', 'USA', '200000000', '6.6', 23000, 'flop'),
('Guillermo del Toro', 'Charlie Hunnam', 'Clifton Collins Jr.', 'Sci-Fi', 'USA', '190000000', '7.0', 83000, 'hit'),
('Michael Bay', 'Glenn Morshower', 'Lester Speight', 'Action', 'USA', '195000000', '6.3', 46000, 'flop'),
('Steven Spielberg', 'Harrison Ford', 'Ray Winstone', 'Fantasy', 'USA', '185000000', '6.2', 5000, 'flop'),
('Peter Sohn', 'A.J. Buckley', 'Jack McGraw', 'Adventure', 'USA', '', '6.8', 20000, 'flop'),
('Mark Andrews', 'Kelly Macdonald', 'John Ratzenberger', 'Adventure', 'USA', '185000000', '7.2', 39000, 'hit'),
('Justin Lin', 'Sofia Boutella', 'Melissa Roxburgh', 'Thriller', 'USA', '185000000', '7.5', 30000, 'hit'),
('Andrew Stanton', 'John Ratzenberger', 'Fred Willard', 'Sci-Fi', 'USA', '180000000', '8.4', 16000, 'hit'),
('Brett Ratner', 'Tzi Ma', 'Dana Ivey', 'Thriller', 'USA', '140000000', '6.2', 0, 'flop'),
('Roland Emmerich', 'Oliver Platt', 'Liam James', 'Sci-Fi', 'USA', '200000000', '5.8', 13000, 'flop'),
('Robert Zemeckis', 'Robin Wright', 'Colin Firth', 'Fantasy', 'USA', '200000000', '6.8', 0, 'flop'),
('Lana Wachowski', 'Channing Tatum', 'Mila Kunis', 'Sci-Fi', 'USA', '176000000', '5.4', 44000, 'flop'),
('David Yates', 'Christoph Waltz', 'Alexander Skarsgård', 'Romance', 'USA', '180000000', '6.6', 29000, 'flop');
