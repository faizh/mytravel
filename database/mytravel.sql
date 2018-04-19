-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2018 pada 04.45
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_costumer`
--

CREATE TABLE `t_costumer` (
  `id` int(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `phone` int(16) NOT NULL,
  `gender` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_reservation`
--

CREATE TABLE `t_reservation` (
  `id` int(16) NOT NULL,
  `reservation_code` varchar(32) NOT NULL,
  `reservation_at` varchar(32) NOT NULL,
  `reservation_date` varchar(32) NOT NULL,
  `customerid` int(16) NOT NULL,
  `seat_code` varchar(16) NOT NULL,
  `ruteid` int(16) NOT NULL,
  `depart_at` varchar(32) NOT NULL,
  `price` int(16) NOT NULL,
  `userid` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_rute`
--

CREATE TABLE `t_rute` (
  `id` int(16) NOT NULL,
  `depart_at` varchar(32) NOT NULL,
  `rute_from` varchar(32) NOT NULL,
  `rute_to` varchar(32) NOT NULL,
  `price` int(16) NOT NULL,
  `transportationid` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transportasiontype`
--

CREATE TABLE `t_transportasiontype` (
  `id` int(16) NOT NULL,
  `description` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transportation`
--

CREATE TABLE `t_transportation` (
  `id` int(16) NOT NULL,
  `code` varchar(32) NOT NULL,
  `description` varchar(32) NOT NULL,
  `seat_qty` int(10) NOT NULL,
  `transportation_typeid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id` int(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_costumer`
--
ALTER TABLE `t_costumer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_reservation`
--
ALTER TABLE `t_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_rute`
--
ALTER TABLE `t_rute`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_transportasiontype`
--
ALTER TABLE `t_transportasiontype`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_transportation`
--
ALTER TABLE `t_transportation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
