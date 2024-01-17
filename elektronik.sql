-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2024 pada 21.36
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elektronik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(4) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `stok` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`) VALUES
('b01', 'televisi politron', 'Rp. 3.000.000', 30),
('b02', 'radio', 'Rp. 500.000', 10),
('b03', 'leptop asus', 'Rp. 7.000.000', 30),
('b04', 'setrika', 'Rp. 200.000', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_penjualan` char(4) NOT NULL,
  `tanggal_penjualan` datetime NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_penjualan`, `tanggal_penjualan`, `nama_pelanggan`, `total`) VALUES
('p01', '2024-01-16 09:33:12', 'yuga', 'Rp. 6.000.000'),
('p02', '2024-01-16 09:33:12', 'wahyu', 'Rp. 200.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` char(4) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `no_hp` int(13) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_hp`, `alamat`) VALUES
('u01', 'yuga', 987865748, 'subang'),
('u02', 'wahyu', 235686546, 'cimahi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_barang` char(4) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `qty` int(10) NOT NULL,
  `harga_satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_barang`, `nama_barang`, `qty`, `harga_satuan`) VALUES
('b01', 'televisi politron', 10, 'Rp. 3.000.000'),
('b04', 'setrika', 5, 'Rp. 200.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` char(4) NOT NULL,
  `id_barang` char(4) NOT NULL,
  `id_pelanggan` char(4) NOT NULL,
  `qty` int(4) NOT NULL,
  `total` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `id_pelanggan`, `qty`, `total`, `tanggal`) VALUES
('t01', 'b01', 'u01', 2, 'Rp. 6.000.000', '2024-01-16 09:31:19'),
('t02', 'b04', 'u02', 1, 'Rp. 200 000', '2024-01-16 09:31:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
