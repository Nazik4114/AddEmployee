-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лип 12 2022 р., 14:35
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `employees`
--

-- --------------------------------------------------------

--
-- Структура таблиці `employees`
--

CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `employees`
--

INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES
(159, '0000-00-00', 'petro', 'petrov', 'M', '2022-08-05'),
(185, '0000-00-00', '1313', '131313', 'M', '2022-07-17'),
(495, '0000-00-00', '1212', '121212', 'F', '2022-07-12'),
(10001, '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26'),
(10002, '1964-06-02', 'Bezalel', 'Simmel', 'F', '1985-11-21'),
(10003, '1959-12-03', 'Parto', 'Bamford', 'M', '1986-08-28'),
(10004, '1954-05-01', 'Chirstian', 'Koblick', 'M', '1986-12-01'),
(10005, '1955-01-21', 'Kyoichi', 'Maliniak', 'M', '1989-09-12'),
(10006, '1953-04-20', 'Anneke', 'Preusig', 'F', '1989-06-02'),
(10007, '1957-05-23', 'Tzvetan', 'Zielinski', 'F', '1989-02-10'),
(10008, '1958-02-19', 'Saniya', 'Kalloufi', 'M', '1994-09-15'),
(10009, '1952-04-19', 'Sumant', 'Peac', 'F', '1985-02-18'),
(10010, '1963-06-01', 'Duangkaew', 'Piveteau', 'F', '1989-08-24'),
(10011, '1953-11-07', 'Mary', 'Sluis', 'F', '1990-01-22'),
(10012, '1960-10-04', 'Patricio', 'Bridgland', 'M', '1992-12-18'),
(10013, '1963-06-07', 'Eberhardt', 'Terkki', 'M', '1985-10-20'),
(10014, '1956-02-12', 'Berni', 'Genin', 'M', '1987-03-11'),
(10015, '1959-08-19', 'Guoxiang', 'Nooteboom', 'M', '1987-07-02'),
(10016, '1961-05-02', 'Kazuhito', 'Cappelletti', 'M', '1995-01-27'),
(10017, '1958-07-06', 'Cristinel', 'Bouloucos', 'F', '1993-08-03'),
(10018, '1954-06-19', 'Kazuhide', 'Peha', 'F', '1987-04-03'),
(10019, '1953-01-23', 'Lillian', 'Haddadi', 'M', '1999-04-30'),
(10020, '1952-12-24', 'Mayuko', 'Warwick', 'M', '1991-01-26'),
(10021, '1960-02-20', 'Ramzi', 'Erde', 'M', '1988-02-10'),
(10022, '1952-07-08', 'Shahaf', 'Famili', 'M', '1995-08-22'),
(10023, '1953-09-29', 'Bojan', 'Montemayor', 'F', '1989-12-17'),
(10024, '1958-09-05', 'Suzette', 'Pettey', 'F', '1997-05-19'),
(10025, '1958-10-31', 'Prasadram', 'Heyers', 'M', '1987-08-17'),
(10026, '1953-04-03', 'Yongqiao', 'Berztiss', 'M', '1995-03-20'),
(10027, '1962-07-10', 'Divier', 'Reistad', 'F', '1989-07-07'),
(10028, '1963-11-26', 'Domenick', 'Tempesti', 'M', '1991-10-22'),
(10029, '1956-12-13', 'Otmar', 'Herbst', 'M', '1985-11-20'),
(10030, '1958-07-14', 'Elvis', 'Demeyer', 'M', '1994-02-17'),
(10031, '1959-01-27', 'Karsten', 'Joslin', 'M', '1991-09-01'),
(10032, '1960-08-09', 'Jeong', 'Reistad', 'F', '1990-06-20'),
(10033, '1956-11-14', 'Arif', 'Merlo', 'M', '1987-03-18'),
(10034, '1962-12-29', 'Bader', 'Swan', 'M', '1988-09-21'),
(10035, '1953-02-08', 'Alain', 'Chappelet', 'M', '1988-09-05'),
(10036, '1959-08-10', 'Adamantios', 'Portugali', 'M', '1992-01-03'),
(10037, '1963-07-22', 'Pradeep', 'Makrucki', 'M', '1990-12-05'),
(10038, '1960-07-20', 'Huan', 'Lortz', 'M', '1989-09-20'),
(10039, '1959-10-01', 'Alejandro', 'Brender', 'M', '1988-01-19'),
(10040, '1959-09-13', 'Weiyi', 'Meriste', 'F', '1993-02-14'),
(10041, '1959-08-27', 'Uri', 'Lenart', 'F', '1989-11-12'),
(10042, '1956-02-26', 'Magy', 'Stamatiou', 'F', '1993-03-21'),
(10043, '1960-09-19', 'Yishay', 'Tzvieli', 'M', '1990-10-20'),
(10044, '1961-09-21', 'Mingsen', 'Casley', 'F', '1994-05-21'),
(10045, '1957-08-14', 'Moss', 'Shanbhogue', 'M', '1989-09-02'),
(10046, '1960-07-23', 'Lucien', 'Rosenbaum', 'M', '1992-06-20'),
(10047, '1952-06-29', 'Zvonko', 'Nyanchama', 'M', '1989-03-31');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
