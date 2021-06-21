-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2017 at 12:45 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ket_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_tempat`, `nama_galeri`, `gambar`, `ket_galeri`) VALUES
(17, 11, '', '7709a.jpg', ''),
(18, 12, '', '1039goa-lawah.jpg', ''),
(19, 12, 'Goa Lawah 1', '2443gua-lawah-1.jpg', ''),
(20, 12, 'Goa Lawah 2', '6752gua-lawah3.jpg', ''),
(21, 11, 'Lempuyang 1', '8479lempuyang.jpg', ''),
(22, 15, '', '5071pusering-jagat.jpg', ''),
(23, 10, 'Mandala 1', '7182mandapa-1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(24, 10, 'Mandala 2', '9349mandapa-2.jpg', ''),
(25, 10, 'Mandala 3', '4694mandapa-3.jpg', ''),
(26, 10, 'Mandala 4', '8986mandapa-4.jpg', ''),
(27, 10, 'Mandala 5,6,7', '2425mandapa-567.jpg', ''),
(28, 10, 'Gambar 1', '7398besakih.jpg', ''),
(29, 10, 'Gambar 2', '7659besakih-2.jpg', ''),
(30, 13, 'Batukaru 1', '5413batukaru-1.jpg', '<p>barukaru tes keternagan</p>'),
(31, 13, 'Batukaru 2', '1935batukaru-2.jpg', ''),
(32, 11, 'Lempuyang 2', '5131lempuyang-3.jpg', ''),
(33, 14, 'Uluwatu 1', '6659uluwatu-1.jpg', ''),
(34, 14, 'Uluwatu 2', '6237uluwatu-2.jpg', ''),
(35, 15, 'Pusering jagat 1', '4421pusering-jagat-1.jpg', ''),
(36, 15, 'Pusering jagat 2', '6820pusering-jagat-2.jpg', ''),
(37, 16, 'Air Terjun Mengaya', '3194img-20170416-wa0040.jpg', '<p>Air Terjun Mengaya</p>'),
(38, 16, 'Gua Loyang Koro', '4235gua-deitakengon.jpg', '<p>Gua Loyang Koro</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '4.634337984602866'),
('default_lng', '96.84294654003907'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`) VALUES
(16, 'Takengon, Aceh, Indonesia', '5323x005_001_931_pic.jpg.pagespeed.ic.6bfzbhsmnr.jpg', 4.634337984602866, 96.84294654003907, 'Aceh, Indonesia', '<p><strong>Takengon</strong> merupakan ibukota Kabupaten Aceh Tengah, Provinsi Aceh, Indonesia. ... Di sekitar<strong>takengon</strong> ini banyak terdapat tempat wisata, di antaranya adalah Danau Lut Tawar di kecamatan Lut Tawar, kecamatan Bebesen dan kecamatan Kebayakan, Gua Puteri Pukes di kecamatan Kebayakan dan Pantan Terong di kecamatan Bebesen.</p>'),
(17, 'Burni Geureudong Atau Bur Telong', '4689gunung-burni-telong.jpg', 4.809522555328549, 96.81685401074219, 'Bener Meriah, Aceh, Indonesia', '<p>Nama resmi untuk kompleks gunung berapi ini masih menjadi perdebatan, karena posisi Bur ni<em>Geureudong</em> dan Bur ni Telong yang berdekatan. Dua Kerucut vulkanik ... lereng gunung. Gunung<em>Geureudong</em> adalah sebutan gunung tersebut oleh Suku Aceh, sedangkan <em>Burni</em> Telong adalah sebutannya oleh Suku Gayo.</p>'),
(18, 'Gua Loyang Koro', '8153gua-deitakengon.jpg', 4.605746304558802, 96.88398769072819, 'Takengon, Aceh, Indonesia', '<p>Loyang Koro = Gua Kerbau&nbsp; adalah gua alam yang pernah dipergunakan untuk membawa kerbau sehingga di beri nama Loyang Koro &nbsp;(dalam bahasa Gayo&nbsp; Loyang = Goa dan Koro = Kerbau) Gua Loyang Koro adalah sebuah gua yang terletak di &nbsp;tepi danau laut tawar &nbsp;kecamatan kebayakan&nbsp; ibu kota Takengon dengan jarak tempuh lebih kurang&nbsp; 5 km arah timur ibu kota takengon, gua ini merupakan&nbsp; salah satu objek wisata &nbsp;yang sanngat indah dan asri juga ramai pengunjungnya pada&nbsp; hari libur, gua ini letaknya &nbsp;di kaki Gunung Birahpanyang, turun ke bawah &nbsp;sekitar 15 meter melalui &nbsp;bibir pantai dari jalan menuju kec. Bintang, &nbsp;gua ini juga memiliki kedalaman lebih &nbsp;kurang 110 meter, &nbsp;untuk memasuki ke dalam gua dapat dijangkau dengan jalan setapak. Para pengunjung yang berwisata ke Gua tersebut dapat menikmati sampai ke dalam goa yang berjarak sekitar 110 meter &nbsp;karena pemerintah pariwisata setempat sudah menyediakan vasilitas penerangan seperti listrik dan generator.</p>\r\n<p>Menurut pemandu&nbsp; legenda&nbsp; gua ini ada dua versi dalam &nbsp;sejarah : yang pertama menyebutkan bahwa dulunya gua ini tembus ke Isak, melalui gua ini &nbsp;para pengebala kerbau membawa ternaknya, jadi gua ini merupakan jalan pintas untuk menuju ke Isak atau ke Kota Takengon untuk berdagang, &nbsp; jika mareka membawa ternak melewati jalan raya sangat jauh dan membutuhkan waktu yang sangat lama, dan &nbsp;sebaliknya dari Isak juga ada gua yang namanya Gua Kambing yang bersambung dengan gua loyang Koro ini, namun &nbsp;saat ini sudah &nbsp;&nbsp;tertutup dan tidak&nbsp; dapat melewati lagi, &nbsp;menurut lagenda tertutupnya gua ini&nbsp; akibat pertikaian &nbsp;antara pengembala kambing dengan pengembala kerbau yang sama-sama membawa&nbsp; ternak, &nbsp;saat itu beradu di dalam gua tersebut dan sama-sama tidak mau mengalah atau mundur salah satunya &nbsp;hingga menyebabkan &nbsp;runtuhnya dinding goa sehingga jalan tertutup dan tidak dapat dilewati lagi. Kemudian versi yang kedeua &nbsp;menyebutkan bahwa goa ini dulunya adalah tempat bersembunyi Sultan Aceh dari kejaran tentara Belanda dan portugis.</p>'),
(19, 'Gua Puri Pukes', '8180gua-loyang-putri-pukes-2.jpeg', 4.641107101989109, 96.88315017096329, 'Takengon, Aceh, Indonesia', '<p>Di Indonesia tempat pariwisata sangat banyak, baik wisata alam, wisata budaya, wisata relegius, wisata bersejarah, wisata cerita rakyat atau mitos, wisata peninggalan purbakala dan tempat liannya yang dapat dijadikan sebagai tempat pariwisata. Dataran Tinggi Tanah Gayo Kabupaten Aceh Tengah Provinsi Aceh merupakan salah satu daerah yang terdapat wilayah nusantara. Daerah tersebut terletak di tengah-tengah provinsi Aceh, memiliki iklim dingin dan tanah yang subur karena curah hujan yang tinggi. Selain itu juga daerah tersebut memiliki beberapa tempat wisata alam yang sangat indah, wisata budaya dan wisata bersejarah. Salah satunya Danau Laut Tawar selain alamnya indah dan sejuk, di sekeliling juga memiliki tempat-tempat bersejarah dan legenda.</p>\r\n<p>Setiap daerah di nusantara memiliki legenda atau cerita rakyat yang memiliki bukti pisik berupa patung batu dan bukti fisik yang lainnya yang dapat dijadikan tempat wisata. Begitu juga halnya dengan wilayah Aceh Tengah ada beberapa tempat yang dijadikan sebagai wisata yang asalnya dari cerita rakyat dan memiliki sifat fisik secara nyata, namun tidak memiliki bukti tertulis dan sumber yang jelas. Tempat tersebut seperti legenda <em>Loyang</em> (Gua-red) Putri Pukes, <em>Loyang Koro </em>(gua Kerbau), Loyang Mandale, <em>Atu Belah (</em>Batu Terbelah<em>)</em>, Loyang Datu dan beberapa tempat lainnya.</p>\r\n<p>Begitu tiba di lokasi, setiap pengunjung langsung disambut dengan tulisan \"Putri Pukes, Manusia Jadi Batu\". Tidak salah memang tulisan ini. Jika masuk ke dalam, pengunjung akan menemukan batu mirip manusia.Di dalam gua, selain melihat batu kutukan, masih ada lagi hal lain yang bisa dilihat. Beberapa yang bisa dilihat adalah sumur besar, kendi yang sudah menjadi batu, tempat duduk untuk bertapa orang masa dahulu, alat pemotong zaman dahulu.Tak hanya itu, jika melihat lebih jeli, turis bisa melihat batu berbentuk Pulau Papua dan ikan.</p>\r\n<p>Gua Putri Pukes merupakan salah satu objek wisata yang terdapat di Aceh tengah, secara fisiknya objek tersebut termasuk ke dalam objek wisata alam. Karena goa dan keadaan alam sekitarnya digolongkan kepada objek wisata alam. Kemudian kalau dikaji lagi secara mendalam tentang asal usul gua Putri Pukes sebagaimana telah dijelaskan pada pain sebelumnya, bahwa objek wisata tersebut memiliki nilai budaya dan nilau moral serta memiliki sejarah secara cerita rakyat.</p>\r\n<p>\"Satu orang bisa bayar Rp 5.000/orang. Nanti begitu datang, wisatawan langsung diantar guide. Jadi masuk tidak sendiri,\" tambah Danurfan.</p>\r\n<p>Menurut lagenda Putri Pukes berasal dari tanah Gayo, yang mengisah seorang putri raja yang menyukai seorang pangeran kerajaan lain, kemudian memohon pada orang tuanya agar mareka di nikahkan, awalnya orangtua putri pukes tidak menyetujui dengan pangeran yang di cintainya karena negeri pangeran sangat jauh namun putri dan pangeran sangat gigih memperjuangkan cintanya, akhirnya kedua orangtua mereka merestuinya. Setelah mareka dinikahkan, putri harus tinggal bersama di kerajaan suaminya. Putri pukes minta ijin dan pamit pada orang tuanya dan diantar oleh pengawal, saat itu hati kedua orang tua putri sangat berat dan sangat sedih untuk melepaskan anaknya namun apa hendak dikata putri sudah menjadi milik suamianya. Ketika putri mohon pamit pada orang tuanya, kedua orang tua putri berpesan &ldquo;anakku jika kamu pergi menyusul suamimu maka pergilah dengan damai dan ikhlas kalaupun kamu rindu jangan melihat ke belakang&rdquo; dalam perjalanan putri rasa rindu pada orang tua begitu membara sehingga dia lupa dan tanpa sengaja melihat ke belakang, seketika itu pula datang petir dan hujanpun turun dengan deras sekali, mareka bersama robongan pengawal berteduh didalam sebuah goa yaitu goa Putri pukes yang dikenal saat ini, saat itu di dalam goa putri pukes terasa dingin dan secara perlahan-lahan merasa tubuhnya mengeras dan menjadi batu.</p>\r\n<p>BPCB Aceh : Gua putri pukes terletak kaki bukit kecamatan kebayakan arah menuju ke kecamatan Nosar Kabupaten Aceh Tengah, menurut geografis Indonesia goa ini berada pada titik koordinat N 4<sup>0 </sup>38&rsquo; 28&rsquo;,4 &ldquo; E 96<sup>0 </sup>52&rsquo; 59,9&rsquo;. Untuk menuju lokasi goa ini melewati jalan pinggiran danau laut tawar sekitar kira-kira sekitar 2 km dari ibu kota Takengon.</p>\r\n<p>Gua putri pukes berada di pinggran jalan menghadap ke danau laut tawar, untuk memasuki ke dalam goa naik keatas melalui bibir pintu goa, kemudian masuk kedalam turun melalui tangga yang sudah disemen sekitar 6 meter, goa sudah terang karena sudah disedia fasilitas penerangan listrik.</p>\r\n<p>Mulut goa atau pintu masuk goa luas 1,5 m eter, memiliki Panjang kedalam 10 meter lebarnya 8 meter luas 1,5 m tinggi rata-rata 2,50 meter dan kedalaman 10,80 meter Di dalam gua Putri Pukes tersebut terdapat batu yang dipercayai Putri Pukes yang telah menjadi batu, sumur besar, kendi yang sudah menjadi batu, dan tempat duduk untuk bersemedi (bertapa) orang masa dahulu.</p>\r\n<p><strong>Letak Geografis Goa Putri Pukes</strong></p>\r\n<p>Gua Putri Pukes merupakan salah satu tempat pariwitasa yang terletak di daerah Aceh Tengah. Tempatnya berada di Kampung Mendale, Kecamatan Kebayakan. Goa ini berada di pinggiran Danau Laut Tawar, jaraknya dari pusat kota sekitar 10-15 menit perjalalanan atau 6 KM dari pusat Kota (Danurfan, 2013).</p>\r\n<p>Tempat tersebut pada zaman kerajaan terletak di kampung Nosar. Menurut Mukhlis dalam Kasim (1980: 46) Kampung Nosar merupakan pusat kerajaan Syiah Utama. Kerajaan tersebut merupakan salah satu kerajaan kecil dari beberapa kerajaan lainnya. Kerajaan Syiah Utama masih memiliki pusat kerajaan besarnya yang terletak di Buntul Linge yang bernama Kerajaan Linge.</p>\r\n<p>Kampung Nosar pada awal terbentuknya kabupaten Aceh Tengah masuk ke wilayah Kecamatan Bintang. Nosar merupakan kampung yang wilayahnya sangat luas, ketika dipecahkan menjadi beberapa desa kecil sehingga Goa Putri Pukes masuk ke wilayah kampung Mendale. Kemudian setelah adanya pemekaran kecamatan, daerah Gua Putri Pukes masuk ke wilayah kecamatan Kebayakan.</p>\r\n<p>Gua Putri Pukes terletak di pinggir jalan raya, sehingga wisatawan yang berkunjung ke tempat tersebut mudah untuk mendapatkannya. Selain itu juga jalan menuju tempat tersebut mudah dilalui oleh transportasi apapun, baik roda dua maupun roda empat serta bus pariwisata.</p>\r\n<p>Di dalam gua, selain melihat batu kutukan, masih ada lagi hal lain yang bisa Anda lihat. Beberapa yang bisa dilihat adalah sumur besar, kendi yang sudah menjadi batu, tempat duduk untuk bertapa orang masa dahulu, alat pemotong zaman dahulu.\"Ada sumur untuk obat. Sumur ini tiga bulan sekali ada air. Katanya airnya bisa jadi obat. Ada juga batu untuk bertapa,\" ungkap Danurfan.Tak hanya itu, jika melihat lebih jeli, turis bisa melihat batu berbentuk Pulau Papua dan ikan.</p>'),
(20, 'Air Terjun Mengaya', '3068img-20170416-wa0040.jpg', 4.570219651836434, 96.96681229345131, 'Takengon, Aceh, Indonesia', '<p>Air Terjun Meganya merupakan air terjun yang terletak dekat dengan Danau Laut Tawar, Aceh Tengah. Air terjun ini tersembunyi dibalik perbukitan, serta menawarkan gemericik air terjun dan pesona alam yang menawan.</p>\r\n<p>&nbsp;</p>\r\n<p>Aceh merupakan salah satu provinsi di indonesia yang kaya dengan objek wisatanya. Terdapat banyak gunung yang menjulang tinggi, laut yang memiliki pantai yang luas, goa-goa yang indah sampai dengan air terjunnya yang menawan. Salah satu satunya adalah objek wisata Air Terjun Mengaya, <a href=\"https://www.tempat.co.id/tag/air-terjun\">air terjun</a> yang beberapa tahun terakhir ini menjadi perbincangan banyak orang di karenakan keindahan alamnya yang begitu mempesona.&nbsp;</p>\r\n<p>Letak Air Terjun Mengaya berada di sisi selatan Danau Laut Tawar, persis di kaki gunung Burni Kelieten. Tepatnya di Desa Mengaya, Kecamatan Bintang, Kabupaten Aceh Tengah. Berjarak sekitar 10 kilometer dari Kota Takengon. Untuk mencapai lokasi ini sangatlah mudah, jalanan yang sudah di aspal dengan baik, menjadikan jalanan ini bisa di lalui hampir segala jenis kendaraan. Sedangkan untuk menuju air terjun, bisa melalui jalan setapak sekitar 1,5 kilometer.</p>\r\n<figure><a href=\"https://www.tempat.co.id/wisata/Air-Terjun-Mengaya\"><img id=\"Air Terjun Mengaya1.jpg\" title=\"Air Terjun Mengaya\" src=\"https://www.tempat.co.id/users_media/3066/Air%20Terjun%20Mengaya1.jpg\" alt=\"Air Terjun Mengaya\" data-image=\"Air Terjun Mengaya1.jpg\" /></a></figure>\r\n<p>Sepanjang jalan menuju lokasi wisata, mata akan di manjakan dengan pemandangan indah di tanah Gayo. Melewati hutan pinus, hamparan persawahan yang hijau, sampai dengan ratusan hektar perkebunan kopi Aceh. Kopi yang saati ini telah mendunia hingga negeri Paman Sam. Semua pemandangan inilah yang akan membuat perjalanan menjadi tidak terasa membosankan.</p>\r\n<p>Perjalanan akan terasa semakin menantang ketika turun dari kendaran dan harus berjalan sekitar 200 meter dengan medan yang cukup menanjak. Di karenakan lokasi air terjun yang tersembunyi di balik perbukitan, membuat udara di sekitar Air Terjun Mengaya terasa dingin dan sejuk. Dan ketika sampai di lokasi objek wisata, rasa lelah selama perjalanan akan seketika hilang begitu melihat keindahan air terjun yang memiliki debur air yang cukup deras turun ke bawah.</p>\r\n<h3>Pesona Air Terjun Mengaya</h3>\r\n<p>Deburan air yang terjun bebas menghempas bebatuan karang dari ketinggian 180 meter di temani sejuknya udara bersama lirihnya suara kicau burung seolah membawa kita seperti berada di taman firdaus. Taman yang indah dengan berjuta pesonanya. Maka menjadi tidak aneh jika banyak orang yang betah berlama-lama berdiam diri di tempat wisata Air Terjun Mengaya, entah untuk menghilangkan penat atau hanya sekedar mengaggumi mahakarya Tuhan.</p>\r\n<p>Aliran air yang membentuk kolam seakan menggoda kita untuk menanggalkan pakaian lalu mandi atau berendam di dalamnya. Dinginya air akan langsung terasa menembus sampai ke tulang-tulang ketika kita masuk ke dalam kolam yang berasal dari Air Terjun Mengaya. Hutan tropis yang memagari kawasan ini, berhasil menyulap tempat ini memiliki nuansa teduh dan menenangkan.</p>\r\n<figure><a href=\"https://www.tempat.co.id/wisata/Air-Terjun-Mengaya\"><img id=\"Air Terjun Mengaya12_1.jpg\" title=\"Air Terjun Mengaya\" src=\"https://www.tempat.co.id/users_media/3066/Air%20Terjun%20Mengaya12_1.jpg\" alt=\"Air Terjun Mengaya\" data-image=\"Air Terjun Mengaya12_1.jpg\" /></a></figure>\r\n<p>Terdapat juga air terjun lebih yanga berada di atas, namun jika kalian tidak membawa peralatan memanjat, tidak di sarankan untuk kalian menaikinya. Karena akan memakan waktu yang lama dan juga cukup berbahaya.&nbsp;</p>\r\n<p>Namun di balik pesona Air Terjun Mengaya, wisatawan juga di himbau agar lebih berhati-hati, karena tidak jarang bongkahan batu atau pohon tumbang yang ikut terseret arus bisa sewaktu-waktu jatuh dan mengancam keselamatan jiwa. Untuk itu di sarankan wisatawan yang ingin berkunjung di tempat ini, pastikan tidak datang di musim hujan, karena jika datang pada musim hujan, derasnya air akan menambah resiko terjadinya hal yang tidak di inginkan.</p>\r\n<h3>Fasilitas Air Terjun Mengaya</h3>\r\n<p>Untuk fasilitas sendiri bisa kita temukan di gerbang utama pintu masuk menuju objek wisata Air Terjun Mengaya. Fasilitas ini meliputi toilet umum yang airnya bersumber dari pegunungan, lalu terdapat juga musholla yang di sediakan untuk pengunjun dan petani kopi yang beragama muslim. Terdapat juga warung-warung yang menyajikan makanan dan minuman. Tidak ketinggalan juga area parkir yang cukup luas dan aman tentunya.</p>\r\n<p><strong>Baca Juga:</strong>&nbsp;<strong><a href=\"https://www.tempat.co.id/wisata/Goa-Loyang-Koro\">Goa Loyang Koro, Goa Legendaris yang Sarat Akan Sejarah</a></strong></p>\r\n<p>Di sepanjang jalan menuju lokasi Air Terjun Mengala, kita akan banyak menemui papan peringatan seperti larangan buang sampah sembarangan, berhati-hati karena jalan licin dan terakhir papan yang&nbsp; berisikan himbauan untuk para pengunjung lebih waspada ketika berada di bawah air terjun, karena sewaktu-waktu terdapat bongkahan batu dan pohon tumbang yang terseret arus dan ikut jatuh bersama aliran air terjun.</p>\r\n<h3>Mandi dan Berendam Sembari Menikmati Air Terjun</h3>\r\n<p>Kegiatan yang satu ini rasanya wajib di lakukan, sambil mandi&nbsp; dan berendam kita juga bisa bersantai sembari merasakan segarnya udara di sekitar <a href=\"https://www.tempat.co.id/\">tempat wisata</a> Air Terjun Mengaya, udara yang masih alami akan membuat kita merasa lebih rileks dan tenang. Kalian juga bisa sesekali berada di bawah air terjun untuk merasakan sensasi air yang jatuh dari ketinggian. Namun ketika berada di bawah air terjun, kalian juga harus tetap waspada agar tidak tertimpa bongkah batu dari atas.</p>\r\n<h3>Hunting Foto</h3>\r\n<p>Selesai memanjakan diri dalam kolam, kalian bisa mengabadikan momen bersama keluarga atau teman di sekitar lokasi tempat wisata. Berpose di atas bebatuan dengan backgorund air terjun akan menghasilkan foto yang mengaggumkan. Atau kalian juga mempotret keindahan alam sekitar yang tidak kalah menawan dari Air Terjun Mengaya.</p>\r\n<p>Dan untuk kalian yang&nbsp; memang memiliki hobi di bidang photogrhapy khusunya bertemakan alam, rasanya objek wisata Air Terjun Mengaya akan sayang untuk di lewatkan. Pasalnya hampir di setiap sudut tempat ini pantas untuk di jadikan objek berfoto.</p>\r\n<h3>Tiket atau Biaya Masuk Air Terjun Mengaya</h3>\r\n<p>Untuk tiket masuk menuju lokasi objek wisata Air Terjun Mengaya pengunjung tidak di pungut biaya sepeserpun alias gratis. Para pengunjung hanya akan di tarik biaya parkir sebesar Rp. 2000 dan biaya kebersihan sebesar Rp. 3000.</p>'),
(21, 'Dermaga Lukup Panalam', '3235lukup-panalam.jpg', 4.614248803798071, 96.85964597336579, 'Takengon, Aceh, Indonesia', '<p>Persiapan Pekerjaan Dermaga Lukup Penalam yang hampir rampung adapun proyek pembangunan dermaga ini terdiri dari : Pembangunan Toliet Kawasan Dermaga Lukup Penalam, Pembangunan Pergola Kawasan danau Laut Tawar, Pembangunan Pagar Pembatas Kawasan Lukup Penalam. Pembangunan Tempat Ibadah dan Pembangunan Jalur Pejalan Kaki di kawasan Lukup Penalam</p>\r\n<p>&nbsp;<img src=\"https://instagram.fpku3-1.fna.fbcdn.net/t51.2885-15/e35/25005613_1766042953701869_8744900168840642560_n.jpg\" /></p>\r\n<p><img src=\"https://instagram.fpku3-1.fna.fbcdn.net/t51.2885-15/e35/24175041_346802355784088_8022751488746979328_n.jpg\" /></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
