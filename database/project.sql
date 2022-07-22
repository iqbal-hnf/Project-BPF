-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Waktu pembuatan: 22 Jul 2022 pada 03.30
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses`
--

CREATE TABLE `akses` (
  `id_akses` int(11) NOT NULL,
  `nama_akses` varchar(25) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akses`
--

INSERT INTO `akses` (`id_akses`, `nama_akses`, `deskripsi`) VALUES
(1, 'administrator', 'sebagai  pengelola kendali penuh pada sistem aplikasi'),
(2, 'Asisten admin', 'sebagai pengelola sistem stok barang, penjualan dan laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`) VALUES
(1, 'MANDIRI'),
(2, 'BNI'),
(3, 'BCA'),
(4, 'BRI'),
(5, 'CIMB Niaga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `harga` int(20) NOT NULL,
  `foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_kategori`, `ukuran`, `harga`, `foto`) VALUES
(73, 'Komputer Gaming Asus Rog G15CK', 30, ' 1', 17800000, '8e4ea8017b01f9d27b43f9b84a9f29d8.jpg'),
(74, 'Komputer Gaming Lenovo Legion ', 30, '2', 15600000, '2bb1dafc65c05078bdf4abb5a6a05c3d.jpg'),
(75, 'Laptop Lenovo Ideapad Gaming 3', 29, ' 3', 13000000, '8dc12b4ac666e07b03eb7f8d246db715.jpg'),
(76, 'Keyboard Vortex Series VX5 ', 21, ' 1', 550000, '4579fc88ce7012b779a95e7520644fca.jpg'),
(77, 'Amd Ryzen 9 ', 22, ' 1', 9800000, '00aa410fff87ea8677934a0fcce0ffa5.jpg'),
(78, 'Gigabyte Nvidia Geforce RTX 30', 21, '1', 14800000, '9ab93a97197409fdcfd76f3e9a56b4af.jpg'),
(79, 'Samsung T55 Curved 27\"', 24, ' 1', 3200000, '978a3170317bf8e8edfef12f131ea3e0.jpg'),
(80, 'Venom RX Skywkalker', 25, ' 2', 480000, '44f0104b15914311af4281310e574ca1.jpg'),
(81, 'Ram Tridentz RGB 16 Gb (8x2) ', 26, ' 1', 1100000, 'cf31eeedc18f63a1b216a26b096de70b.jpg'),
(82, 'SSD Adata Spectrix RGB 500GB', 27, ' 1', 780000, 'ac0e3b17d5c44c8fe22e82166c21a146.jpg'),
(83, 'Kabel Belden Cat 5E', 28, ' 3', 1200000, 'c1ce37ae323f1c1d8012c6c3b3766be1.jpg'),
(84, 'Kabel HDMI 5 Meter', 28, ' 1', 80000, 'b4f4c1b2c409d2dd119038a8c060d5be.jpg'),
(85, 'Kabel UTP', 28, ' 4', 12000, 'eefa57bb5c7b297b863acd472b33c2ff.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(11) NOT NULL,
  `no_trf` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(35) NOT NULL,
  `totalpure` bigint(20) NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `diskon` int(3) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembalian` bigint(20) NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `tgl_trf` date NOT NULL,
  `jam_trf` time NOT NULL,
  `id_pembayaran` int(2) NOT NULL,
  `no_rek` int(18) DEFAULT NULL,
  `atas_nama` varchar(35) NOT NULL,
  `id_bank` int(2) DEFAULT NULL,
  `operator` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `no_trf`, `nama_pelanggan`, `totalpure`, `grand_total`, `diskon`, `bayar`, `kembalian`, `catatan`, `tgl_trf`, `jam_trf`, `id_pembayaran`, `no_rek`, `atas_nama`, `id_bank`, `operator`) VALUES
(3, 'C20190803001', 'qerqerqwer', 1135000, 1100950, 3, 9000000, 7899050, 'qerqerqer', '2019-08-03', '02:01:12', 1, 0, '', NULL, 'admin'),
(4, 'C20190803003', 'wdsfsdgsfgf', 385000, 377300, 2, 45454545, 45077245, 'twertwetwet', '2019-08-03', '05:42:58', 1, 0, '', 0, 'admin'),
(5, 'C20190804004', 'wewewerwer', 250000, 242500, 3, 34343334, 34100834, 'asdsfasdfasdffa', '2019-08-04', '05:45:16', 1, 0, '', NULL, 'admin'),
(6, 'T20190901005', 'adwqrr', 505000, 489850, 3, 3000000, 2510150, 'asdfasdf', '2019-09-01', '19:38:54', 2, 2147483647, 'qrqerqr', 4, 'admin'),
(7, 'T20190810006', 'ljkjlkj', 1875000, 1762500, 6, 900000000, 898237500, 'hjkhkj', '2019-08-10', '23:55:13', 2, 2147483647, 'GHJHJGH', 3, 'admin'),
(8, 'C20191001007', 'qerqwer', 250000, 247500, 1, 900000, 652500, 'qqrqrqwerqer', '2019-10-01', '19:23:26', 1, 0, '', NULL, 'admin'),
(9, 'T20190813008', 'faklsdfjkaldf', 440000, 435600, 1, 9000000, 8564400, 'alsdjfkalsdjf', '2019-08-13', '17:54:04', 2, 90909090, 'QERPQOER', 2, 'admin'),
(10, 'T20190816009', 'kljkjlkjkj', 250000, 250000, 0, 40000, -210000, 'hghghghgh', '2019-08-16', '18:53:16', 2, 2147483647, 'icih', 3, 'admin'),
(11, 'T20190817010', 'sddasd', 565000, 548050, 3, 9000000, 8451950, 'asdfasdfasdf', '2019-08-17', '10:28:03', 2, 545645456, 'asdfasdfasdf', 3, 'admin'),
(12, 'C20220721011', 'egyk', 130000, 130000, 0, 150000, 20000, 'egy dya', '2022-07-21', '14:03:51', 1, 0, '', NULL, 'jefri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(21, 'Accesoris'),
(22, 'Processor'),
(23, 'VGA'),
(24, 'Monitor'),
(25, 'Casing'),
(26, 'Memori'),
(27, 'Hardisk dan SSD'),
(28, 'Jaringan'),
(29, 'Laptop'),
(30, 'Personal Computer'),
(31, 'Personal Computer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `id_operator` int(11) NOT NULL,
  `nama_operator` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_akses` int(3) NOT NULL,
  `last_login` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`id_operator`, `nama_operator`, `username`, `password`, `id_akses`, `last_login`, `foto`) VALUES
(18, 'Iqbal', 'iqbalhnf', '202cb962ac59075b964b07152d234b70', 1, '2022-07-22', '83e9a755e9b95ceeffb184f21c5b7470.jpg'),
(19, 'hanafi', 'hanafi@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2022-07-22', '9c4f612d3f2b25bde1060fabdaa8f206.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_byr` int(2) NOT NULL,
  `metode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_byr`, `metode`) VALUES
(1, 'Cash'),
(2, 'Transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_dtlpen` int(5) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `harga_barang` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_dtlpen`, `id_barang`, `jumlah_stok`, `harga_barang`, `sub_total`) VALUES
(18, 3, 60, 1, 130000, 130000),
(19, 3, 61, 1, 120000, 120000),
(20, 3, 62, 1, 135000, 135000),
(21, 3, 63, 1, 750000, 750000),
(22, 4, 61, 1, 120000, 120000),
(23, 4, 62, 1, 135000, 135000),
(24, 4, 60, 1, 130000, 130000),
(25, 5, 60, 1, 130000, 130000),
(26, 5, 61, 1, 120000, 120000),
(27, 6, 61, 2, 120000, 240000),
(28, 6, 60, 1, 130000, 130000),
(29, 6, 62, 1, 135000, 135000),
(30, 7, 60, 6, 130000, 780000),
(31, 7, 61, 1, 120000, 120000),
(32, 7, 62, 1, 135000, 135000),
(33, 7, 63, 1, 750000, 750000),
(34, 7, 66, 1, 90000, 90000),
(35, 8, 60, 1, 130000, 130000),
(36, 8, 61, 1, 120000, 120000),
(37, 9, 64, 1, 130000, 130000),
(38, 9, 65, 1, 125000, 125000),
(39, 9, 67, 1, 185000, 185000),
(40, 10, 60, 1, 130000, 130000),
(41, 10, 61, 1, 120000, 120000),
(42, 11, 60, 1, 130000, 130000),
(43, 11, 61, 1, 120000, 120000),
(44, 11, 62, 1, 135000, 135000),
(45, 11, 66, 1, 90000, 90000),
(46, 11, 72, 1, 90000, 90000),
(47, 12, 60, 1, 130000, 130000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `tanggal_stok` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id_stok`, `id_barang`, `stok_barang`, `tanggal_stok`) VALUES
(57, 73, 2, '2022-07-22'),
(58, 74, 3, '2022-07-22'),
(59, 75, 5, '2022-07-22'),
(60, 76, 20, '2022-07-22'),
(61, 77, 2, '2022-07-22'),
(62, 78, 1, '2022-07-22'),
(63, 79, 7, '2022-07-22'),
(64, 80, 15, '2022-07-22'),
(65, 81, 4, '2022-07-22'),
(66, 82, 12, '2022-07-22'),
(67, 83, 4, '2022-07-22'),
(68, 84, 50, '2022-07-22'),
(69, 85, 500, '2022-07-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukuran`
--

CREATE TABLE `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `nama_ukuran` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ukuran`
--

INSERT INTO `ukuran` (`id_ukuran`, `nama_ukuran`) VALUES
(1, 'pcs'),
(2, 'unit'),
(3, 'roll'),
(4, 'meter');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_operator`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_byr`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses`
--
ALTER TABLE `akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `operator`
--
ALTER TABLE `operator`
  MODIFY `id_operator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_byr` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
