-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250914.f72491a1c0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2025 at 03:10 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_news`
--

CREATE TABLE `article_news` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` enum('featured','not_featured') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_featured',
  `category_id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_news`
--

INSERT INTO `article_news` (`id`, `name`, `content`, `thumbnail`, `is_featured`, `category_id`, `author_id`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Rex Regum Qeon', '<p>Team RRQ #7 King of King</p>', '01K7M3TVRASHX78CYF7GT4S15M.jpg', 'not_featured', 7, 1, 'sejarah-rex-regum-qeon', NULL, '2025-10-08 06:17:05', '2025-10-28 17:34:38'),
(2, 'Apa Acara Trans7 yang Diduga Lecehkan Pesantren Lirboyo? Berujung Tagar Boikot di Medsos', '<p>Suara.com - Stasiun televisi swasta nasional Trans7 kini tengah menjadi perbincangan publik. Sebuah segmen dari salah satu program mereka dituding telah menyinggung secara serius martabat Pondok Pesantren Lirboyo, Kediri, sebuah institusi pendidikan Islam yang sangat dihormati. <br><br>Sebuah segmen dari salah satu program mereka dituding telah menyinggung secara serius martabat Pondok Pesantren Lirboyo, Kediri, sebuah institusi pendidikan Islam yang sangat dihormati. <br><br>Artikel ini telah tayang di Suara.com dengan judul \"Apa Acara Trans7 yang Diduga Lecehkan Pesantren Lirboyo? Berujung Tagar Boikot di Medsos\", Klik untuk baca: https://www.suara.com/lifestyle/2025/10/14/114928/apa-acara-trans7-yang-diduga-lecehkan-pesantren-lirboyo-berujung-tagar-boikot-di-medsos.<br>&nbsp; &nbsp; &nbsp; &nbsp; <br>Acara Trans7 yang menjadi biang kerok dugaan pelecehan terhadap Pondok Pesantren Lirboyo, Kediri, adalah program \"<a href=\"https://www.suara.com/tag/xpose-uncensored\"><strong>Xpose Uncensored</strong></a>\". Tayangan yang disorot tersebut mengudara pada Senin, 13 Oktober 2025 kemarin.</p><p>Isu utama terletak pada penggambaran situasi di lingkungan Pondok Pesantren Lirboyo yang dianggap tidak etis, minim edukasi, dan merendahkan. <br><br>Fokus keberatan publik diarahkan pada narasi suara (<em>voice over</em>) yang menyertai cuplikan visual tayangan tersebut.</p><p>Visual itu menampilkan adegan santri menyalami seorang kiai sepuh yang sedang duduk, serta potongan video lain yang memperlihatkan kiai turun dari kendaraan.&nbsp;<br><br>Namun narasi yang menyertainya dinilai sangat mencederai perasaan. Tim redaksi \"Xpose Uncensored\" menggunakan diksi yang dianggap merendahkan, salah satunya dengan menyinggung santri yang disebut \"rela ngesot\" demi memberikan amplop kepada kiai.</p><p>Narasi itu bahkan dilanjutkan dengan pernyataan bahwa secara logis seharusnya pihak kiai yang memberikan amplop atau imbalan kepada para santri.</p><p>Narasi yang digunakan dalam program \"Xpose Uncensored\" itu dianggap merendahkan para santri. Secara khusus narasi itu dianggap melecehkan martabat ulama, terutama sosok kiai sepuh Pondok Pesantren Lirboyo, Kediri, yakni KH. Anwar Manshur.</p><p><em>Framing</em> semacam itu dianggap telah menyudutkan dan menodai kesucian hubungan antara kiai dan santrinya, sebuah ikatan yang didasari penghormatan (<em>ta’dzim</em>) dan pengabdian.</p><p>Alih-alih menampilkan sisi spiritual dan keilmuan pesantren, tayangan itu justru terkesan mengedepankan perspektif sinis.</p><p>Maka tak heran, seruan <a href=\"https://www.suara.com/tag/boikot\"><strong>boikot</strong></a> pada Trans7 menguat. Ribuan warganet, khususnya dari keluarga besar pesantren, alumni Lirboyo, dan simpatisan NU, melampiaskan kekecewaan mereka dengan memviralkan tagar <em>#BoikotTrans7</em>, menuntut pertanggungjawaban dan tindakan tegas dari pihak stasiun televisi.</p><p>Sebagai informasi, Pondok Pesantren Lirboyo bukanlah institusi biasa. Didirikan sejak tahun 1910, pesantren ini adalah salah satu pondok terbesar dan paling berpengaruh di Indonesia.</p><p>Lirboyo telah melahirkan banyak ulama dan tokoh Islam penting, yang menjadikannya memiliki basis massa dan sentimen penghormatan yang sangat kuat, khususnya di kalangan masyarakat Nahdliyin.&nbsp;<br><br>Artikel ini telah tayang di Suara.com dengan judul \"Apa Acara Trans7 yang Diduga Lecehkan Pesantren Lirboyo? Berujung Tagar Boikot di Medsos\", Klik untuk baca: https://www.suara.com/lifestyle/2025/10/14/114928/apa-acara-trans7-yang-diduga-lecehkan-pesantren-lirboyo-berujung-tagar-boikot-di-medsos.<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br><br></p>', '01K7JVMYC3M44FYZCKXC8RW7KF.webp', 'not_featured', 2, 2, 'apa-acara-trans7-yang-diduga-lecehkan-pesantren-lirboyo-berujung-tagar-boikot-di-medsos', NULL, '2025-10-14 18:37:07', '2025-10-28 17:27:41'),
(3, 'Jujutsu Kaisen Season 3 Rilis Trailer: Si Kembar Zenin Bersatu Lagi ', '<p>Tahunnya Jujutsu Kaisen hadir lagi di kuartal kedua 2026. Setelah penayangan Jujutsu Kaisen Hidden Inventory/ Premature Death di bioskop, detikers tinggal nungguin kelanjutan season ketiga nih.<br><br>Rumah produksinya pun merilis trailer terbaru. detikers bakal melihat si kembar Zenin kembali dimunculin ke dalam cerita, ada Maki dan Mai yang bersatu lagi.<br><br>Mai secara misterius menyuruh Maki buat \'menghancurkan segalanya\'. Adegan singkat dan cuma sepersekian detik sebenarnya adalah salah satu dialog dan momen Mai yang paling ikonis sepanjang serial.<br><br>Momen ini juga jadi pengorbanan terbesarnya demi Maki. Gak terlalu banyak bocoran, pengorbanan Mai inilah yang memungkinkan Mai untuk terakhir kalinya melepaskan potensi sejati dari heavenly Restriction-nya.<br><br>Kabar baiknya, ia bisa sama kuatnya seperti Toji Fushiguro loh. Meskipun Mai terekesan jadi karakter yang gak begitu disukai, kemunculannya di season ketiga bakal ngubah opini penggemar.<br><br>Nah, plot twist berikutnya adalah pembantaian klan Zenin yang jadi pertempuran paling memuaskan dan seru sepanjang seri Jujutsu Kaisen berikutnya. Duh, makin penasaran ya genks.<br><br>FYI nih, season ketiga bakal mengadaptasi Arc Culling Game yang berdarah dan brutal. Cerita di season kali ini diatur oleh Kenjaku. Maki Zenin bakal full power banget nih.<br><br>Baca artikel detikpop, \"Jujutsu Kaisen Season 3 Rilis Trailer: Si Kembar Zenin Bersatu Lagi\" selengkapnya <a href=\"https://www.detik.com/pop/culture/d-8099909/jujutsu-kaisen-season-3-rilis-trailer-si-kembar-zenin-bersatu-lagi\">https://www.detik.com/pop/culture/d-8099909/jujutsu-kaisen-season-3-rilis-trailer-si-kembar-zenin-bersatu-lagi</a>.<br><br></p>', '01K7M3CZJK0FA7TQY3YTAMN61X.jpg', 'featured', 4, 1, 'jujutsu-kaisen-season-3-rilis-trailer-si-kembar-zenin-bersatu-lagi', NULL, '2025-10-14 19:18:03', '2025-10-15 06:11:49'),
(4, 'Timnas Indonesia Cetak Sejarah, Lolos ke Piala Dunia 2026 Usai Tumbangkan Arab Saudi dan Irak', '<p><strong>Jakarta, 12 Oktober 2025</strong> – Timnas Indonesia berhasil mencatatkan sejarah baru di dunia sepak bola. Skuad Garuda resmi memastikan tiket ke <strong>Piala Dunia 2026</strong> setelah menorehkan hasil gemilang di babak keempat kualifikasi zona Asia.</p><p>Dalam laga yang penuh tensi, Indonesia sukses menaklukkan <strong>Arab Saudi 1-0</strong> berkat gol tunggal dari penyerang muda andalannya. Tidak berhenti di situ, Garuda Nusantara semakin percaya diri dengan kemenangan meyakinkan <strong>3-0 atas Irak</strong>. Hasil ini sekaligus menempatkan Indonesia di posisi puncak grup dan memastikan langkah mereka menuju putaran final Piala Dunia.</p><p>Pelatih kepala Indonesia menyebut kemenangan ini adalah buah kerja keras pemain, dukungan suporter, serta persiapan matang yang dilakukan dalam beberapa tahun terakhir.</p><blockquote><em>“Ini bukan hanya kemenangan di lapangan, tapi kemenangan seluruh bangsa. Kami akan berjuang habis-habisan di Piala Dunia nanti,”</em> ujarnya dalam konferensi pers usai laga.</blockquote><p>Keberhasilan ini menjadikan Indonesia sebagai <strong>tim Asia Tenggara pertama yang kembali tampil di Piala Dunia setelah sekian lama absen</strong>. Euforia pun langsung meledak di berbagai kota di tanah air, dengan ribuan suporter turun ke jalan merayakan pencapaian bersejarah ini.</p><p>Dengan tiket resmi ke <strong>Piala Dunia 2026 di Amerika Serikat, Kanada, dan Meksiko</strong>, Timnas Indonesia akan bergabung dengan tim-tim elite dunia. Para penggemar sepak bola di tanah air pun berharap Garuda mampu memberikan kejutan di ajang bergengsi tersebut.</p>', '01K7M38JHMJ54CH4HV44EB0VCY.jpeg', 'featured', 7, 3, 'timnas-indonesia-cetak-sejarah-lolos-ke-piala-dunia-2026-usai-tumbangkan-arab-saudi-dan-irak', NULL, '2025-10-15 06:09:25', '2025-10-15 06:16:37'),
(5, 'Harga Crypto Anjlok, Investor Panik! Ini Pendapat AMIN77', '<p>Pasar kripto kembali menunjukkan tren penurunan signifikan pada pekan ini. Sejumlah aset digital utama seperti <strong>Bitcoin</strong> dan <strong>Ethereum</strong> kompak mengalami koreksi tajam. Bitcoin sempat turun ke level <strong>USD 57.800</strong>, sementara Ethereum berada di kisaran <strong>USD 2.150</strong>, turun lebih dari 5% dalam 24 jam terakhir.</p><p>Penurunan ini didorong oleh kombinasi faktor global, mulai dari penguatan dolar AS, ketidakpastian kebijakan moneter The Fed, hingga aksi ambil untung (profit taking) dari para trader jangka pendek.</p><p>Menurut analis, koreksi seperti ini sebenarnya masih wajar dalam siklus pergerakan pasar kripto. Namun, kepanikan investor ritel kerap memperburuk volatilitas harga.</p><p>Seorang investor profesional, <strong>Amin77</strong>, menilai kondisi ini bisa menjadi peluang bagi mereka yang berpikir jangka panjang.</p><blockquote>“Tren penurunan ini bukan akhir dari segalanya. Justru, bagi investor yang punya strategi dan modal kuat, harga saat ini bisa dianggap sebagai ‘diskon’. Pasar kripto memang dikenal volatil, tapi fundamental jangka panjangnya masih positif,” jelas Amin77.</blockquote><p>Ia menambahkan, investor sebaiknya tidak terburu-buru menjual aset kripto ketika harga turun drastis. Menurutnya, disiplin terhadap rencana investasi lebih penting daripada sekadar mengikuti euforia pasar.</p><p>Meski begitu, Amin77 tetap mengingatkan agar investor pemula berhati-hati dan tidak gegabah.</p><blockquote>“Jangan sampai FOMO atau panik cut loss tanpa pertimbangan. Lakukan riset, pahami manajemen risiko, dan jangan investasikan uang yang tidak sanggup Anda relakan hilang,” ujarnya menutup pernyataan.</blockquote><p>Dengan tren yang terus bergejolak, para pelaku pasar kripto diimbau untuk tetap waspada namun rasional dalam mengambil keputusan investasi.</p>', '01K7M3N1XMFK3MBC2ZVV05KYEV.jpg', 'featured', 2, 3, 'harga-crypto-anjlok-investor-panik-ini-pendapat-amin77', NULL, '2025-10-15 06:16:14', '2025-10-15 06:16:14'),
(6, 'Norwegia Perkasa di Kualifikasi Piala Dunia 2026! Haaland Pimpin Generasi Emas', '<p><strong>Oslo, Norwegia</strong> — Tim nasional Norwegia tampil luar biasa dalam perjalanan mereka di kualifikasi Piala Dunia 2026 zona Eropa. Di bawah kepemimpinan duet bintang <strong>Erling Haaland</strong> dan <strong>Martin Ødegaard</strong>, skuad “Løvene” (The Lions) menunjukkan performa yang konsisten dan penuh dominasi, membuat publik percaya bahwa era kebangkitan sepak bola Norwegia benar-benar telah tiba.</p><h3><strong>Kemenangan Mengesankan di Fase Grup</strong></h3><p>Norwegia memulai kualifikasi dengan hasil yang sensasional. Pada laga penting di Oslo, mereka menumbangkan Italia dengan skor telak <strong>3–0</strong> — kemenangan pertama atas Gli Azzurri dalam lebih dari dua dekade. Haaland menjadi bintang lapangan dengan torehan dua gol, sementara Ødegaard tampil sebagai arsitek permainan di lini tengah.</p><p>Tak berhenti di situ, Norwegia kemudian mencatat kemenangan besar <strong>11–1 atas Moldova</strong> pada laga berikutnya, disusul hasil dominan <strong>5–0 kontra Israel</strong> di mana Haaland mencetak hat-trick dan mencapai milestone 50 gol internasional. Rentetan hasil positif itu menempatkan mereka kokoh di <strong>puncak klasemen Grup I</strong>, unggul jauh dari Italia dan Slovenia yang menjadi pesaing terdekat.</p><h3><strong>Kebangkitan Setelah Dua Dekade</strong></h3><p>Kebangkitan ini menjadi angin segar bagi sepak bola Norwegia, yang terakhir kali tampil di <strong>Piala Dunia 1998</strong> di Prancis. Sejak saat itu, tim nasional mereka kerap gagal lolos ke turnamen besar, meski memiliki sejumlah pemain berbakat. Kini, dengan kombinasi antara pemain muda potensial dan bintang dunia seperti Haaland dan Ødegaard, Norwegia tampak memiliki pondasi kuat untuk kembali ke panggung tertinggi sepak bola internasional.</p><h3><strong>Kekuatan dan Tantangan</strong></h3><p>Meski tajam di lini depan, pelatih <strong>Ståle Solbakken</strong> tetap menekankan pentingnya menjaga keseimbangan tim. Norwegia sempat menunjukkan kelemahan dalam bertahan pada beberapa pertandingan uji coba, dan sektor itu menjadi perhatian utama menjelang laga penentuan berikutnya.</p><p>Selain faktor teknis, tim ini juga dihadapkan pada isu non-teknis. Laga melawan Israel diwarnai oleh protes politik dan pengamanan ketat, menunjukkan bahwa perjalanan menuju Piala Dunia tak hanya ditentukan di lapangan, tetapi juga oleh dinamika di luar pertandingan.</p><h3><strong>Menuju Mimpi Besar</strong></h3><p>Dengan performa yang begitu solid dan semangat juang yang tinggi, Norwegia kini menjadi salah satu tim yang paling difavoritkan untuk lolos langsung ke <strong>Piala Dunia 2026</strong> di Amerika Serikat, Kanada, dan Meksiko.</p><p>Apabila mampu menjaga konsistensi dan mentalitas juara, generasi emas Norwegia ini berpotensi mengakhiri penantian panjang selama 28 tahun untuk kembali tampil di turnamen terbesar dunia.</p><blockquote>“Kami tidak ingin berhenti di sini. Tujuan kami jelas — lolos dan membuktikan bahwa Norwegia pantas bersaing di level dunia,” ujar Haaland setelah kemenangan besar atas Moldova.</blockquote><p>Kemenangan demi kemenangan membuat Norwegia kini bukan lagi tim underdog, melainkan salah satu kekuatan baru di Eropa yang siap mengguncang Piala Dunia 2026.</p>', '01K84XQCWZF1R3N7BSX8C62APW.jpg', 'featured', 7, 1, 'norwegia-perkasa-di-kualifikasi-piala-dunia-2026-haaland-pimpin-generasi-emas', NULL, '2025-10-21 18:59:44', '2025-10-21 18:59:44'),
(7, 'RRQ Pertama Kali Gagal Lolos Play Off MPL ID Setelah 16 Season', '<p>RRQ Hoshi mencatat sejarah buruk di MPL ID S16 2025. Pertama kalinya RRQ gagal lolos ke babak playoff MPL ID sejak debut pada season 1.</p><p>RRQ Hoshi dipastikan gagal lolos playoff MPL ID S16 2025. Hasil ini dipastikan usai RRQ kalah di game 2 melawan NAVI pada Minggu (19/10/2025), malam.</p><p>Kendati skor saat ini masih 1-1 RRQ Hoshi sudah dipastikan gagal lolos playoff MPL ID untuk pertama kali. Pasalnya, jumlah selisih game rate RRQ tidak bisa mengungguli NAVI yang memastikan finis di peringkat 6 klasemen <a href=\"https://tirto.id/hasil-rrq-vs-navi-hari-ini-update-klasemen-mpl-s16-siapa-lolos-playoff-hjXx\">MPL ID S16.</a></p><p>Kegagalan RRQ Hoshi lolos ke playoff MPL ID S16 2025 merupakan catatan terburuk untuk tim berjuluk Raja dari Segala Raja. Pasalnya, sejak debut di season 1, mereka selalu lolos ke babak playoff, termasuk 9 kali ke final dan 4 kali juara.</p><h2>RRQ Hoshi Pertama Kali Gagal Lolos Playoff MPL ID</h2><p>RRQ Hoshi dipastikan gagal lolos ke babak playoff MPL ID S16 2025. Di match penentuan menghadapi NAVI, RRQ kalah di game 2 sehingga peluang mereka ke playoff tertutup.</p><p>Sebelum laga dimulai, peluang RRQ Hoshi lolos ke babak playoff MPL ID S15 2025 masih terbuka. Syaratnya, mereka wajib menang dengan skor game 2-0 atas NAVI yang juga berjuang memperebutkan tiket terakhir.</p><p>Di game 1, RRQ berhasil menjaga asa mereka lolos ke babak playoff. Sempat tertekan di awal game, RRQ Hoshi mampu membalikkan keadaan di mid-game. Mereka pun membalikkan keadaan dan menang dalam durasi 18 menit 28 detik.</p><p>Akan tetapi di game 2, NAVI yang kembali unggul di early game enggan melakukan kesalahan lagi. Laga hidup mati untuk kedua tim berlangsung sengit sejak awal. NAVI yang unggul gold berkali-kali mendapat kesempatan melakukan end-game tetapi RRQ terus mampu bertahan.</p><p>Setelah bertanding selama 25 menit 39 detik, NAVI berhasil memastikan lolos ke babak playoff. Sementara RRQ untuk pertama kalinya gagal melaju ke babak playoff MPL ID.</p><p>Kendati skor game masih 1-1 RRQ Hoshi dipastikan finis di peringkat 7, sedangkan NAVI menempati posisi 6. Meski RRQ menang di game 3, mereka tetap tidak bisa menggeser posisi NAVI karena jumlah selisih game win-rate.</p><h2>Jadi Musim Terburuk RRQ di MPL ID</h2><p>Kegagalan RRQ Hoshi lolos ke playoff MPL ID S16 2025 menjadi hasil terburuk mereka dalam sejarah MLBB. Bahkan, saat finis di posisi 8 MPL ID S3, mereka tetap melaju ke babak playoff dengan sistem liga yang digunakan saat itu.</p><p>Terakhir kali RRQ hampir gagal ke playoff MPL ID adalah season 13. Kala itu, RRQ berada di papan bawah klasemen reguler, tetapi berhasil mengamankan posisi 5 di Week terakhir.</p><p>Situasi RRQ di season 16 sebetulnya tidak jauh berbeda. Sempat tampil apik di awal season, mereka mulai kesulitan meraih kemenangan di Week 3. Berbagai perombakan yang dilakukan gagal membuahkan hasil.</p><p>Puncaknya adalah di Week 9 MPL ID S16 2025. Mereka memiliki 2 kesempatan lolos playoff usai NAVI kalah dari EVOS. Akan tetapi, RRQ justru kalah dari Team Liquid ID 2-0 dan kalah lagi dari NAVI di laga pemungkas.</p><p><br></p>', '01K99068XK2ZJB97RQVP0P0VX7.png', 'not_featured', 7, 2, 'rrq-pertama-kali-gagal-lolos-play-off-mpl-id-setelah-16-season', NULL, '2025-11-04 19:15:28', '2025-11-04 19:20:51'),
(8, 'El Clasico Musim 2024/2025: Dominasi Barcelona Atas Real Madrid', '<p>Barcelona akan kembali menjamu Real Madrid dalam lanjutan pekan ke-35 La Liga 2024/2025. Laga panas bertajuk El Clasico ini dijadwalkan berlangsung Minggu (11/5/2025) malam WIB di Estadi Olimpic Lluis Companys.</p><p>Pertandingan ini menjadi yang keempat antara dua rival abadi tersebut sepanjang musim. Sebelumnya, Barcelona berhasil memenangkan tiga pertemuan awal di semua kompetisi.</p><p>Kemenangan dalam laga nanti akan memperbesar peluang Barcelona untuk menjuarai La Liga. Sementara itu, Real Madrid ingin membalas kekalahan di tiga laga sebelumnya.</p><p>Catatan head to head musim ini jelas memberi keunggulan psikologis bagi tim tuan rumah. Namun, El Clasico selalu menyimpan kejutan yang sulit ditebak hasilnya.</p><p>Barcelona tampil sangat dominan saat bertemu Real Madrid pada musim 2024/2025. Mereka telah mencatatkan tiga kemenangan di tiga ajang berbeda sejauh ini.</p><p>Pertemuan pertama terjadi pada 26 Oktober 2024 di Santiago Bernabeu. Kala itu, Barcelona menghajar Madrid dengan skor telak 4-0 lewat dua gol dari Robert Lewandowski.</p><p>Laga kedua berlangsung pada 12 Januari 2025 di final Piala Super Spanyol. Barcelona kembali menang besar 5-2 di King Abdullah Sports City, Arab Saudi.</p><p>Pertemuan ketiga tersaji di final Copa del Rey pada 26 April 2025. Barcelona mengalahkan Madrid 3-2 lewat perpanjangan waktu dan meraih gelar ke-32 mereka.</p><p>Kemenangan di El Clasico malam ini bisa menentukan nasib perebutan gelar La Liga. Barcelona memimpin klasemen dengan 79 poin dari 34 laga.</p><p>Sementara itu, Real Madrid membuntuti di posisi kedua dengan 75 poin. Mereka membutuhkan kemenangan jika ingin membuka kembali peluang juara.</p><p>Jika Barcelona menang malam ini, selisih menjadi tujuh poin dengan tiga laga tersisa. Dalam kondisi tersebut, Barcelona hanya butuh satu kemenangan tambahan untuk mengunci gelar.</p>', '01K990VBF5N1888S1F41WY87C3.jpg', 'not_featured', 7, 1, 'el-clasico-musim-20242025-dominasi-barcelona-atas-real-madrid', NULL, '2025-11-04 19:26:59', '2025-11-04 19:27:15'),
(9, 'Profil & Biodata Mas Ade: Analis Juara Dunia Sekaligus Streamer Papan Atas', '<p>Mantan analis EVOS Legends, Setiawan “<strong>Hyde O Brien</strong>” Ade kini menjadi salah satu bintang ternama di dunia streaming.</p><p>Setiawan Ade atau yang akrab dipanggil “<strong>Mas Ade</strong>” tersebut aktif dalam streaming MLBB di MPL atau sekedar bermain seperti biasa. Selain streaming MLBB, Setiawan Ade juga senang bermain game casual yang lagi ramai.</p><p>Menjadi pribadi yang lucu dan jenaka, Setiawan Ade menjadi nama favorit bagi penggemar MLBB di seluruh Indonesia. Selain orang mengenal dia karena sempat menjadi bagian dari EVOS Esports, Mas Ade dikenal karena sifatnya yang lucu.</p><p>Terlebih, Setiawan Ade juga aktif memberi edukasi mengenai MLBB hingga memberi saran atau motivasi untuk pemain atau tim MPL dan lainnya.</p><p>Sebagai streamer papan atas, Setiawan Ade juga cenderung melakukan live streaming terkait kegiatan di luar gaming seperti bersosialisasi dan lainnya.</p><p>Mungkin banyak yang ingin mengetahui profil dan biodata Setiawan Ade sebagai analis juara dunia dan streamer papan atas.</p><p>Jangan khawatir, temukan semua informasi di sini.</p><h2><strong>Profil dan Biodata Mas Ade</strong></h2><ul><li><strong>Nama Lengkap</strong>: Ade Setiawan Pamungkas</li><li><strong>IGN</strong>: Hyde O’Brien</li><li><strong>Tanggal Lahir</strong>: 15 Mei 1996</li><li><strong>Kewarganegaraan</strong>: Indonesia</li><li><strong>Role</strong>: Pelatih</li><li><strong>Instagram</strong>: <a href=\"https://www.instagram.com/set1awanade/\">set1awanade</a></li><li><strong>TikTok</strong>: <a href=\"https://www.tiktok.com/@set1awanade?lang=en\">set1awanade</a></li><li><strong>YouTube</strong>: <a href=\"https://www.youtube.com/@set1awanade\">set1awanade</a></li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;456462733_857561279773042_1519107149456995492_n.jpg&quot;,&quot;filesize&quot;:92727,&quot;height&quot;:722,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/v8aTUPsT4O1ZLPhLG08yUpqznw54bHuAhbunS4rW.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/v8aTUPsT4O1ZLPhLG08yUpqznw54bHuAhbunS4rW.jpg&quot;,&quot;width&quot;:1284}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"http://127.0.0.1:8000/storage/v8aTUPsT4O1ZLPhLG08yUpqznw54bHuAhbunS4rW.jpg\"><img src=\"http://127.0.0.1:8000/storage/v8aTUPsT4O1ZLPhLG08yUpqznw54bHuAhbunS4rW.jpg\" width=\"1284\" height=\"722\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">456462733_857561279773042_1519107149456995492_n.jpg</span> <span class=\"attachment__size\">90.55 KB</span></figcaption></a></figure></p><h2><strong>Profil dan biodata Mas Ade – Trivia</strong></h2><p>1. <strong>MENJADI BAGIAN DARI STAF PELATIH EVOS LEGENDS</strong></p><p>Mungkin tidak banyak yang tahu seperti apa awal karier Setiawan Ade atau Mas Ade sebagai pelatih EVOS Legends.</p><p>Mas Ade memulai karier sebagai analis sejak MPL ID Season 3, bersama Bjorn “<strong>Zeys</strong>” Ong menggantikan Gemik. Gagal di Season 3, Mas Ade akhirnya bersama EVOS Legends juara di MPL ID Season 4 membawa sang Macan ke M1 World Championship.</p><p>Tidak hanya lolos ke kejuaraan dunia pertama MLBB di tahun 2019, Mas Ade bersama EVOS Legends pun menjadi juara dunia MLBB pertama di M1. Kemenangan ini sangat berarti bagi Indonesia membawa scene kompetitif MLBB menuju masa jaya.</p><p>Mas Ade pun masih menjadi bagian dari EVOS Legends. Berjuang beberapa musim, EVOS Legends juara MPL ID Season 7, membawa sang Macan mengklaim gelar keduanya di scene kompetitif.</p><p>Akhir perjalanan karier mas Ade bersama EVOS Legends pun berakhir di MPL ID Season 8. Kemudian, dia beralih ke tim MLBB Wanita EVOS Lynx.</p><p>Setelah beberapa waktu rehat, Mas Ade pun secara resmi dilepas oleh EVOS Esports.</p><p>2. <strong>MENJADI PELATIH EVOS LYNX</strong></p><p>Setelah tak lagi bersama EVOS Legends, Mas Ade menjadi pelatih EVOS Lynx berhasil raih prestasi gemilang bersama Pica dkk.</p><p>Salah satu prestasi besar Mas Ade bersama EVOS Lynx adalah membawa gelar juara WSL Season 1 tahun 2020.</p><p>Selain WSL, EVOS Lynx juga menjadi juara turnamen lain seperti Dignity of Srikandi. Setelah hampir 3 musim bersama EVOS Lynx, Mas Ade pamit.</p><p>3. <strong>SUKSES SEBAGAI STREAMER, PUNYA PERSONA LUCU DAN KRITIS</strong></p><p>Rehat dari scene kompetitif, Mas Ade kemudian beralih menjadi streamer.</p><p>Namun, sebagai streamer ia tidak hanya bermain MLBB saja. Mas Ade juga senang bermain game casual yang sedang populer.</p><p>Terkadang ia bermain dengan sendiri, atau mengajak teman seperti DeanKT, Mada Rahadian atau streamer lainnya atau bersama sang kekasih.</p><p>Mas Ade kerap memperlihatkan berbagai keunikan saat streaming. Terlebih saat menonton MPL, tidak jarang ia memberi kritik terhadap pemain atau tim yang kurang baik. Namun, ia juga senang melakukan prediksi draft hero.</p><p>Biasanya, Mas Ade juga tak canggung untuk streaming bareng petinggi tim. Misalnya CEO RRQ, Pak AP beberapa kali ia ajak untuk kolaborasi.</p><p>Saat ini, mas Ade diketahui menjadi salah satu streamer gaming yang cukup sukses. Ke depannya siapa tahu dia bisa bersaing di level top tier dunia.</p><h2><strong>Profil dan biodata Mas Ade – Perjalanan karier dan prestasi</strong></h2><p>Berikut adalah perjalanan karier Mas Ade di scene kompetitif:</p><ul><li><strong>EVOS Legends</strong> – (1/3/2019 – 20/1/2021)</li><li><strong>EVOS Lynx</strong> – (20/1/2021 – 1/12/2021)</li></ul><p>Berikut adalah pencapaian prestasi Mas Ade di scene kompetitif:</p><ul><li>1ST PLACE – Indonesia Esports National Championship/IENC (2019)</li><li>1ST PLACE – MPL Indonesia Season 4 (2019)</li><li>1ST PLACE – M1 World Championship (2019)</li><li>2ND PLACE – MPL Indonesia Season 5 (2020)</li><li>1ST PLACE – MPL Indonesia Season 7 (2021)</li><li>3RD PLACE – MLBB Southeast Asia Cup/MSC (2021)</li><li>3RD PLACE – MPL Indonesia Season 8 (2021)</li></ul><p><br><br></p>', '01K991ATHE3M7K8R6J113HCF8Q.jpg', 'not_featured', 4, 1, 'profil-biodata-mas-ade-analis-juara-dunia-sekaligus-streamer-papan-atas', NULL, '2025-11-04 19:35:26', '2025-11-04 19:35:26'),
(10, 'Film Animasi Merah Putih: One For All Buatan Siapa? Ini Sosok & Biayanya ', '<p>Kemunculan film animasi karya anak bangsa terbaru semakin menarik perhatian publik, tak terkecuali adanya Merah Putih: One For All yang belakangan ini viral. Namun demikian, di balik viralnya film tersebut tidak sedikit orang yang mungkin menyimpan rasa penasaran terkait siapa pembuat film Merah Putih: One For All?<br>Sebagaimana diketahui, baru-baru ini ada sebuah trailer film animasi karya anak bangsa bertajuk Merah Putih: One For All yang berhasil mencuri atensi berbagai kalangan masyarakat di Indonesia. Terlebih lagi film ini mengusung tema yang erat kaitannya dengan cinta Tanah Air dan ditayangkan mendekati momentum Proklamasi Kemerdekaan.<br>Namun demikian, ada berbagai alasan di balik hangatnya perbincangan terhadap film ini. Termasuk sosok yang ada di balik layar pembuatan film Merah Putih: One For All.<br>Lantas, siapa sutradara dan pembuat film Merah Putih: One For All? Simak ulasan singkatnya berikut ini, yuk!</p><h2><strong>Sinopsis Film Merah Putih: One For All</strong></h2><p>Sebelum mengetahui sosok sutradara dan juga pembuat film animasi Merah Putih: One For All, terlebih dahulu mari memahami terlebih dahulu sinopsis atau alur cerita yang tersaji di dalam karya ini. Dikutip dari salah satu laman bioskop di Tanah Air, sinopsis Merah Putih: One For All berfokus pada sebuah desa yang tengah antusias dalam menyambut datangnya Hari Kemerdekaan Indonesia.<br>Di tengah-tengah persiapan peringatan tersebut, ada anak-anak yang dipilih secara khusus sebagai Tim Merah Putih yang ditugaskan untuk menjaga bendera Sang Merah Putih. Sayangnya, sebelum upacara dimulai bendera tersebut justru dinyatakan hilang. Kondisi ini membuat penduduk sekitar tidak tinggal diam.<br>Dipilihnya delapan anak dari berbagai latar belakang budaya untuk ditugaskan dalam aksi heroik, yaitu mencari bendera Sang Merah Putih yang hilang secara misterius. Tak hanya terlibat dalam misi mencari bendera yang hilang, anak-anak ini juga dihadapkan pada berbagai rintangan.<br>Mereka harus menembus sungai, hutan, dan juga badai. Bahkan mereka juga harus mengatasi perbedaan yang ada demi satu tujuan yang ada, yaitu memastikan bendera berkibar di Hari Kemerdekaan pada tanggal 17 Agustus nantinya.<br>Berkat keberanian, kerja sama, dan rasa cinta Tanah Air yang tinggi mereka dapat menyatukan perbedaan yang ada dan membentuk kekuatan untuk mewujudkannya. Lantas, mampukah mereka melakukannya?<br>Sebagai informasi, film animasi Merah Putih: One For All dijadwalkan tayang sejak tanggal 14 Agustus 2025. Artinya, film ini tayang sekiranya 3 hari sebelum peringatan Proklamasi Kemerdekaan yang jatuh pada 17 Agustus 2025 mendatang.</p><h2><strong>Pembuat Film Merah Putih: One For All</strong></h2><p>Salah satu hal yang cukup membuat penasaran publik tentang adanya film Merah Putih: One For All adalah sosok di balik pembuatan karya ini. Seperti yang diketahui, sebuah film tentu memiliki orang-orang yang ada di balik layar dan bertanggung jawab terhadap kemunculan karya tertentu.<br>Tidak terkecuali film animasi Merah Putih: One For All yang juga memiliki tim produksi tersendiri. Mengutip dari unggahan Instagram @totosoegriwo pada (9/7/2025) lalu terungkap produser film ini adalah Toto Soegriwo. Kemudian film ini juga dibuat dengan melibatkan beberapa pihak.<br>Sebut saja eksekutif produser bernama Endiarto, asisten produser yaitu Arry WS, dan animator bernama Bintang Takari. Film ini sendiri digarap oleh Perfiki Kreasindo.<br>Tak hanya mengungkap orang-orang di balik pembuatan film Merah Putih: One For All, di dalam unggahan yang sama turut diuraikan tentang sinopsis yang berasal dari tim produksinya. Adapun sinopsis film Merah Putih: One For All menurut unggahan tersebut berbunyi:<br>\"Bercerita tentang 8 anak dari berbagai latar budaya, suku dan etnis, yang diberi tugas oleh kepala desa untuk mencari bendera Merah Putih yang hilang. Mereka harus melewati berbagai rintangan demi menemukan kembali Merah Putih yang esok hari akan dikibarkan pada upacara 17 Agustus. Akankah mereka menemukan bendera itu?\"</p><h2><strong>Biaya Produksi Film Merah Putih: One For All</strong></h2><p>Lantas, berapa biaya produksi film animasi Merah Putih: One For All? Dilansir detikNews, film yang disutradarai dan ditulis oleh Endiarto serta Bintang Takari ini disebut-sebut menghabiskan biaya produksi yang mencapai Rp 6,7 miliar. Menariknya, proses pengerjaannya tidak membutuhkan waktu yang lama.<br>Dikatakan proses produksi film Merah Putih: One For All hanya dalam kurang dari satu bulan saja. Hal inilah yang membuat masyarakat dari berbagai kalangan menaruh atensi terhadap proses pembuat film ini.<br>Seperti yang telah disinggung sebelumnya, rumah produksi film ini adalah Perfiki Kreasindo. Dikutip dari laman detikPop, Perfiki Kreasindo bukanlah Badan Usaha Milik Negara (BUMN) atau di bawah naungan pemerintah. Sebaliknya, Perfiki Kreasindo adalah sebuah rumah produksi yang berada di bawah naungan Yayasan Pusat Perfilman H Usmar Ismail.<br>Yayasan tersebut merupakan yayasan nirlaba yang berfokus pada kemajuan perfilman Tanah Air. Terkait dengan sumber biaya pembuatan film Merah Putih, sang sutradara bernama Endiarto mengungkapkannya saat hadir dalam program detikpagi.<br>\"Ini sumbangsih kami, biayanya juga kami gotong royong. Jadi semua termasuk dubber dan kru kita gak pake orang-orang yang top. Kalau kita pakai orang-orang yang sudah punya nama, dari mana kita bisa kasih mereka apresiasi. Kita urunan gotong royong sama mereka yang punya niat, nah gotong royongnya jangan salah juga. Kita bukan gotong royong dalam bentuk uang, tapi effortnya,\" jelas Endiarto selaku sutradara Merah Putih: One For All, dikutip pada Senin (11/8/2025).<br>Lebih lanjut, sutradara Endiarto juga menyebut tidak ada uang yang turun dari pihak formal maupun informal. Dirinya turut menegaskan biaya produksi berasal dari pihak mereka.<br>\"Kami berharap ada pihak formal dan non-formal men-support kami. Tapi gak ada sepeserpun duit yang turun. Semua dari dana pribadi,\" lanjut Endiarto.<br><br>Baca artikel detikjogja, \"Film Animasi Merah Putih: One For All Buatan Siapa? Ini Sosok dan Biayanya\" selengkapnya <a href=\"https://www.detik.com/jogja/budaya/d-8055580/film-animasi-merah-putih-one-for-all-buatan-siapa-ini-sosok-dan-biayanya\">https://www.detik.com/jogja/budaya/d-8055580/film-animasi-merah-putih-one-for-all-buatan-siapa-ini-sosok-dan-biayanya</a>.</p>', '01K9923M80AZXB8A4KR2Z2ZDK9.jpeg', 'not_featured', 4, 1, 'film-animasi-merah-putih-one-for-all-buatan-siapa-ini-sosok-biayanya', NULL, '2025-11-04 19:48:59', '2025-11-04 19:48:59'),
(11, 'Pemimpin Sekte Ulti Nolan, Timothy Ronald Senggol Komunitas Mobile Legends dan LoL', '<p>Timothy Ronald, seorang finfluencer TikTok yang terkenal, kembali menjadi sorotan publik setelah menyenggol komunitas Mobile Legends dan League of Legends dengan pernyataan kontroversialnya.</p><p>Timothy, yang dikenal sebagai pemimpin Sekte Ulti Nolan, memiliki banyak pengikut yang memakai logo A terbalik, menyerupai skill Ultimate Nolan dalam Mobile Legends. Pengikut Sekte Ulti Nolan ini menggunakan logo A terbalik sebagai foto profil atau bahkan pada kaos mereka.</p><p>Menanggapi fenomena ini, Timothy memutuskan untuk mencoba game Mobile Legends dan memposting kesan pertamanya di Twitter dengan mengatakan, \"<em>Pemanasan dulu gampang bener ternyata moba analog. Anak lol/dota main ini bisa sambil merem kayaknya beli item sambil jalan😂</em>\".</p><p>Sebelumnya, Timothy juga pernah mengklaim kemampuan belajarnya yang cepat di atas rata-rata, bahkan dalam hal game. Dia menyatakan, \"<em>Kalo punya waktu main mobile legend, kasih gua 1 minggu, gua pasti bisa main diatas 99% rata2 pemain.</em>\"</p><p>Pernyataan tersebut menyenggol komunitas Mobile Legends. Sebab secara tak langsung, Timothy menganggap remeh MLBB. Banyak dari gamer MLBB yang menantang Timothy untuk memainkan hero Nolan sampai jadi top global.</p><p>Tak berhenti di situ, Timothy juga mengklaim sebagai Best Lee Sin di Indonesia. Sebagai pemain League of Legends, Timothy menyebutkan bahwa dia sering dibanned dalam turnamen dan memiliki peringkat kedua tertinggi dalam ladder win rate. Namun, klaim ini mendapat ragam respons dari komunitas LoL, termasuk bantahan dari mantan caster LoL, Adji Sven, yang meragukan gelar Best Lee Sin Indo yang diklaim oleh Timothy.</p><p>Timothy Ronald tampaknya tidak gentar dalam menarik perhatian publik. Pernyataannya kerap menimbulkan perdebatan dan diskusi di antara komunitas-komunitas yang berbeda. Setelah sempat ramai di skena kopi, kini giliran dunia game yang disinggungnya.</p>', '01K995QT1A80A7YTJPJF3HJCAG.webp', 'not_featured', 2, 2, 'pemimpin-sekte-ulti-nolan-timothy-ronald-senggol-komunitas-mobile-legends-dan-lol', NULL, '2025-11-04 20:52:26', '2025-11-04 20:52:26'),
(12, 'Apa Itu Malaka Project & Siapa Saja Pendirinya?', '<p>Belakangan ini, Malaka Project diperbincangkan oleh banyak pihak. Lantas, apa itu Malaka Project dan siapa pendirinya? Simak ulasan lengkapnya berikut.</p><p>Malaka Project merupakan gerakan kolaborasi dan <em>platform</em> edukasi digital yang membahas isu sosial, politik, ekonomi, hingga filsafat. Dalam berbagai unggahannya, Malaka Project memberikan informasi edukasi yang mudah dipahami.</p><p>Terbaru, Komandan Satuan Siber (Dansatsiber) TNI, Brigjen J.O. Sembiring, dan sejumlah perwakilan Mabes TNI lainnya mendatangi Polda Metro Jaya untuk melakukan konsultasi terkait temuan dugaan pidana yang dilakukan kreator konten <a href=\"https://tirto.id/tni-sebut-ada-dugaan-pidana-ke-ferry-irwandi-terkait-kasus-apa-hhoW\">Ferry Irwandy</a>, CEO Malaka Project, melalui unggahan pernyataannya yang beredar di media sosial.</p><h2>Profil Malaka Project</h2><p>Nama Malaka Project santer diberitakan saat para pendirinya turut menyuarakan aspirasi dalam gelombang demonstrasi yang terjadi beberapa hari terakhir.</p><p>Malaka Project diluncurkan pada 20 Oktober 2023 di Djakarta Theatre. Gerakan ini lahir dilatarbelakangi oleh kondisi sosial politik di Indonesia, seperti polarisasi politik, maraknya konten media sosial yang tidak mendidik, hingga rendahnya literasi di Tanah Air.</p><p>Malaka Project hadir sebagai media alternatif yang menyuguhkan informasi penting dan mendalam. Sebagai platform digital yang baru berusia dua tahun, Malaka Project didirikan oleh beberapa orang yang berasal dari berbagai latar belakang.</p><p>Berikut nama-nama pendiri Malaka Project, mengutip unggahan <em>@</em><a href=\"https://www.instagram.com/p/DM-RqQQyMDq/?utm_source=ig_embed&amp;ig_rid=b2add3b0-94fb-469f-9468-10c0e0263913\"><em>malakaproject.id</em></a>:</p><ol><li>Ferry Irwandi</li><li>Jerome Polin</li><li>Dea Anugrah</li><li>Cania Citta Irlanie</li><li>Angellie Nabila</li><li>Coki Pardede</li><li>Aurelia Vizal</li><li>Fathia Izzati</li><li>Rifky Adi Prakoso</li></ol><p>Melalui <a href=\"https://tirto.id/delpedro-ditangkap-karena-unggah-poster-jangan-takut-melawan-hg5K\">unggahan</a> video di akun Instagram dan kanal Youtube, sembilan tokoh di atas berjibaku menghadirkan konten yang mengajak masyarakat untuk berpikir kritis, menekankan pada data ilmiah, empati, serta logika yang sehat.</p><p>Berdasarkan unggahan kanal Youtube Malaka Project, platform ini aktif menggelar podcast yang membahas beragam isu dan menghadirkan pembicara yang relevan. Terbaru, kanal <a href=\"https://www.youtube.com/watch?v=iBJEaIjjEEw\">Youtube Malaka Project</a> menayangkan podcast bersama Tom Lembong yang membahas tentang kejanggalan hukum di Indonesia.</p><p>Kemudian, sejumlah pendiri Malaka Project juga hadir langsung di depan Gedung DPR untuk menyuarakan dan mendesak <a href=\"https://tirto.id/cek-link-update-tuntutan-rakyat-178-target-1-minggu-1-tahun-hg6m\">17+8 Tuntutan Rakyat</a>. Malaka Project juga menghadirkan beragam rubrik di kanal Youtube seperti Kelas Pakar yang berisi wawancara bersama pakar lintas bidang.</p><p>Kemudian, acara Bermatematika bersama Jerome Polin, Why So Serious bersama Coki Pardede, hingga Malaka Cinematic Podcast yang membahas isu sosial, budaya, sampai filsafat.</p><p>Gerakan ini juga memiliki program beasiswa seperti Kapal Api x Malaka Project Leadership Program yang memberi pelatihan intensif untuk 90 mahasiswa dalam bidang penalaran, komunikasi, dan bisnis. Dari jumlah tersebut, 9 peserta terbaik mendapatkan beasiswa pendidikan sebesar Rp12 juta per orang.</p><p>Mengutip bio instagramnya, Malaka Project sedang perjalanan mendirikan mendirikan Kampus Malaka, pendidikan alternatif dengan kurikulum interdisipliner yang menggabungkan teori kritis, praktik, serta studi lintas bidang.</p><p>Tak hanya itu, Malaka Project x Kapal Api Goes To Campus juga bagian dari program edukasi dan motivasi yang digelar di bebrbagai kampus yang telah melakukan Kerjasama.</p><p>Malaka Project menjadi ruang belajar kolektif yang memiliki misi besar untuk menciptkan masyarakat baru yang dapat berpikir kritis, berdasar pada data ilmiah, memiliki empati, memberikan solusi nyata.</p><p><br><br></p>', '01K9965ZDB7AGPYSMYPJPWRRVE.jpg', 'not_featured', 2, 1, 'apa-itu-malaka-project-siapa-saja-pendirinya', NULL, '2025-11-04 21:00:10', '2025-11-04 21:00:10'),
(13, 'Daftar Tim Lolos M7 World Championship: Alter Ego Kembali setelah 5 Musim Absen', '<p>Beberapa tim belahan dunia sudah memastikan tiket ke <a href=\"https://www.tribunnews.com/tag/m7-world-championship\">M7 World Championship</a>, ajang <a href=\"https://www.tribunnews.com/tag/mobile-legends\">Mobile Legends</a> paling bergengsi di akhir tahun ini.</p><p>Turnamen yang bakal digelar di Jakarta, Indonesia, tersebut menghadirkan 22 tim terbaik dari berbagai regional, termasuk wakil Indonesia yang kembali diisi oleh <a href=\"https://www.tribunnews.com/tag/onic\">ONIC</a> Esports dan <a href=\"https://www.tribunnews.com/tag/alter-ego\">Alter Ego</a>.</p><p>Dari 22 tim tersebut, 14 diantaranya otomatis lolos ke tahap Swiss Stage (fase grup).</p><p>Sedangkan 8 tim lainnya yang tergabung dalam babak Wildcard akan berjuang untuk memperebutkan 2 tiket terakhir untuk lolos ke babak fase grup.</p><p>Setelah penantian panjang, <a href=\"https://www.tribunnews.com/tag/alter-ego\">Alter Ego</a> akhirnya memastikan diri kembali ke panggung dunia usai lolos ke grand final <a href=\"https://www.tribunnews.com/tag/mpl-id\">MPL ID</a> Season 16.</p><p>Sayangnya, di babak grand final <a href=\"https://www.tribunnews.com/tag/alter-ego\">Alter Ego</a> tumbang di tangan <a href=\"https://www.tribunnews.com/tag/onic\">ONIC</a> dengan skor 4-1 (2/11).</p><p>Meski begitu, Alter Ego tetap memastikan diri lolos sebagai wakil Indonesia untuk menemani ONIC.</p><p>Kembalinya <a href=\"https://www.tribunnews.com/tag/alter-ego\">Alter Ego</a> menjadi momen emosional bagi para fans, mengingat terakhir kali tim ini tampil di ajang M-Series adalah pada M2 tahun 2021 di Singapura.</p><p>Kali ini, Nino dan kolega siap membuktikan bahwa <a href=\"https://www.tribunnews.com/tag/alter-ego\">Alter Ego</a> masih bisa bersaing di level tertinggi dunia.</p><p>Dengan gaya bermain agresif dan drafting tak terduga dari Coach Xepher, <a href=\"https://www.tribunnews.com/tag/alter-ego\">Alter Ego</a> diprediksi menjadi kuda hitam berbahaya di M7.</p><p>Sementara itu, <a href=\"https://www.tribunnews.com/tag/onic\">ONIC</a> Esports kembali menjadi wakil utama Indonesia usai tampil konsisten sepanjang musim.</p><p>Tim berjuluk “Landak Kuning” tersebut kini memburu gelar dunia yang gagal mereka raih di M5, ketika harus puas di posisi runner-up setelah dikalahkan AP Bren dengan skor 3-4 di laga final.</p><p>Dengan masih mempertahankan line-up Kairi dan Sanz yang menjadi tulang punggung, <a href=\"https://www.tribunnews.com/tag/onic\">ONIC</a> diharapkan mampu membawa pulang trofi M-Series pertama untuk Indonesia sejak EVOS Legends juara di M1 (2019).</p><p>Sejauh ini sudah ada 7 tim yang memastikan diri lolos termasuk <a href=\"https://www.tribunnews.com/tag/alter-ego\">Alter Ego</a> dan <a href=\"https://www.tribunnews.com/tag/onic\">ONIC</a>.</p><p>Sementara dari region terkuat yakni Filipina, akan diwakili oleh Team Liquid PH dan Aurora Gaming PH.</p><p><br></p><p>Artikel ini telah tayang di <a href=\"https://www.tribunnews.com/\">Tribunnews.com</a> dengan judul Daftar Tim Lolos M7 World Championship: Alter Ego Kembali setelah 5 Musim Absen, <a href=\"https://www.tribunnews.com/e-sport/7750396/daftar-tim-lolos-m7-world-championship-alter-ego-kembali-setelah-5-musim-absen\">https://www.tribunnews.com/e-sport/7750396/daftar-tim-lolos-m7-world-championship-alter-ego-kembali-setelah-5-musim-absen</a>.</p>', '01K9A1HVF315633B089R95C866.jpg', 'not_featured', 7, 1, 'daftar-tim-lolos-m7-world-championship-alter-ego-kembali-setelah-5-musim-absen', NULL, '2025-11-05 04:58:31', '2025-11-05 04:58:31'),
(14, 'Siapa Penemu Kamera Depan Sebenarnya? Fery Suriadi Atau Robert Cornelius?', '<p>&nbsp;Siapa penemu kamera depan? Pertanyaan ini tiba-tiba ramai diperbincangkan setelah munculnya fenomena lucu \"Aduh Kamera Depan\" yang viral berkat sosok Fery Suriadi.&nbsp;</p><p>Fery bahkan mendapat julukan \"Robert Ferry Cornelius Suriadi\" dari netizen, yang merupakan plesetan dari nama penemu foto pertama di dunia, <a href=\"https://www.suara.com/tag/robert-cornelius\"><strong>Robert Cornelius</strong></a>.Momen spontan Fery yang tak sengaja merekam wajahnya sendiri dengan kamera depan menjadi bahan tawa dan kreativitas netizen di berbagai platform.&nbsp;</p><p>Lantas, siapa sebenarnya sosok Fery Suriadi yang saat ini viral sebagai \"penemu kamera depan\"? Berikut ulasan lengkapnya.Sebelum viral, Fery merupakan pemuda asal Sumatera Utara yang gemar membuat konten ringan tentang motor klasik, terutama Honda CB, dan keseharian di kampung halamannya. <br><a href=\"https://www.suara.com/tag/meme\"><strong>Meme</strong></a> \"Aduh kamera depan\" yang melejitkan namanya berawal pada 5 Oktober 2025, saat akun TikTok @fery_suriadi28 mengunggah sebuah video.</p><p>Dalam video itu, Fery tampak tengah menonton balapan liar di pinggir jalan. Namun, alih-alih merekam aksi balapan, ia justru tanpa sadar menyalakan kamera depan di ponselnya.</p><p>Bukannya motor yang terekam, tapi wajahnya sendiri yang tampak tegang dan fokus menyaksikan balapan.&nbsp;<br>Di akhir video, ia terlihat kaget dan spontan berucap, \"Aduh kamera depan,\" yang kemudian menjadi kalimat viral dan dijadikan lucu-lucuan di media sosial.</p><p>Ekspresi Fery yang polos, jujur, dan <em>comical</em> membuat para netizen terpingkal. Potongan videonya pun menyebar cepat ke TikTok, X, hingga Instagram.</p><p>Tak butuh waktu lama, wajah Fery berubah menjadi bahan meme nasional. Netizen mulai mengedit tangkapan layar wajah tegang Fery menjadi berbagai versi dari karakter film, tokoh kartun, anime, caddy golf, dan masih banyak lagi.</p><p>Bahkan muncul istilah \"skin Fery Suriadi\", layaknya pilihan kostum dalam game. Wajah Fery muncul di berbagai kolom komentar, video parodi, hingga challenge \"kamera depan\" yang menirukan ekspresinya.</p><p>Uniknya, Fery sama sekali tidak tersinggung dengan hal ini. Ia justru ikut tertawa dan bahkan membagikan ulang hasil editan netizen di akun TikTok-nya.</p><p>Kini, popularitasnya meroket. Akun TikTok miliknya sudah diikuti lebih dari 189 ribu pengguna.</p><p><strong>Lantas Siapa Sebenarnya Penemu </strong><a href=\"https://www.suara.com/lifestyle/2025/10/24/110238/siapa-penemu-kamera-depan-viral-meme-fery-suriadi-jadi-robert-cornelius?page=2#\"><strong>&nbsp;</strong><strong style=\"text-decoration: underline;\">Kamera</strong></a><strong> Depan?</strong></p><p>Di tengah ramainya <a href=\"https://www.suara.com/tag/meme\"><strong>meme</strong></a> \"Aduh <a href=\"https://www.suara.com/lifestyle/2025/10/24/110238/siapa-penemu-kamera-depan-viral-meme-fery-suriadi-jadi-robert-cornelius?page=2#\">&nbsp;<span style=\"text-decoration: underline;\">kamera</span></a> depan\", beberapa netizen iseng menyebut Fery sebagai \"<a href=\"https://www.suara.com/tag/robert-cornelius\"><strong>Robert Cornelius</strong></a> versi modern\".</p><p>Robert Cornelius adalah seorang penemu dan fotografer asal Amerika Serikat yang pada tahun 1839 berhasil membuat self-portrait pertama di dunia, yaitu berupa foto dirinya sendiri menggunakan kamera yang ia rakit secara manual.</p><p>Momen itu dianggap sebagai awal mula konsep kamera depan yang kini akrab di genggaman kita.</p><p>Saat itu, Cornelius membuat potret dirinya di depan toko keluarganya di Philadelphia.</p><p>Karena teknologi masih sangat sederhana, ia harus berpose diam selama 10 hingga 15 menit agar gambar bisa tertangkap jelas di pelat logam. Foto itu kini dikenal sebagai selfie pertama dalam sejarah.</p><p>Inilah menariknya fenomena \"kamera depan\" yang muncul berkat Fery Suriadi.&nbsp;<br>Di saat Robert Cornelius berpose serius untuk mengabadikan momen sejarah, Fery justru tanpa sengaja menciptakan momen lucu yang menghibur jutaan orang.</p><p><br>Artikel ini telah tayang di Suara.com dengan judul \"Siapa Penemu Kamera Depan? Viral Meme Fery Suriadi Jadi Robert Cornelius\", Klik untuk baca: https://www.suara.com/lifestyle/2025/10/24/110238/siapa-penemu-kamera-depan-viral-meme-fery-suriadi-jadi-robert-cornelius.</p>', '01K9A287DHT6RAG8HF0SQS1Y2R.png', 'not_featured', 2, 2, 'siapa-penemu-kamera-depan-sebenarnya-fery-suriadi-atau-robert-cornelius', NULL, '2025-11-05 05:10:44', '2025-11-05 05:10:44'),
(15, 'Membongkar Makna Lagu Multo dari Cup of Joe, Bagai Kenangan yang Menghantui', '<p>Lagu “<strong>Multo</strong>” karya band pop-rock asal Filipina, <strong>Cup of Joe</strong>, tengah menjadi fenomena viral di Asia Tenggara. Dengan melodi melankolis dan lirik puitis, lagu ini berhasil menyentuh hati banyak pendengar lintas negara. Meski judulnya berarti “hantu” dalam bahasa Tagalog, “Multo” sama sekali bukan lagu bertema horor. Sebaliknya, lagu ini merupakan metafora tentang luka batin dan kenangan masa lalu yang tak kunjung sirna. Cup of Joe menggunakan sosok “hantu” sebagai simbol dari perasaan yang belum selesai, entah itu cinta, penyesalan, atau versi diri yang sudah lama ditinggalkan. “Binaon naman na ang lahat, tinakpan naman na ’king sugat,” (Semua sudah dikubur, lukaku sudah tertutup), Lirik ini menyingkap perjuangan untuk berdamai dengan masa lalu, meski perasaan itu terus kembali menghantui di kesunyian malam. Hantu dalam “Multo” bukanlah makhluk dari dunia lain, melainkan bayangan emosional yang hidup dalam ingatan seseorang — perasaan yang enggan mati meski telah dikubur dalam-dalam.</p><h2><strong>Luka yang Tak Kunjung Sembuh&nbsp;</strong></h2><p>Salah satu baris paling menyentuh dalam lagu ini, “Ako ay dahan-dahang nililibing nang buhay pa” (Aku perlahan-lahan dikubur hidup-hidup), Menjadi representasi sempurna bagi siapa pun yang pernah merasa terperangkap dalam kenangan menyakitkan.<br>Perasaan itu begitu universal, rasa hampa ketika seseorang berusaha melupakan, tetapi hati tetap menolak untuk melepaskan. Tak heran jika banyak pendengar mengaku merasa “minumulto” oleh perasaan mereka sendiri.&nbsp;</p><h2><strong>Lebih dari Sekadar Lagu</strong></h2><p>Keberhasilan “Multo” tak hanya karena keindahan melodi dan kekuatan vokal Cup of Joe, tetapi juga karena pesan emosionalnya yang universal. Lagu ini bukan sekadar tentang mantan kekasih, tetapi juga bisa dimaknai sebagai penyesalan atas impian yang gagal, peluang yang terlewat, atau kehilangan orang yang dicintai.<br>Cup of Joe berhasil menyalurkan rasa kehilangan dan penyesalan menjadi sesuatu yang indah dan bisa dipahami semua orang, tanpa batas bahasa maupun budaya.</p><h2><strong>Menegaskan Posisi Cup of Joe di Kancah OPM&nbsp;</strong></h2><p>Dengan “Multo”, Cup of Joe menegaskan posisi mereka sebagai salah satu band paling emosional dan puitis dalam skena Original Pilipino Music (OPM). Lagu ini bukan hanya menambah daftar karya sukses mereka, tetapi juga membuka ruang diskusi baru tentang kedalaman makna dan kekuatan lirik dalam musik Filipina modern. “Multo” mengingatkan kita bahwa hantu paling menakutkan bukanlah makhluk gaib, melainkan perasaan dan kenangan yang terus hidup di dalam diri — menolak untuk pergi meski kita sudah berusaha melepaskannya.<br><br></p>', '01K9A3WP0MMFDTMF7VB0E0SG67.jpg', 'not_featured', 4, 6, 'membongkar-makna-lagu-multo-dari-cup-of-joe-bagai-kenangan-yang-menghantui', NULL, '2025-11-05 05:39:23', '2025-11-05 05:39:23');
INSERT INTO `article_news` (`id`, `name`, `content`, `thumbnail`, `is_featured`, `category_id`, `author_id`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(16, 'Mengenal Simo Häyhä, Sniper Finlandia yang Jadi Mimpi Buruk Tentara Uni Soviet', '<p>Uni Soviet dan Finlandia pernah bertempur dalam sebuah peperangan yang dikenal dengan nama Winter War (30 November 1939–13 Maret 1940). Pada momen tragis tersebut, mencuat sejumlah tokoh yang tercatat dalam <a href=\"https://www.idntimes.com/tag/sejarah-dunia\">sejarah dunia</a>. Salah satunya ialah Simo Hayha, seorang pejuang Finlandia yang kemampuan snipernya menjadi mimpi buruk tentara Uni Soviet.</p><p>Hayha dikenal sebagai sosok <a href=\"https://www.idntimes.com/tag/penembak\">penembak</a> jitu yang paling mematikan dalam sejarah militer. Dengan keterampilan menembak dan pemahaman medan, ia berhasil menewaskan ratusan tentara Uni Soviet pada Winter War. Ia menjadi simbol ketangguhan Finlandia melawan penjajahan Uni Soviet.</p><h2>1. Kehidupan Simo Hayha sebelum Winter War</h2><p>Simo Hayha lahir pada 17 Desember 1905 di kota kecil Rautjarvi, Karelia. Tanah kelahirannya merupakan bagian dari Finlandia sejak 1917. Namun, wilayah tersebut menjadi tujuan utama penyerangan Uni Soviet ke Finlandia pada Winter War.</p><p>Hayha tumbuh besar di keluarga petani di pedesaan bersalju. Hal tersebut menuntutnya untuk bisa berburu, menembak, dan menggunakan ski es sejak masih muda. Kemampuan itulah yang menjadi dasar atas kemampuannya bertahan hidup dan berperang pada Winter War.&nbsp;</p><p>Selain itu, Hayha juga tercatat pernah menjalani pelatihan wajib militer sebelum Winter War. Ia tergabung dalam organisasi paramiliter Finlandia yang bernama <em>Suojeluskunta </em>atau Satuan Penjaga Sipil. Pengalaman tersebut menambah daya juang dan wawasannya dalam bertahan dan menggunakan senjata</p><h2>2. Peran besar Simo Hayha pada Winter War</h2><p>Ketika Uni Soviet menyerbu Finlandia pada akhir 1939, Simo Hayha bertugas sebagai penembak jitu di Divisi Infanteri 6. Ia ditempatkan di medan pertempuran yang ekstrem, dengan kondisi bersalju dan suhu yang mencapai -20 derajat Celcius. Meski begitu, itu bukan masalah besar baginya.</p><p>Saat perang berlangsung, Hayha biasa menyamar dengan pakaian putih dan beroperasi secara mandiri di tengah hutan Karelia. Ia harus berhadapan dengan ribuan pasukan musuh, termasuk para penembak jitunya. Namun, karena kemampuannya, ia sangat sulit dideteksi dan sangat menyulitkan musuh.&nbsp;</p><p>Selama Winter War, Hayha dilaporkan menewaskan lebih dari 500 tentara Uni Soviet. Karena keefektifan dan kesenyapannya di medan perang, musuh pun menjulukinya sebagai <em>Belaya Smert</em> atau <em>White Death</em>. Ia benar-benar menjadi mimpi buruk bagi para Tentara Uni Soviet kala itu.</p><h2>3. Teknik dan strategi jitu Simo Hayha</h2><p>Simo Hayha ternyata tak dilengkapi senjata canggih dalam aksinya. Ia hanya menggunakan senapan Mosin Nagant M28-30, senapan standar yang tidak dilengkapi teleskop. Ia lebih memilih menggunakan bidikan besi ketimbang teleskop dengan alasan untuk menghindari pantulan cahaya dari lensa dan menjaga posisi tetap tersembunyi dari musuh.</p><p>Sedangkan, untuk mengurangi suara dan menghindari deteksi musuh, Hayha menempatkan salju di sekitar senjatanya. Ia juga meletakkan salju di mulutnya agar embusan napasnya tidak terlihat di udara dingin. Semua strategi ini mencerminkan kemampuan analitis yang sangat baik.</p><h2>4. Cedera parah Simo Hayha dan kehidupan setelah Winter War</h2><p>Pada 6 Maret 1940, Simo Hayha terluka parah setelah terkena tembakan peluru eksplosif di bagian wajah. Tembakan itu menyebabkan luka serius di rahang dan pipinya. Ia tidak sadarkan diri selama beberapa hari dan diperkirakan tidak akan selamat. Namun, Hayha berhasil bertahan dan mulai pulih perlahan.</p><p>Setelah insiden tersebut, ia tak lagi turun di Winter War hingga perang itu berakhir dengan kemenangan Uni Soviet pada 13 Maret 1940. Selepas perang berakhir, ia menjalani rehabilitasi panjang dan kemudian kembali ke kehidupan sipil. Akibat tembakan tersebut, ia pun menderita cedera permanen di bagian wajah.</p><p>Hayha melanjutkan hidup sebagai pemburu dan peternak di Finlandia setelah perang. Ia jarang memberikan wawancara dan tidak mengejar ketenaran atas prestasinya. Namun, reputasinya tetap hidup dalam catatan militer dan sejarah.&nbsp;</p><p>Simo Hayha meninggal dunia pada 1 April 2002 di usia 96 tahun. Hingga kini, ia dianggap sebagai salah satu sniper/penembak jitu paling efektif dalam sejarah. Kisahnya menjadi bagian penting dari sejarah nasional Finlandia.</p>', '01K9EWZNZBQEWSVKS91DZBDG8C.webp', 'not_featured', 1, 6, 'mengenal-simo-hayha-sniper-finlandia-yang-jadi-mimpi-buruk-tentara-uni-soviet', NULL, '2025-11-07 02:14:53', '2025-11-07 02:14:53'),
(17, 'Nico Paz Nyawa Como, Kalahkan Kontribusi Lamine Yamal di Barcelona', '<p>Peran Nico Paz di Como ternyata lebih signifikan dibandingkan dengan kontribusi Lamine Yamal untuk Barcelona di musim ini. Kedua pemain ini memiliki kesamaan, yakni digadang-gadang sebagai titisan Lionel Messi. Namunm cara mereka berkontribusi di masing-masing klub berbeda. Lamine Yamal merupakan suksesor Messi di Barcelona. Ia juga memakai nomor 10 peninggalan Messi di Barca Sementara itu, Nico Paz, merupakan \"murid\" Messi di timnas Argentina.<br>Perbandingan antara mereka pun tak terhindarkan, terutama setelah melihat performa mereka di awal musim ini.<br>Meski Yamal lebih muda tiga tahun dari Paz, performanya yang mengesankan dalam satu hingga dua musim terakhir membuatnya diperhitungkan. Fakta bahwa Lamine Yamal merupakan kandidat kuat peraih Ballon d\'Or 2025 menunjukkan bahwa ia memiliki kualitas di atas pemain muda lainnya. Namun, jika menilai dari awal musim ini, Nico Paz menunjukkan performa yang lebih menjanjikan. Nico Paz telah memberikan kontribusi yang lebih besar bagi Como ketimbang dampak Yamal untuk Barcelona.<br>Baru-baru ini, Nico Paz mencetak gol dan memberikan assist yang membawa Como menang 2-0 atas Juventus di Stadion Giuseppe Sinigaglia pada Minggu, tanggal 19 Oktober 2025. Dalam tujuh laga Liga Italia musim ini, Nico Paz telah mencetak 4 gol dan 4 assist. Ia berkontribusi dalam 8 dari 9 gol yang dicetak Como. Artinya, kontribusinya mencapai 88,9 persen dari total produktivitas tim.<br>Hanya dalam dua pertandingan, yaitu ketika Como kalah 0-1 melawan Bologna dan imbang 1-1 dengan Atalanta, Paz tidak terlibat dalam gol tim. Selama musim ini, ia aktif memberikan kontribusi saat melawan Lazio (2-0; 1 gol dan 1 assist), Genoa (1-1; 1 gol), Fiorentina (2-1; 2 assist), Cremonese (1-1; 1 gol), dan Juventus (2-0; 1 gol dan 1 assist). Dengan kontribusi tersebut, Paz membantu Como meraih 8 dari total 12 poin yang kini diperoleh tim.<br><br>Sumber: <a href=\"https://bola.kompas.com/read/2025/10/20/16331758/nico-paz-nyawa-como-kalahkan-kontribusi-lamine-yamal-di-barcelona\">https://bola.kompas.com/read/2025/10/20/16331758/nico-paz-nyawa-como-kalahkan-kontribusi-lamine-yamal-di-barcelona</a>.</p>', '01K9EX6MMX1E8MJP4G2GPRGF80.jpg', 'not_featured', 7, 7, 'nico-paz-nyawa-como-kalahkan-kontribusi-lamine-yamal-di-barcelona', NULL, '2025-11-07 02:18:41', '2025-11-07 02:18:41'),
(18, 'Raymond Chin Ungkap Cara Bangun Bisnis Autopilot Efektif', '<p>Membangun sistem bisnis yang bisa berjalan sendiri atau <em>autopilot</em> menjadi impian banyak pelaku usaha. Hal tersebut disampaikan oleh Raymond Chin, salah satu pendiri platform edukasi finansial <em>Ternak Uang</em>, melalui video di akun YouTube miliknya berjudul <em>Cara Bangun Bisnis Autopilot, Kerja Sambil Liburan (Bikin Sistem)</em>.</p><p>Dalam video tersebut, Raymond menjelaskan bahwa tujuan membangun sistem bisnis adalah agar usaha tetap menghasilkan meskipun pemiliknya tidak terlibat langsung dalam kegiatan operasional. “Kita semua punya impian bisnis tetap berjalan meski sedang tidur atau liburan sebulan ke Bali,” ujarnya.</p><p>Raymond menuturkan bahwa membangun sistem bisnis dapat dilakukan dengan pendekatan “2P”, yaitu <em>People</em> dan <em>Process</em>. Ia menegaskan bahwa yang utama adalah membangun proses terlebih dahulu sebelum mencari orang yang tepat untuk menjalankannya. “Step pertama, pahami dulu alur bisnis dari awal sampai akhir. Setelah itu baru cari orang yang bisa menggantikan kita di proses tertentu,” jelasnya.</p><p>Menurut Raymond, setiap bisnis pasti menemui hambatan atau <em>bottleneck</em>, misalnya pada tahap pencarian klien (<em>leads generation</em>) atau bagian produksi. Ia menyarankan agar pelaku usaha bersikap reaktif dan memperbaiki sistem di titik yang menjadi hambatan.</p><p>Dalam contoh yang dibawakan, Raymond menyoroti bagaimana bisnis <em>agency</em> dan bisnis perhiasan seperti <em>Shewears Gold</em> serta <em>Hewears Gold</em> memiliki sistem berbeda sesuai kebutuhan dan kapasitas. “Tidak ada satu sistem yang cocok untuk semua. Tapi sebagai prinsip umum, <em>People-Process</em> adalah cara paling sederhana untuk mulai membangun sistem bisnis,” tegasnya.</p><p>Raymond menutup penjelasannya dengan pesan agar pelaku bisnis berfokus pada pengembangan dan inovasi, bukan hanya pada pekerjaan operasional. Menurutnya, sistem yang efisien akan memberi kebebasan waktu sekaligus meningkatkan nilai bisnis di masa depan.</p>', '01K9EXBY7Y1MC53N3VQ62QGY92.png', 'not_featured', 2, 1, 'raymond-chin-ungkap-cara-bangun-bisnis-autopilot-efektif', NULL, '2025-11-07 02:21:35', '2025-11-07 02:21:35'),
(19, '5 YouTuber Gaming Indonesia yang Jadi Pionir di Dunia Streaming', '<p>Dunia YouTube gaming di Indonesia terus berkembang pesat dengan hadirnya kreator-kreator berbakat yang berhasil menarik perhatian jutaan penonton.</p><p>Tak hanya sekadar bermain game, mereka juga menghadirkan hiburan, edukasi, bahkan kegiatan sosial yang membuat komunitasnya semakin solid.</p><p>Berikut ini lima YouTuber gaming Indonesia yang menjadi pionir gaming hingga populer di dunia streaming:</p><h2>1. Windah Basudara</h2><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;20230511124253000000WhatsAppImage20230511at124037.jpeg&quot;,&quot;filesize&quot;:230090,&quot;height&quot;:998,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/7tSHiAn4MRVrM1ijDKCEmzhyad3CwHi5S2RYLoFq.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/7tSHiAn4MRVrM1ijDKCEmzhyad3CwHi5S2RYLoFq.jpg&quot;,&quot;width&quot;:1900}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpeg\"><a href=\"http://127.0.0.1:8000/storage/7tSHiAn4MRVrM1ijDKCEmzhyad3CwHi5S2RYLoFq.jpg\"><img src=\"http://127.0.0.1:8000/storage/7tSHiAn4MRVrM1ijDKCEmzhyad3CwHi5S2RYLoFq.jpg\" width=\"1900\" height=\"998\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">20230511124253000000WhatsAppImage20230511at124037.jpeg</span> <span class=\"attachment__size\">224.7 KB</span></figcaption></a></figure>Windah Basudara, atau Brando Franco Windah, dikenal dengan cara bermain gamenya yang selalu bikin suasana jadi seru. Dia punya gaya khas, terutama pas main game horor yang sering banget bikin orang ketawa.</p><p>Sebelumnya, Windah sempat kerja di industri perhotelan, tapi setelah terjun ke dunia streaming, dia akhirnya dikenal banyak orang berkat konsistensinya.</p><p>Yang bikin Windah makin disayang penonton adalah kedekatannya dengan fans, yang sering disebut “Bocil Kematian.” Selain kontennya yang lucu, Windah juga sering bikin charity stream untuk berbagai kegiatan sosial.</p><h2>2. Miawaug (Reggie Prabowo Wongkar)</h2><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;Penghasilan-MiawAug_1.jpg&quot;,&quot;filesize&quot;:59136,&quot;height&quot;:720,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/hKVUTps3u8IiMIqcINh08Ti0o1Y4eX1wQnFqMhI4.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/hKVUTps3u8IiMIqcINh08Ti0o1Y4eX1wQnFqMhI4.jpg&quot;,&quot;width&quot;:1080}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"http://127.0.0.1:8000/storage/hKVUTps3u8IiMIqcINh08Ti0o1Y4eX1wQnFqMhI4.jpg\"><img src=\"http://127.0.0.1:8000/storage/hKVUTps3u8IiMIqcINh08Ti0o1Y4eX1wQnFqMhI4.jpg\" width=\"1080\" height=\"720\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">Penghasilan-MiawAug_1.jpg</span> <span class=\"attachment__size\">57.75 KB</span></figcaption></a></figure>Miawaug, yang nama aslinya Reggie Prabowo Wongkar, terkenal dengan gaya main yang santai dan gak pake kata-kata kasar. Walau gak toxic, dia tetap bisa bikin penonton betah nonton kontennya.</p><p>Miawaug sering main game horor atau story-driven yang narasinya kuat banget, jadi penonton merasa seolah-olah ikut terlibat dalam game.</p><p>Dia juga orang yang sangat menjaga privasinya dan jarang banget expose kehidupan pribadinya ke publik.</p><h2>3. Luthfi Halimawan (Sir V)</h2><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;18561087721576647085.jpg&quot;,&quot;filesize&quot;:36171,&quot;height&quot;:450,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/ZY3zb4cl0K7EmuTZYwRXmpCUqD7e8BKff9ngKNG1.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/ZY3zb4cl0K7EmuTZYwRXmpCUqD7e8BKff9ngKNG1.jpg&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"http://127.0.0.1:8000/storage/ZY3zb4cl0K7EmuTZYwRXmpCUqD7e8BKff9ngKNG1.jpg\"><img src=\"http://127.0.0.1:8000/storage/ZY3zb4cl0K7EmuTZYwRXmpCUqD7e8BKff9ngKNG1.jpg\" width=\"800\" height=\"450\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">18561087721576647085.jpg</span> <span class=\"attachment__size\">35.32 KB</span></figcaption></a></figure>Luthfi Halimawan atau yang akrab dipanggil Sir V adalah salah satu YouTuber yang dikenal karena kontennya yang penuh dengan humor. Gak jarang dia berkolaborasi dengan kreator lain dan bisa bikin video jadi lebih seru.</p><p>Selain jadi YouTuber gaming, Luthfi juga seorang DJ, dan lagu hitsnya yang berjudul “Malam Pagi” bikin dia makin terkenal di dunia musik.</p><p>Luthfi sudah terjun ke dunia konten sejak 2015 dan berhasil membangun komunitas penggemar yang loyal. Selain itu, Luthfi juga aktif di dunia esports dan sekarang menjadi bagian dari manajemen tim Alter Ego Esports.</p><h2>4. DeanKT (Aldean Tegar)</h2><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;240624-Honor-of-Kings-DeanKT.png&quot;,&quot;filesize&quot;:1149499,&quot;height&quot;:700,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/DKeLPKNCTilJNUE14aR3wI96zWM5NJZn311WWOu2.png&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/DKeLPKNCTilJNUE14aR3wI96zWM5NJZn311WWOu2.png&quot;,&quot;width&quot;:1300}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"http://127.0.0.1:8000/storage/DKeLPKNCTilJNUE14aR3wI96zWM5NJZn311WWOu2.png\"><img src=\"http://127.0.0.1:8000/storage/DKeLPKNCTilJNUE14aR3wI96zWM5NJZn311WWOu2.png\" width=\"1300\" height=\"700\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">240624-Honor-of-Kings-DeanKT.png</span> <span class=\"attachment__size\">1.1 MB</span></figcaption></a></figure>Aldean Tegar atau lebih dikenal dengan DeanKT adalah YouTuber yang bukan hanya populer di dunia gaming, tapi juga punya peran penting di industri esports Indonesia. Sebelumnya, dia sempat menjabat sebagai Vice President di EVOS Esports.</p><p>DeanKT sering kasih tips dan strategi buat para gamer lewat kontennya yang menarik, plus gimmick-gimmick seru yang selalu membuat penggemar tertawa.</p><p>Komunitas DeanKT juga solid banget, dengan slogan “We Are Membership” yang selalu diajarkan kepada para pengikutnya.</p><h2>5. Reza Arap</h2><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;3173122297.jpg&quot;,&quot;filesize&quot;:23472,&quot;height&quot;:500,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/a47BgpzrA46G0EK8oB9ddaLPTUKGiJHD17FCQFBV.webp&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/a47BgpzrA46G0EK8oB9ddaLPTUKGiJHD17FCQFBV.webp&quot;,&quot;width&quot;:750}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"http://127.0.0.1:8000/storage/a47BgpzrA46G0EK8oB9ddaLPTUKGiJHD17FCQFBV.webp\"><img src=\"http://127.0.0.1:8000/storage/a47BgpzrA46G0EK8oB9ddaLPTUKGiJHD17FCQFBV.webp\" width=\"750\" height=\"500\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">3173122297.jpg</span> <span class=\"attachment__size\">22.92 KB</span></figcaption></a></figure>Reza Arap atau Reza Oktovian bisa dibilang sebagai salah satu pionir YouTuber gaming di Indonesia. Dia mulai terkenal sejak era awal YouTube di Indonesia dengan konten gaming yang khas, penuh ekspresi, dan kadang nyeleneh.</p><p>Reza Arap adalah salah satu kreator yang membuka jalan bagi banyak YouTuber gaming lainnya hingga industri ini berkembang seperti sekarang.</p><p>Selain dikenal sebagai gamer, ia juga sempat mendirikan WAW Esports dan kemudian beralih ke dunia musik dengan grup Weird Genius. Meskipun sudah tidak aktif di dunia YouTube gaming, pengaruhnya masih terasa di komunitas kreator Indonesia.</p>', '01K9EY5X79AW9PGB6DGMBNC1R3.webp', 'not_featured', 4, 6, '5-youtuber-gaming-indonesia-yang-jadi-pionir-di-dunia-streaming', NULL, '2025-11-07 02:33:29', '2025-11-07 02:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `avatar`, `occupation`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Haikal', 'haikal', '01K7120SYH4Q9Y47G0F7E00QM2.jpg', 'Head Admin', NULL, '2025-10-07 20:42:07', '2025-10-07 20:42:07'),
(2, 'Alexander Aristoteles', 'alexander-aristoteles', '01K7122MJWV1BKBH8ACDCD64BC.png', 'Admin 1', NULL, '2025-10-07 20:43:07', '2025-11-07 02:04:15'),
(3, 'Peter Fatih', 'peter-fatih', '01K721CFHMM4K1BQQQ43F1QZ86.png', 'Programmer', NULL, '2025-10-08 05:50:16', '2025-11-07 02:02:33'),
(5, 'Fufufafa', 'fufufafa', '01K7JMP28ET7YDY16YQTH72CSY.gif', 'Vice President', '2025-11-04 17:36:12', '2025-10-14 16:35:24', '2025-11-04 17:36:12'),
(6, 'Valen Giomare', 'valen-giomare', '01K9A31RQ5AQ3YC8022QCYKP5V.jpg', 'Fullstack Developer', NULL, '2025-11-05 05:24:41', '2025-11-05 05:24:41'),
(7, 'Riekey', 'riekey', '01K9A3M8M1E4MQR73MFYDTT1DG.png', 'Football Observer', NULL, '2025-11-05 05:34:47', '2025-11-05 05:34:47'),
(8, 'Arbāquéz', 'arbaquez', '01K9EW700Y8BFPGRM51C2W3VTW.jpeg', 'Digital Writer', NULL, '2025-11-07 02:01:24', '2025-11-07 02:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `banner_advertisments`
--

CREATE TABLE `banner_advertisments` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_advertisments`
--

INSERT INTO `banner_advertisments` (`id`, `link`, `type`, `thumbnail`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://www.instagram.com/politeknikhasnur.esport?igsh=MzBud2luOXp2aGZu', 'square', '01K72210YT020X7KT8CB420BRM.png', 'active', NULL, '2025-10-08 06:01:29', '2025-10-28 18:37:13'),
(2, 'https://id-mpl.com/id/schedule', 'banner', '01K8Q0N7GMCGE9FSYM5WTJ3X0F.png', 'active', NULL, '2025-10-28 19:37:19', '2025-10-28 19:37:19'),
(3, 'https://chatgpt.com', 'square', '01K990C30ZWH0B0F6G93VGSAJH.png', 'active', NULL, '2025-11-04 19:18:39', '2025-11-04 19:18:39'),
(4, 'https://liquipedia.net/mobilelegends/M7_World_Championship', 'banner', '01K990MEAKT6ANXCSA7983209G.jpg', 'active', NULL, '2025-11-04 19:23:13', '2025-11-04 19:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kesehatan', '01K71YCM8XX0739BEYCCN4EZ42.png', 'kesehatan', NULL, '2025-10-07 20:34:23', '2025-11-11 17:21:29'),
(2, 'Bisnis', '01K71ZMFNGD9FFSYD4BCW4ZVH3.png', 'bisnis', NULL, '2025-10-07 20:34:23', '2025-11-11 17:21:55'),
(3, 'Otomotif', '01K71ZZYQB0JF2YH6MKS5EMSBY.png', 'otomotif', NULL, '2025-10-07 20:34:23', '2025-11-11 17:22:16'),
(4, 'Hiburan', '01K71ZRNWNMKE7WKZPRNS5BE9A.png', 'hiburan', NULL, '2025-10-07 20:34:23', '2025-11-11 17:22:31'),
(5, 'Makanan', '01K7204FG0WR8N1348Q67H6TTS.png', 'makanan', NULL, '2025-10-07 20:34:23', '2025-11-11 17:22:47'),
(6, 'Politik', '01K71ZVR37RBZ3NJGAXPXZGXC2.png', 'politik', NULL, '2025-10-07 20:34:23', '2025-11-11 17:23:02'),
(7, 'Olahraga', '01K71ZXXMKXW8J0FXCTWJDCV60.png', 'olahraga', NULL, '2025-10-07 20:34:23', '2025-11-11 17:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_08_011806_create_categories_table', 1),
(5, '2025_10_08_011858_create_authors_table', 1),
(6, '2025_10_08_011923_create_article_news_table', 1),
(7, '2025_10_08_011952_create_banner_advertisments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AP3hwUZHH4ZcbRiMnewxFHkSF69JDgbIS1p0YLps', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEJuZUh2Nnd2b2RJY1J5eldwdVFTd01mbWlvT3Y3cDRCTnhRcVR2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763521441),
('BbyBYAXIXiLj3uD3zmUFagBjyv5Nx38PxBnu6DKM', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQk1sUTBET1czSWVKWkVGUUhwWTh3ZjhzVWtyWGVtMFVhYWtRaWdsTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pa2xhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763020623),
('p8xfu6nfU2YGJnPxBuXj0G8gYSXS34JdXvsITS5F', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmQ4RU9PRnM5ZEpVVWptNVoxOHlMdkpxeUFnQkk2aHpqWGo5bm92byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763521363);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-10-07 20:34:22', '$2y$12$k2dX0tRbt4DhLfzlD8KJD.2pnvQhJPq8Vw6qZwuTfwTyhlmzc1UMK', 'z0RKMzEfnk', '2025-10-07 20:34:23', '2025-10-07 20:34:23'),
(2, 'Haikal', 'kalyzet@gmail.com', NULL, '$2y$12$Cput9pzf5op/KL79SmDDgOmUZHXKPJWszVJMJDQXHVUVWz38ACfuq', 'nBuRqCIkMf4cVuGQ4GeRz33FegOi3KlTyFfduZ4JOC4OhaIzuLSn3J8QtrGo', '2025-10-07 20:39:51', '2025-10-07 20:39:51'),
(3, 'Kalavel', 'kalavel@gmail.com', NULL, '$2y$12$2dMmd7H168rjRYONgKU0veJNw.YeGlPhZjB9ju720oVwbbnFaSk.i', 'cRx3foTIVk4I71VewkLPgZmZiwiGlKVpxKSdABZGVxKvcQBfUZto3KxjuVb6', '2025-11-04 17:33:27', '2025-11-04 17:33:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_news`
--
ALTER TABLE `article_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_news_slug_unique` (`slug`),
  ADD KEY `article_news_category_id_foreign` (`category_id`),
  ADD KEY `article_news_author_id_foreign` (`author_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`);

--
-- Indexes for table `banner_advertisments`
--
ALTER TABLE `banner_advertisments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_news`
--
ALTER TABLE `article_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `banner_advertisments`
--
ALTER TABLE `banner_advertisments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_news`
--
ALTER TABLE `article_news`
  ADD CONSTRAINT `article_news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
