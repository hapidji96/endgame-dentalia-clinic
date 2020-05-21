-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 02:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `endgamedentaliaclinic2`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `appointment_code` varchar(50) NOT NULL,
  `treatment_type` varchar(20) NOT NULL,
  `timeslot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient_id`, `date`, `appointment_code`, `treatment_type`, `timeslot`) VALUES
(4, 4, '2020-09-01', '921360', 'Gum surgery', '01:00 PM - 02:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `dentalprocedure`
--

CREATE TABLE `dentalprocedure` (
  `procedure_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `procedure_name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dentalprocedure`
--

INSERT INTO `dentalprocedure` (`procedure_id`, `user_id`, `procedure_name`, `category`, `type`, `price`) VALUES
(1, 1, 'description', 'Dentist', 'Bonding', 200),
(2, 1, 'teeth problem', 'Dentist', 'Braces', 300),
(3, 1, 'Gingivitis', 'Dentist', 'Gum surgery', 500);

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hygienist`
--

CREATE TABLE `hygienist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_first_visit` date DEFAULT NULL,
  `date_last_visit` date DEFAULT NULL,
  `tel_number` varchar(12) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `marital_status` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `membership` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `username`, `password`, `firstname`, `lastname`, `dob`, `gender`, `date_first_visit`, `date_last_visit`, `tel_number`, `mobile_number`, `marital_status`, `address`, `membership`) VALUES
(3, 'ahmad', '11', 'Ahmad', 'Rizal', '1993-09-22', 'Male', '2019-03-22', '2019-06-11', '067144745', '0190985412', 'Single', 'Taman Ria\n51000 Kuala Lumpur\nWilayah Persekutuan Kuala Lumpur\n', 'Adult'),
(4, '', '', 'Nor', 'Siti', '1993-02-12', 'Female', '2019-02-22', '2019-06-11', '067148768', '0190743567', 'Married', 'Taman Ria\n51000 Kuala Lumpur\nWilayah Persekutuan Kuala Lumpur\n', 'Adult'),
(5, '', '', 'Yakoob', 'Harun', '1968-06-12', 'Male', '2018-09-13', '2018-09-13', '036746474', '019898987', 'Married', 'Jalan kenanga\n30122 Ampang\nSelangor', 'Senior Citizen'),
(7, '', '', 'Zulkarnain', 'Ahmad', '1980-02-01', 'Male', '2018-01-01', '2019-03-11', '0189876473', '0190987654', 'Single', 'Jalan ampang\n55100 Ampang\nKuala Lumpur', 'Adult'),
(8, '', '', '123', '123', '2020-09-19', 'Male', NULL, NULL, '123', '123', 'Single', '123', 'Adult');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `treatment_fee` double NOT NULL,
  `payment` double NOT NULL,
  `balance` double NOT NULL,
  `date` date NOT NULL,
  `paid_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `repairmachine`
--

CREATE TABLE `repairmachine` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `machine_no` varchar(11) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repairmachine`
--

INSERT INTO `repairmachine` (`id`, `user_id`, `machine_no`, `room_no`, `problem`, `date`) VALUES
(1, 1, 'adwa', 'daw', '12321', '2019-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `tel_number` int(12) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`user_id`, `username`, `password`, `name`, `address`, `tel_number`, `type`) VALUES
(1, 'ikram88', '11', 'ikram', '', 175243643, 'dental staff'),
(2, 'widad', '11', 'widad', '', 0, 'business manager'),
(3, 'nash', '11', 'nash', '', 187656776, 'receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `dentistincharge` int(11) NOT NULL,
  `otherfindings` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `treatment_record`
--

CREATE TABLE `treatment_record` (
  `id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `treatment` varchar(100) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_AppointmentPatient` (`patient_id`);

--
-- Indexes for table `dentalprocedure`
--
ALTER TABLE `dentalprocedure`
  ADD PRIMARY KEY (`procedure_id`),
  ADD KEY `FK_StaffProcedure` (`user_id`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hygienist`
--
ALTER TABLE `hygienist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_paymentHistory` (`patient_id`),
  ADD KEY `FK_payment` (`treatment_id`);

--
-- Indexes for table `repairmachine`
--
ALTER TABLE `repairmachine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_repairMachine` (`user_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PatientTreatment` (`patient_id`),
  ADD KEY `FK_DentistIncharge` (`dentistincharge`);

--
-- Indexes for table `treatment_record`
--
ALTER TABLE `treatment_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_TreatmentRecord` (`treatment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dentalprocedure`
--
ALTER TABLE `dentalprocedure`
  MODIFY `procedure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dentist`
--
ALTER TABLE `dentist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hygienist`
--
ALTER TABLE `hygienist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repairmachine`
--
ALTER TABLE `repairmachine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment_record`
--
ALTER TABLE `treatment_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FK_AppointmentPatient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dentalprocedure`
--
ALTER TABLE `dentalprocedure`
  ADD CONSTRAINT `FK_StaffProcedure` FOREIGN KEY (`user_id`) REFERENCES `staff` (`user_id`);

--
-- Constraints for table `dentist`
--
ALTER TABLE `dentist`
  ADD CONSTRAINT `dentist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `staff` (`user_id`);

--
-- Constraints for table `hygienist`
--
ALTER TABLE `hygienist`
  ADD CONSTRAINT `hygienist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `staff` (`user_id`);

--
-- Constraints for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD CONSTRAINT `FK_payment` FOREIGN KEY (`treatment_id`) REFERENCES `treatment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_paymentHistory` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `repairmachine`
--
ALTER TABLE `repairmachine`
  ADD CONSTRAINT `FK_repairMachine` FOREIGN KEY (`user_id`) REFERENCES `staff` (`user_id`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `FK_DentistIncharge` FOREIGN KEY (`dentistincharge`) REFERENCES `staff` (`user_id`),
  ADD CONSTRAINT `FK_PatientTreatment` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treatment_record`
--
ALTER TABLE `treatment_record`
  ADD CONSTRAINT `FK_TreatmentRecord` FOREIGN KEY (`treatment_id`) REFERENCES `treatment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
