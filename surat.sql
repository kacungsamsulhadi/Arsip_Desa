-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2021 pada 15.44
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `id_user`) VALUES
(6, 'Kepala Desa', 5),
(7, 'Bendahara', 5),
(8, 'Sekdes', 5),
(9, 'Kaur Umum', 5),
(10, 'Kaur Keuangan', 5),
(11, 'Kaur Pemerintahan', 5),
(12, 'Kaur Kesra', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(32, '3b797b76f65fe156c9d279f0262a66bc', '767-2409-2-PB.pdf', '245.22'),
(33, 'a25d461434879fd3b56c4f27cf1e9457', 'D3_-_Soal_Praktek_Pemrograman_2021.pdf', '571.98'),
(34, 'de7f3a2b5e6aefd6232a7b40313b59af', 'D3_-_Soal_Praktek_Pemrograman_20211.pdf', '571.98'),
(35, '75bfffbf2abd266c62e0e1978bc4cf46', 'D3_-_Soal_Praktek_Pemrograman_20212.pdf', '571.98'),
(36, '61d88a2434b3bab4bf3ba02e7e3ec9af', 'D3_-_Soal_Praktek_Pemrograman_20213.pdf', '571.98'),
(37, 'cc4d2e5dfcea5d34192164cfdbbb9c7c', 'D3_-_Soal_Praktek_Pemrograman_20214.pdf', '571.98'),
(38, '3cedf42dbfb3b53d1b88844bd039ddae', 'D3_-_Soal_Praktek_Pemrograman_20215.pdf', '571.98'),
(39, '041dc3b970a51834563e5b4025831f14', 'D3_-_Soal_Praktek_Pemrograman_20216.pdf', '571.98'),
(40, 'a0d2e94fa363dd9b9fa0aeb1b074df51', 'D3_-_Soal_Praktek_Pemrograman_20217.pdf', '571.98'),
(41, 'e0c7d4eb2bdec40214a0b243febaa55a', 'D3_-_Soal_Praktek_Pemrograman_20218.pdf', '571.98'),
(42, '64876f53fd3104deeb296ec3f6781afe', 'D3_-_Soal_Praktek_Pemrograman_20219.pdf', '571.98'),
(43, '01d7775b457f2b7613acf3f8f5e1107c', 'D3_-_Soal_Praktek_Pemrograman_202110.pdf', '571.98'),
(44, '2d5e257dd3483698d3131edfa57fe60c', 'D3_-_Soal_Praktek_Pemrograman_202111.pdf', '571.98'),
(45, 'c74e31d265e4cef5dfc6ba616eb70b49', 'service_payload_instance1.json', '0.34'),
(46, 'c4fc9b0db53eba724251e4595126d5c7', 'D3_-_Soal_Praktek_Pemrograman_202112.pdf', '571.98'),
(47, '0db4534d2fa8167c656e2ead5467748b', 'Grup_WA_Asesor.pdf', '129.85'),
(48, '5aeba1da1fd608b9244ebc54cd093277', 'D3_-_Soal_Praktek_Pemrograman_2021.pdf', '571.98'),
(49, '50d68d33a7432008cc0df809348899e0', 'D3_-_Soal_Praktek_Pemrograman_20211.pdf', '571.98');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_memo`
--

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL,
  `judul_memo` text DEFAULT NULL,
  `memo` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ns`
--

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL,
  `separator` text DEFAULT NULL,
  `no_posisi` text DEFAULT NULL,
  `no` text DEFAULT NULL,
  `org_posisi` text DEFAULT NULL,
  `org` text DEFAULT NULL,
  `bag_posisi` text DEFAULT NULL,
  `bag` text DEFAULT NULL,
  `subbag_posisi` text DEFAULT NULL,
  `subbag` text DEFAULT NULL,
  `bln_posisi` text DEFAULT NULL,
  `bln` text DEFAULT NULL,
  `thn_posisi` text DEFAULT NULL,
  `thn` text DEFAULT NULL,
  `reset_no` text DEFAULT NULL,
  `prefix` text DEFAULT NULL,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text DEFAULT NULL,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text DEFAULT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sm`
--

INSERT INTO `tbl_sm` (`id_sm`, `no_surat`, `tgl_ns`, `no_asal`, `tgl_no_asal`, `pengirim`, `penerima`, `perihal`, `token_lampiran`, `dibaca`, `disposisi`, `id_user`, `tgl_sm`) VALUES
(33, 'SKm/003', '25-10-2021', 'SKm/003', '25-10-2021', 'Pengumuman', 'Undangan', 'Undangan Acara Pelantikan Ketum 2021', '5aeba1da1fd608b9244ebc54cd093277', 0, 0, 0, '25-10-2021'),
(34, 'SKm/004', '25-10-2021', 'SKm/004', '25-10-2021', 'Pengumuman', 'Nota Dinas', 'Dinas 2021', '50d68d33a7432008cc0df809348899e0', 0, 0, 0, '25-10-2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text DEFAULT NULL,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `alamat`, `telp`, `pengalaman`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Undangan', 'anwarsptr@gmail.com', 'negarabumi', '453454', 'ok', 's_admin', 'aktif', '07-10-2017 17:03:12', '24-10-2021 23:18:21'),
(2, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'Pengumuman', 'herusp49@gmail.com', 'Negarabumi', '4646546', 'ok', 'admin', 'aktif', '07-10-2017 17:30:08', '25-10-2021 14:42:57'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Nota Dinas', 'herusp49@gmail.com', 'negarabumi', '0987775', 'ok', 'user', 'aktif', '07-10-2017 17:31:54', '23-10-2021 09:09:26'),
(4, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'Pemberitahuan', 'herusp49@gmail.com', 'Negarabumi', '4646546', 'ok', 'admin', 'aktif', '07-10-2017 17:30:08', '25-10-2021 14:42:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indeks untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indeks untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  ADD PRIMARY KEY (`id_memo`);

--
-- Indeks untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  ADD PRIMARY KEY (`id_ns`);

--
-- Indeks untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indeks untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  MODIFY `id_memo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  MODIFY `id_ns` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id_sk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
