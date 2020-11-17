-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 10:58 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kecamatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE IF NOT EXISTS `buku_tamu` (
  `id_bukutamu` int(8) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `pesan` char(75) NOT NULL,
  PRIMARY KEY (`id_bukutamu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_bukutamu`, `nama_lengkap`, `email`, `pesan`) VALUES
(1, 'Rohimah Muthmainnah Nasution', 'inaainaa03@gmail.com', 'sipp keren ..'),
(2, 'Evita Vilianti', 'evtvilianti@gmail.com', 'luar biasa !!!'),
(3, 'Evita Vilianti', 'evtvilianti@gmail.com', 'luar biasa !!!');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
  `id_konfirmasi` int(8) NOT NULL AUTO_INCREMENT,
  `id_admin` int(25) NOT NULL,
  `NIK` char(25) NOT NULL,
  `status` char(25) NOT NULL,
  PRIMARY KEY (`id_konfirmasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_konfirmasi`, `id_admin`, `NIK`, `status`) VALUES
(1, 1, '3218998003000', 'Telah diambil'),
(2, 1, '3210331099083000', 'Telah diambil'),
(3, 1, '32186766500600', 'Telah diambil');

-- --------------------------------------------------------

--
-- Table structure for table `pemberitahuan`
--

CREATE TABLE IF NOT EXISTS `pemberitahuan` (
  `no_pemberitahuan` int(8) NOT NULL AUTO_INCREMENT,
  `id_admin` int(25) NOT NULL,
  `id_penduduk` int(25) NOT NULL,
  `email` char(50) NOT NULL,
  `pesan` char(75) NOT NULL,
  PRIMARY KEY (`no_pemberitahuan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pemberitahuan`
--

INSERT INTO `pemberitahuan` (`no_pemberitahuan`, `id_admin`, `id_penduduk`, `email`, `pesan`) VALUES
(1, 1, 1, 'novalkrnfds@gmail.com', 'E-KTP anda Telah jadi. silahkan Ambil dikantor Kecamatan'),
(2, 1, 0, 'rohimahmuthmainnah03@gmail.com', 'EKTP TELAH JADI'),
(3, 1, 0, 'rohimahmuthmainnah03@gmail.com', 'EKTP TELAH JADI'),
(4, 1, 1, 'evt27@gmail.com', 'KTP Telah jadi silahkan diambil dikantor Kecamatan dengan segera'),
(5, 1, 2, 'rohimahmuthmainnah03@gmail.com', 'KTP Telah Jadi.\r\nMohon Ambil segera');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `no_pendaftaran` int(25) NOT NULL AUTO_INCREMENT,
  `id_penduduk` int(25) NOT NULL,
  `nama_lengkap` char(50) NOT NULL,
  `tempat_lahir` char(50) NOT NULL,
  `NIK` char(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` char(25) NOT NULL,
  `agama` char(12) NOT NULL,
  `email` char(50) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `alamat` varchar(75) NOT NULL,
  `KK` varchar(255) NOT NULL,
  `waktu_kunjungan` date NOT NULL,
  PRIMARY KEY (`no_pendaftaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`no_pendaftaran`, `id_penduduk`, `nama_lengkap`, `tempat_lahir`, `NIK`, `tgl_lahir`, `jenis_kelamin`, `agama`, `email`, `no_telp`, `alamat`, `KK`, `waktu_kunjungan`) VALUES
(2, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '2147483647', '1998-03-31', 'Perempuan', 'Islam', 'inaainaa03@gmail.com', '08305934468', 'Gang Makmur IV.  No.09 kec.Ciracas Jakarta Timur', 'gambar1593100093.jpg', '0000-00-00'),
(3, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321622033198998000', '2020-06-25', 'Perempuan', 'Islam', 'inaainaa03@gmail.com', '083805934468', 'Gang Makmur IV. No.09 Kec. Ciracas Jakarta Timur', 'gambar1593100248.jpg', '0000-00-00'),
(4, 4, 'SISI', 'Bekasi', '3216762871888000', '2000-01-29', 'Perempuan', 'Islam', 'novalkrnfds@mail.com', '087888787876', 'Desa Sukamaju No.15 Rt 008/10 Kec.Cikarang Selatan Kab. Bekasi 17453', 'gambar1593100411.jpg', '0000-00-00'),
(5, 4, 'Muhammad Haris Muda', 'Jakarta', '32122324', '2020-06-01', 'Laki-Laki', 'Islam', 'novalkrnfds@mail.com', '083805934468', 'cibarusah', 'gambar1593143884.jpg', '0000-00-00'),
(6, 4, 'Muhammad Haris Muda', 'Bekasi', '321345454', '2004-05-20', 'Laki-Laki', 'Islam', 'nasabah1@mail.com', '083805934468', 'cibarusah', 'gambar1593146768.jpg', '2009-00-00'),
(7, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593157859.jpg', '2020-06-26'),
(8, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593157917.jpg', '2020-06-26'),
(9, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593157972.jpg', '2020-06-26'),
(10, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593158005.jpg', '2020-06-26'),
(11, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593158053.jpg', '2020-06-26'),
(12, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593158091.jpg', '2020-06-26'),
(13, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593158783.jpg', '2020-06-26'),
(14, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159078.jpg', '2020-06-26'),
(15, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159142.jpg', '2020-06-26'),
(16, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159180.jpg', '2020-06-26'),
(17, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159258.jpg', '2020-06-26'),
(18, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159297.jpg', '2020-06-26'),
(19, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159335.jpg', '2020-06-26'),
(20, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159371.jpg', '2020-06-26'),
(21, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159417.jpg', '2020-06-26'),
(22, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159449.jpg', '2020-06-26'),
(23, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159481.jpg', '2020-06-26'),
(24, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159545.jpg', '2020-06-26'),
(25, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159588.jpg', '2020-06-26'),
(26, 4, 'Rohimah Muthmainnah Nasution', 'Jakarta', '321089838310008000', '1998-03-31', 'Perempuan', 'Islam', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Cibarusah', 'gambar1593159632.jpg', '2020-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE IF NOT EXISTS `penduduk` (
  `id_penduduk` int(25) NOT NULL AUTO_INCREMENT,
  `username` char(25) NOT NULL,
  `password` char(50) NOT NULL,
  `nama_lengkap` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  PRIMARY KEY (`id_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `username`, `password`, `nama_lengkap`, `email`, `Alamat`) VALUES
(1, 'evita', 'c5c1a9443bfb2279643a2f8c0416fb0e', 'evita', 'evt27@gmail.com', 'Jawa Tengah'),
(2, 'rohimah', 'a0fb2daa33c637d078d1d276dd453ea2', 'Rohimah Muthmainnah Nasution', 'rohimahmuthmainnah03@gmail.com', 'Cibarusah Kota'),
(3, 'Hanbin Kim', 'f7748d6b07a7f1edc8b25af9eba89064', 'Kim Hanbin', '', 'Korea Selatan'),
(4, 'ina', 'a0fb2daa33c637d078d1d276dd453ea2', 'ina', 'inaainaa03@gmail.com', 'jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `petugas_pelayanan`
--

CREATE TABLE IF NOT EXISTS `petugas_pelayanan` (
  `id_admin` int(12) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` char(50) NOT NULL,
  `NIP` char(25) NOT NULL,
  `username` char(50) NOT NULL,
  `password` char(50) NOT NULL,
  `alamat` char(75) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `petugas_pelayanan`
--

INSERT INTO `petugas_pelayanan` (`id_admin`, `nama_lengkap`, `NIP`, `username`, `password`, `alamat`) VALUES
(1, 'Evita Vilianti', '21343232', 'evita', 'c5c1a9443bfb2279643a2f8c0416fb0e', 'Cicau');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
