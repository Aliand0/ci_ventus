-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2018 pada 16.48
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
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `primary_key` int(11) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `extension` varchar(100) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `assets`
--

INSERT INTO `assets` (`id`, `type`, `primary_key`, `mime`, `extension`, `size`, `description`, `path`, `user_id`, `created`, `modified`) VALUES
(1, 'post', 0, 'image/jpeg', '.jpg', '190.48', '10', 'assets/uploads/10.jpg', 1, '2015-12-24 23:43:29', '2015-12-24 23:43:29'),
(2, 'post', 0, 'image/jpeg', '.jpg', '305.92', '6', 'assets/uploads/6.jpg', 1, '2015-12-24 23:48:00', '2015-12-24 23:48:00'),
(3, 'post', 0, 'image/jpeg', '.jpg', '340.45', '9', 'assets/uploads/9.jpg', 1, '2015-12-24 23:48:29', '2015-12-24 23:48:29'),
(4, 'post', 0, 'image/jpeg', '.jpg', '190.48', '10', 'assets/uploads/10.jpg', 1, '2015-12-24 23:48:45', '2015-12-24 23:48:45'),
(5, 'post', 0, 'image/jpeg', '.jpg', '467.65', 'hero', 'assets/uploads/hero.jpg', 1, '2015-12-24 23:49:10', '2015-12-24 23:49:10'),
(6, 'post', 0, 'image/jpeg', '.jpg', '552.86', 'blur', 'assets/uploads/blur.jpg', 1, '2015-12-24 23:49:42', '2015-12-24 23:49:42'),
(7, 'post', 0, 'image/jpeg', '.jpg', '305.92', '6', 'assets/uploads/6.jpg', 1, '2015-12-24 23:55:13', '2015-12-24 23:55:13'),
(8, 'post', 0, 'image/jpeg', '.jpg', '186.94', '8', 'assets/uploads/8.jpg', 1, '2015-12-24 23:57:38', '2015-12-24 23:57:38'),
(9, 'post', 0, 'image/jpeg', '.jpg', '552.86', 'blur', 'assets/uploads/blur.jpg', 1, '2015-12-24 23:57:50', '2015-12-24 23:57:50'),
(10, 'post', 0, 'image/jpeg', '.jpg', '186.94', '8', 'assets/uploads/8.jpg', 1, '2015-12-24 23:57:56', '2015-12-24 23:57:56'),
(11, 'post', 0, 'image/jpeg', '.jpg', '190.48', '10', 'assets/uploads/10.jpg', 1, '2015-12-24 23:58:33', '2015-12-24 23:58:33'),
(12, 'post', 0, 'image/jpeg', '.jpg', '340.45', '9', 'assets/uploads/9.jpg', 1, '2015-12-24 23:58:58', '2015-12-24 23:58:58'),
(13, 'post', 0, 'image/jpeg', '.jpg', '305.92', '6', 'assets/uploads/6.jpg', 1, '2015-12-25 00:00:54', '2015-12-25 00:00:54'),
(14, 'post', 0, 'image/jpeg', '.jpg', '209.27', '7', 'assets/uploads/7.jpg', 1, '2015-12-25 00:02:24', '2015-12-25 00:02:24'),
(15, 'post', 0, 'image/jpeg', '.jpg', '209.27', '7', 'assets/uploads/7.jpg', 9, '2015-12-26 02:35:57', '2015-12-26 02:35:57'),
(16, 'post', 0, 'image/jpeg', '.jpg', '268.98', '5', 'assets/uploads/5.jpg', 9, '2015-12-26 02:37:39', '2015-12-26 02:37:39'),
(17, 'post', 0, 'image/jpeg', '.jpg', '238.62', '3', 'assets/uploads/3.jpg', 9, '2015-12-26 02:40:10', '2015-12-26 02:40:10'),
(18, 'post', 0, 'image/jpeg', '.jpg', '161.11', 'leaf', 'assets/uploads/leaf.jpg', 1, '2015-12-27 01:31:27', '2015-12-27 01:31:27'),
(19, 'post', 0, 'image/png', '.png', '0.96', 'header_bg', 'assets/uploads/header_bg.png', 1, '2015-12-27 01:31:59', '2015-12-27 01:31:59'),
(20, 'post', 0, 'image/jpeg', '.jpg', '32.27', 'bridge', 'assets/uploads/bridge.jpg', 1, '2015-12-27 01:32:12', '2015-12-27 01:32:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets_posts`
--

CREATE TABLE `assets_posts` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `position` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`, `parent_id`, `status`, `position`, `type`) VALUES
(12, 'Lihat Event', 'home', 0, 1, 12, NULL),
(13, 'Buat Event', 'admin/posts/add', 0, 1, 13, NULL),
(15, 'Sign In', 'signin', 0, 1, 14, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `methods`
--

CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `methods_groups`
--

CREATE TABLE `methods_groups` (
  `id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `allow_access` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text,
  `type` varchar(100) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `published_at` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts_categories`
--

CREATE TABLE `posts_categories` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`) VALUES
(1, 'email_contact', 'ventus@gmail.com', 'Email kontak form'),
(2, 'image_max_size', '2000', 'Ukuran image dalam kb (kilo byte)'),
(3, 'file_max_size', '3000', 'Ukuran file maksimal dalam kb (kilobyte)'),
(4, 'file_type', 'doc|zip|pdf|xlsx|xls|ppt|docx|pptx', 'Tipe file yang di ijinkan untk di upload'),
(5, 'image_type', 'gif|jpg|png', 'Tipe image yang diperbolehkan untuk di upload'),
(6, 'pagination_limit', '10', 'Batas list /record (artikel, file, dll) per halaman'),
(7, 'main_office', 'Company Address', ''),
(8, 'site_title', 'CI Blog - Basic CMS based on CodeIgniter 3', ''),
(18, 'pagination_limit_directory', '50', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`) VALUES
(1, 'CodeIgniter', 'codeigniter', 1),
(2, 'Responsive', 'responsive', 1),
(3, 'basic cms', 'basic-cms', 1),
(4, 'tag baru', 'tag-baru', 1),
(5, 'Simple CMS', 'simple-cms', 1),
(6, 'Security Tips', 'security-tips', 1),
(7, 'Hack & DDOS', 'hack-ddos', 1),
(8, 'baksos', 'baksos', 1),
(9, 'bakti', 'bakti', 1),
(10, 'sosial', 'sosial', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'u19phQxJe9GsUJgs0f7ege', 1268889823, 1525836707, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(11, '::1', 'admin', '$2y$08$l5c7hP5yDJATcs92NGzHAOxFR3QLyBj5YtzgUuv/0S.jEY0gKUGL6', NULL, 'admin@gmail.com', 'f1aaed43a29311a0454bc8fed44c812a4d8529b1', NULL, NULL, NULL, 1525827867, 1525827867, 0, 'admin', 'istrator', 'ventus', '08123456789');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(9, 1, 1),
(10, 1, 2),
(16, 11, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `assets_posts`
--
ALTER TABLE `assets_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_assets_posts_posts1` (`post_id`),
  ADD KEY `fk_assets_posts_assets1` (`asset_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `methods_groups`
--
ALTER TABLE `methods_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_methods_groups_groups1` (`group_id`),
  ADD KEY `fk_methods_groups_methods1` (`method_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_categories_categories1` (`category_id`),
  ADD KEY `fk_posts_categories_posts1` (`post_id`);

--
-- Indeks untuk tabel `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_tags_tags1` (`tag_id`),
  ADD KEY `fk_posts_tags_posts1` (`post_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `assets_posts`
--
ALTER TABLE `assets_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `methods_groups`
--
ALTER TABLE `methods_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts_categories`
--
ALTER TABLE `posts_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `assets_posts`
--
ALTER TABLE `assets_posts`
  ADD CONSTRAINT `fk_assets_posts_assets1` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_assets_posts_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `methods_groups`
--
ALTER TABLE `methods_groups`
  ADD CONSTRAINT `fk_methods_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_methods_groups_methods1` FOREIGN KEY (`method_id`) REFERENCES `methods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD CONSTRAINT `fk_posts_categories_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_categories_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD CONSTRAINT `fk_posts_tags_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
