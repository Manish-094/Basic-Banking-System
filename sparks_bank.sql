-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: jan, 2022 at 6:00 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
('1', 'Manish', 'Sunny', '5000', current_timestamp()),
('2', 'krishna', 'deepak', '4500', current_timestamp()),
('3', 'Manish', 'Adil', '3000', current_timestamp()),
('4', 'Kamlesh', 'Manish', '2000', current_timestamp()),
('5', 'Ram', 'Mahesh', '1000', current_timestamp()),
('6', 'Namami', 'Nupur', '6000', current_timestamp());

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
('1', 'Subham', 'subham12@gmail.com', '1000'),
('2', 'Sunny', 'sunny13@gmail.com', '2000'),
('3', 'Manish', 'manish14@gmail.com', '3000'),
('4', 'Ram', 'ram15@gmail.com', '4000'),
('5', 'Adil', 'adil17@gmail.com', '6000'),
('6', 'Deepak', 'deepak@gmail.com', '7000'),
('7', 'Kamlesh', 'kamlesh19@gmail.com', '8000'),
('8', 'Juhi', 'juhi23@gmail.com', '9000'),
('9', 'Manish', 'manish14@gmail.com', '5500'),
('10', 'Nupur', 'nupur27@gmail.com', '6500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;