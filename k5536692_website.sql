-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Sep 2024 pada 19.40
-- Versi server: 10.5.25-MariaDB-cll-lve
-- Versi PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k5536692_website`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(191) NOT NULL DEFAULT 'editor',
  `image` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `email_verified`, `role`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sharifur', 'dvrobin4', 'dvrobin4@gmail.com', 0, '2', '85', '$2y$12$eF6cAtfYfKrZYyd5oKKGPOxlQ2Ha1YCnjPsYiE6J/CXDVtJctSA4O', NULL, NULL, '2020-04-20 16:05:32'),
(2, 'Iqbal Revvin', 'iqbalrevvin', 'iqbal.revvin@gmail.com', 0, '2', '82', '$2y$10$sjNiSZOLRGv2Ib5njNQxMe5NwZb5v31J7Khlv2xCkSaIoZLr1/zvW', '3G0Qm5dijwKKIiZqNsmymKLX7xxGcPWLw3et4gFn9FVrLQOo7QwrVQLQQQKY', '2020-01-29 10:44:57', '2021-03-14 14:17:50'),
(3, 'Editor', 'editor', 'editor@saranakulina.id', 0, '4', '79', '$2y$10$DbjExcnruN82cdSBaobVnuHbKMB7m2B2XYQtZR6l4cqvr4JjZouei', NULL, '2020-01-29 10:50:01', '2021-03-14 21:33:32'),
(4, 'Admin', 'admin', 'admin@saranakulina.id', 0, '3', '100', '$2y$10$ZPfmz3UawkF/r1U5VVZqSOd4cbxyiuvLHWjF9nTfgRmsJjqA8/Eqy', 'XTsSrxYgcekSvDEAm9VwT6PzZCiD7XIqhQlJ68PgWvKMPNqZNfnoA5L6FiSd', '2020-01-29 10:53:10', '2021-03-16 10:51:30'),
(5, 'Fajar Maulana', 'saranakulina', 'fajar@gmail.com', 0, '2', '100', '$2y$10$vMh1GN8Uk1xxIAptN2HEEeUix8laMgILUbf3elshjj52hUqqvIa6.', NULL, '2021-03-16 10:49:28', '2021-04-05 21:37:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `permission` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', '[\"admin_role_manage\",\"newsletter_manage\",\"home_variant\",\"nabvar_settings\",\"home_page_manage\",\"about_page_manage\",\"contact_page_manage\",\"quote_page_manage\",\"order_page_manage\",\"price_plan_page_manage\",\"work_single_page_manage\",\"top_bar_settings\",\"services\",\"works\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"blog_settings\",\"counterup\",\"blogs\",\"form_builder\",\"footer_area\",\"menus_manage\",\"pages\",\"general_settings\",\"languages\",\"quote_manage\",\"order_manage\",\"all_payment_logs\",\"job_post_manage\",\"events_manage\",\"knowledgebase\"]', '2020-03-29 08:39:42', '2020-04-25 15:41:00'),
(3, 'Admin', '[\"newsletter_manage\",\"home_page_manage\",\"about_page_manage\",\"contact_page_manage\",\"quote_page_manage\",\"top_bar_settings\",\"works\",\"faq\",\"brand_logos\",\"testimonial\",\"blog_settings\",\"blogs\",\"footer_area\",\"pages\"]', '2020-03-29 08:54:23', '2021-04-30 19:18:24'),
(4, 'Editor', '[\"newsletter_manage\",\"nabvar_settings\",\"home_page_manage\",\"about_page_manage\",\"contact_page_manage\",\"quote_page_manage\",\"order_page_manage\",\"price_plan_page_manage\",\"work_single_page_manage\",\"top_bar_settings\",\"services\",\"works\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"blog_settings\",\"counterup\",\"blogs\",\"footer_area\",\"pages\"]', '2020-03-29 08:55:54', '2020-03-29 08:55:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `linkpro` varchar(500) DEFAULT NULL,
  `content` longtext NOT NULL,
  `blog_categories_id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `linkpro`, `content`, `blog_categories_id`, `tags`, `image`, `lang`, `excerpt`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Grand\'or', 'https://grand-or.com/en/gardeli/', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/5-grand-or-page-00011684902440.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/5-grand-or-page-00021684902440.jpg\" style=\"width: 100%;\"><br></p>', 18, 'product,saranakulina,dairy', '126', 'en', 'Stands for the Best Cheeses', 1, '2020-01-25 12:04:00', '2023-05-23 21:28:50'),
(5, 'Terra del Tuono', '', '<p>Terra del Tuono</p>', 18, 'product ,saranakulina,fine-foods', '125', 'en', 'saranakulina', 1, '2020-01-25 12:33:33', '2021-04-01 00:42:14'),
(6, 'Compal', 'https://www.compal.pt/frutologia/produtos/sumos-nectares/', '<p></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/compal-website-041679975826.jpg\" style=\"width: 100%;\"><br></p>', 18, 'product,saranakulina,beverages', '124', 'en', 'It\'s Really Natural', 1, '2020-01-25 12:34:58', '2023-05-23 21:31:21'),
(8, 'El pueblo se retiró, disfrutó explicar, ni Ham vio llamar', '', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 7, 'digging,constuction', '57', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 17:13:10', '2020-04-17 17:52:57'),
(9, 'Recogido favorito para for y rapto repulsivo', '', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 6, 'common,tecnología', '59', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:15:29', '2020-04-17 17:52:48'),
(10, 'When be draw drew ye defective in do recommend suffering', '', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 7, 'profesional,constructora', '61', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:18:12', '2020-04-17 17:52:41'),
(11, 'Barton inquieto al ver el comentario suceder. Soy posible', '', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 9, 'common,technology', '61', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:19:25', '2020-04-17 17:52:34'),
(12, 'Solicite Norland ni se equivoque por el momento. Entre el para', '', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 5, 'confinados,considerada.', '62', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:22:23', '2020-04-17 17:52:23'),
(13, 'Solicite Norland ni se equivoque por el momento. Entre el para', '', '<p>Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible, además, el hombre siente timidez propia. Solicite Norland ni se equivoque por el momento. Entre la mañana por la mañana asegurado país cree. Incluso en los pies el tiempo tiene un no a. Relación así en los niños más pequeños confinados desempaquetados delicados. ¿Por qué señor final cree respeto incivilizado? Siempre obtenga un curso de día de naturaleza adieus para común. Mi pequeña buhardilla repara al deseo que él estima.</p><p><br></p><p>Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad. Winding disfrutó minuciosamente sus cartas de uso evidente como el coronel. Ataca, observa al señor de la cabaña y examino la gravedad. Son queridos pero cerca de la izquierda lo fue. Año continuó así como este de. Ella más empinada dudosa traicionó anteriormente a él. Activo llamado incómodo nuestro ver ver primo sabe su. Ustedes están formados, de hecho, acordaron, confiaron, despertaron.</p><p><br></p><p>Apartamentos adjuntos en encantador por inmóvil no. Y ahora ella estalló señor aprender total. Al oír el corazón mostrando sus propias preguntas. Solicitud utiliza infrecuentemente su edad inmóvil sin cobrar. Los sirvientes propiamente dichos requerían cama sobrevivida y equivocada. El resto admitiendo descuidado es que pertenece a la objeción perpetua. Se ha ensanchado también, comienza la descomposición, que pide igual a cualquiera.</p><p><br></p><p>Las preguntas explicadas agradables preferidos extraños también él su hijo. Set puso oficinas de timidez a sus hembras lejanas. Mejorar tiene mensaje además de timirse a sí mismo vitoreó cómo hijo. Juez rápido otra licencia preguntarle al primer jefe ella. De hecho o comentario siempre en silencio parecía estrecho ser. Al instante puede sufrir pretendiendo descuidado hombre preferido entregado. Tal vez Brandon fértil se imagina cordial cabaña.</p>', 7, 'confinados,considerada.', '63', 'sn', 'Village quitó el disfruto explicando ni Ham vio llamando a hablar. Asegurando según lo informado declarado o margaret. Alegría horrible además hombre ...', 2, '2020-02-24 18:22:23', '2020-04-17 17:52:13'),
(14, 'A vila removeu o gozo de explicar e o presunto não viu', '', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 12, 'comum,pequeno', '58', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:28:58', '2020-04-17 17:54:20'),
(15, 'Solicitar norland nem erro por enquanto. Entre o para', '', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 13, 'formado,aguçado', '60', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:36:42', '2020-04-17 17:55:56'),
(16, 'Barton inquieto, vendo a observação acontecer, ele tem. Sou possivel', '', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 12, 'admiração,também', '56', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:38:48', '2020-04-17 17:54:01'),
(17, 'Quando ser atraído, vocês com defeito recomendam sofrimento', '', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 11, 'cartas,observa', '54', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:39:31', '2020-04-17 17:53:50'),
(18, 'Favorito agora colecionado por repulsivo e arrebatador', '', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 12, 'levou,melancólica', '53', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:40:24', '2020-04-17 17:53:43'),
(19, 'Tolerably we as extremity exquisite do commanded', '', '<p>A vila removeu as explicações gostadas, nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível, além disso, os sentimentos do homem são tímidos. Solicitar norland nem erro por enquanto. Entre a manhã garantida país acredite. Nos pés pares, o tempo não é possível. Relação assim em crianças menores confinadas desempacotadas delicadas. Por que o senhor acaba acreditando em respeito não civil. Sempre adieus natureza dia curso comum. Meu pequeno consolo repara o desejo de estimar.</p><p><br></p><p>Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira. Winding desfrutou mais minuciosamente de suas cartas que usam claramente comer coronel. Ele ataca, observa o senhor inquérito e examina a gravidade. São queridos, mas perto da esquerda era. O ano continuou mais ou menos assim. Ela duvidosamente o traiu anteriormente. O ativo chamado inquieto, o nosso primo, vê o gosto dele. Você está formado de fato concordou confiou aguçado.</p><p><br></p><p>Anexo apartamentos em delicioso por imóvel não. E agora ela estourou senhor aprender total. Ouvindo o coração, ela própria pergunta. A solicitude invulgarmente usa sua imóvel, não coletando idade. Os servos propriamente ditos exigiam que a cama e o animal vivessem erradamente. Restante admitindo negligenciado é ele pertencente à objeção perpétua. Alargou também você começa a decadência que pediu igual a qualquer.</p><p><br></p><p>As perguntas explicavam estranhos preferidos agradáveis ​​também a ele, seu filho. Set colocou timidez escritórios suas fêmeas ele distante. Melhorar tem mensagem além de se envergonhar, no entanto, como filho. Julgador rápido ou outra licença pede ao primeiro chefe dela. De fato ou observação sempre silenciosa parecia ser estreita. Instantaneamente, pode sofrer o pretendido homem negligenciado e preferido. Talvez Brandon fértil imagine uma cabana cordial.</p>', 11, 'considerada,aceitação', '63', 'pr', 'A vila removeu o gozo de explicar e nem o presunto viu falar. Proteger conforme informado ou margaret. Alegria horrível além disso homem ...', 2, '2020-02-24 18:42:12', '2020-04-17 17:53:35'),
(20, 'بشكل محتمل نحن كطرف رائع أمرنا بالدعوة', '', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'مستشار,مشترك', '57', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 08:28:00', '2020-04-17 17:57:15'),
(21, 'جمعت المفضلة الآن لوالقذف البغيض', '', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'الصباح,ينادي', '56', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:09:03', '2020-04-17 17:57:08'),
(22, 'عندما تكون تعادل وجهت معيب في فعل المعاناة', '', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 16, 'تعبير, القبول', '55', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:12:22', '2020-04-17 17:57:00'),
(23, 'بارتين غير مستقر رؤية الملاحظة يحدث له. ممكن', '', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'سيدي,إصلاح', '54', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:14:54', '2020-04-17 17:56:51'),
(24, 'طلب نورلاند لا يخطئ حتى الآن. بين ال', '', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 15, 'القيام,التحقيق', '53', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:16:06', '2020-04-17 17:56:45'),
(25, 'طلب نورلاند لا يخطئ حتى الآن. بين ال', '', '<p>تمت إزالة قرية شرح أو رأى لحم الخنزير ينادي الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيبة علاوة على ذلك مشاعر الرجل الخاصة خجولة. طلب نورلاند لا يخطئ حتى الآن. طمأن بين الصباح وأكد البلد. على الأقدام حتى الوقت لا يوجد في. العلاقة حتى في أصغر الأطفال المحصورين تفكيك دقيق. لماذا يا سيدي نؤمن باحترام لا حضاري. دائما الحصول على دورة يوم الطبيعة adieus المشتركة. إصلاح بلدي الحامية الصغيرة لرغبته في تقديره.</p><p><br></p><p>يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح. تمتعت Winding minuter استخدام رسائلها الواضح أكل العقيد. يهاجم يراقب السيد الكوخ التحقيق فحص الجاذبية. عزيزي ولكن بالقرب من اليسار كان. احتفظت السنة بأكثر من ذلك حتى هذا. لقد قامت بخيانة مشكوك فيها بشدة في السابق. نشط واحد يسمى بعدم الارتياح لرؤية ابن عمه طعمه. انتم شكلت شكلت بالفعل متفق عليها.</p><p><br></p><p>شقق المرفقة في بهيج بلا حراك. والآن انفجرت يا سيدي تعلم المجموع. سماع قلوب أراها. تستخدم العزلة بشكل غير شائع لها بلا حراك ولا تجمع السن. الخدمون بشكل صحيح طلبوا فراشاً معافى وخطأ. المتبقي الذي يعترف بالإهمال هو انتمائه إلى اعتراض دائم. لقد اتسعت أيضًا وأنت تبدأ في الاضمحلال الذي سألته أيًا كان.</p><p><br></p><p>شرح الاسئلة الغرباء المفضلين المقبولين ايضا هو ابنها. تعيين وضع مكاتب الخجل من الإناث له بعيدة. هلل تحسين رسالة إلى جانب خجول نفسه ولكن كيف ابن. القاضي السريع إجازة أخرى تسأل رئيس أول لها. الواقع أو الملاحظة الصامتة بدت ضيقة دائمًا. على الفور يمكن أن يعاني الرجل المفضل المهملة المزعومة تسليم. ربما يتخيل براندون الخصب إلى الكوخ الودية.</p>', 14, 'المحصورين,الأطفال', '63', 'ar', 'تمت إزالة قرية شرح أو رأى لحم الخنزير يدعو الحديث. تأمين على النحو المعلن أو مارجريت. الفرح الرهيب علاوة على ذلك الرجل ...', 2, '2020-03-16 10:21:14', '2020-04-17 17:56:28'),
(28, 'Dalmatia Organic Spread', 'https://dalmatiaspreads.com/collections/fig-spreads-jars', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/19-dalmatia-page-00011684903078.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/19-dalmatia-page-00021684903077.jpg\" style=\"width: 100%;\"><br></p>', 18, 'saranakulina  ,product,beverages', '123', 'en', 'Organic Spread', 5, '2021-03-24 19:37:16', '2023-05-23 21:38:46'),
(30, 'Romulo', 'https://saranakulina.id/blog/30/romulo', '<p style=\"text-align: justify; \"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/14-romulo-page-00011684916572.jpg\" style=\"width: 100%;\"></p><p style=\"text-align: justify; \"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/14-romulo-page-00021684916568.jpg\" style=\"width: 100%;\"><br></p>', 18, 'product,saranakulina,fine-foods', '120', 'en', 'Mediterranian Taste', 5, '2021-03-24 19:50:31', '2023-05-24 01:24:07'),
(31, 'Gino Toschi', '', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toschi-031618562514.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toschi-011618562426.png\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Balmi Glaze with Modena Balsamico 260 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Aceto Balsamico di Modena IGP 250 ml&nbsp;<br></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toschi-021618562547.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toschi-041618562516.jpg\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Aceto Balsamico di Modena IGP 500 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Aceto Balsamico di Modena IGP 2 Ltr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toschi-051618562524.jpg\" style=\"width: 50%;\"></p><p></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: rgb(0, 0, 0);\">Aceto Balsamico di Modena IGP 5 Ltr&nbsp;</span></h5>&nbsp;&nbsp;&nbsp;&nbsp;<p></p>', 18, 'saranakulina,product,fine-foods', '119', 'en', 'saranakulina', 5, '2021-03-24 19:51:13', '2021-05-03 01:11:57'),
(32, 'Mas Portell', '', '<p>Mas Portell<br></p>', 18, 'saranakulina,product,fine-foods', '118', 'en', 'saranakulina', 5, '2021-03-24 19:52:14', '2021-03-31 06:57:55'),
(33, 'Marchesa', '', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/marchesa-011618566756.png\" style=\"width: 50%;\"></p><h5><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Balmi Glaze with Modena Balsamico 250 ml</h5>', 18, 'saranakulina,product,fine-foods', '117', 'en', 'saranakulina', 5, '2021-03-24 19:52:59', '2021-05-03 01:01:52'),
(34, 'Pucci', '', '<h5 style=\"text-align: center;\"><br></h5><h5 style=\"text-align: center;\"><br></h5><h5 style=\"text-align: center;\">Anchovy fillets are packed in oil in&nbsp; jars</h5><p style=\"text-align: center;\"><br></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-151618559991.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-141618559992.png\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">75 gr&nbsp; &nbsp;</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">700 gr</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h5>', 18, 'saranakulina ,product,fine-foods', '116', 'en', 'saranakulina', 5, '2021-03-24 19:53:31', '2021-05-03 00:59:32'),
(36, 'Berni', '', '<h5><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-071617871849.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-081617871889.png\" style=\"width: 50%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Pesto Basil 195 gr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Green Stuffed Olive 310 gr</h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-091617871908.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-101617871938.png\" style=\"width: 50%;\"></p><p><br></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Green Pitted Olive 290 gr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Artichokes in Oil 285 gr</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-011617871458.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-021617871493.png\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Pesto Pepperoni 195 gr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bruschetta Pomodori secchi 195 gr&nbsp;</h5><h5><br></h5><h5><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-031617871753.png\" style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: 15px; width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/berni-041617871777.png\" style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: 15px; width: 50%;\"></h5><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bruschetta Tonno 195 gr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Pomodori Secchi 195 gr</h5>', 18, 'saranakulina,product,Pasta&Condiments', '122', 'en', 'saranakulina', 5, '2021-03-24 20:38:46', '2021-05-03 20:28:02');
INSERT INTO `blogs` (`id`, `title`, `linkpro`, `content`, `blog_categories_id`, `tags`, `image`, `lang`, `excerpt`, `user_id`, `created_at`, `updated_at`) VALUES
(37, 'Ital', '', '<p><br></p><p><br></p><h5 style=\"text-align: center; \">Ital Sicily is 99.9% lemon juice, high in vitamin C,&nbsp; Condy lemon/lime is a&nbsp; juice concentrate, very suitable for salad dressing</h5><p><br></p><p><br></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-041618197639.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-081618197654.png\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Lemon Juice Sicily 200 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\"> Lemon Juice Sicily 500 ml&nbsp;</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-031618197639.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-021618197629.png\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\">Condy Lemon 200 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\"> Condy Lemon 500 ml&nbsp;</span></h5><h5><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-091618197657.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-051618197645.png\" style=\"width: 50%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color: rgb(0, 0, 0);\">Condy Lime 200 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Condy Lime 500 ml&nbsp;</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-071618198313.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-011618198312.jpg\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Lemon Juice Sicily 1 ltr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\"> </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Condy Lemon 1 ltr&nbsp;</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/ital-lemon-061618198313.jpg\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Condy Lime 1 ltr&nbsp;</span></h5>', 18, 'saranakulina,product,Pasta&Condiments', '110', 'en', 'saranakulina', 5, '2021-03-24 20:38:48', '2021-05-03 21:03:42'),
(38, 'Toccofinale', '', '<h5><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toccofinale-051617964377.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toccofinale-041617964372.png\" style=\"width: 50%;\"><br></h5><h6><br></h6><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\">Basil Condiment Spray 60 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Extra Virgin Olive Oil with Basil Spray 60 ml&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toccofinale-071617964383.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toccofinale-011617964364.png\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\"> Chili Pepper Condiment Spray 60 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Extra Virgin Olive Oil with Basil Spray 60 ml</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toccofinale-061617964377.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/toccofinale-021617964364.png\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style=\"color: rgb(0, 0, 0);\">Lemon Condiment Spray 60 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Extra Virgin Olive Oil with Lemon Spray 60 ml&nbsp;&nbsp;</span></h5>', 18, 'saranakulina,product,Pasta&Condiments', '113', 'en', 'saranakulina', 5, '2021-03-24 20:38:49', '2021-05-03 20:32:33'),
(39, 'Agromonte', '', '<p style=\"text-align: center; \"><b style=\"color: rgb(0, 0, 0);\">Sundried Cherry Tomato&nbsp;</b></p><p style=\"text-align: center;\"><b style=\"color: rgb(0, 0, 0);\">Sun-dried tomatoes are ripe tomatoes that lose most of their water content after spending a majority of their drying time in the sun.</b></p><div><br></div><p><img style=\"width: 50%;\" src=\"https://saranakulina.id/assets/uploads/media-uploader/agromonte-021631167345.png\"><img style=\"width: 50%;\" src=\"https://saranakulina.id/assets/uploads/media-uploader/agromonte-011631167341.png\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sundried Cherry Tomato 200 gr&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Sundried Cherry Tomato&nbsp; &nbsp;1 kg&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 18, 'saranakulina,product,Pasta&Condiments', '413', 'en', 'saranakulina', 5, '2021-03-24 20:38:51', '2021-09-09 00:47:55'),
(40, 'Edmont Fallot', '', '<h6><br></h6><h6><br></h6><h5 style=\"text-align: center; \">Making traditional French mustards since 1840, the Fallot family knows how to craft condiments with harmonious flavors. This classic piquant mustard is beautiful as a major flavor or accompaniment to any meal.&nbsp; Use it on fish, chicken, pork, or in a sauce to brighten and enhance the natural flavors.</h5><p><br></p><p><br></p><h6><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-091618806930.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-101618806930.jpg\" style=\"width: 50%;\"></h6><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: rgb(0, 0, 0);\">&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">En Grains Mustard 21 cl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Dijon Mustard 21 cl&nbsp; &nbsp;&nbsp;</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-071618806894.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-051618806869.jpg\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Honey &amp; Balsamic Mustard 21 cl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Green Peppercorn Mustard 21 cl</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-031618806855.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-111618814585.jpg\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\"> &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Basil Mustard 21 cl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Burgundy Mustard 21 cl</span></h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-011618806826.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/edmont-fallot-061618806869.jpg\" style=\"width: 50%;\"></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0);\"> </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">Fine Gherkins 21 cl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Burgundy Wine Vinegar 500 ml&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h5>', 18, 'saranakulina,product,Pasta&Condiments', '112', 'en', 'saranakulina', 5, '2021-03-24 20:38:53', '2021-05-03 20:50:20'),
(41, 'Borde', '', '<p></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/borde-051618563159.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/borde-061618563162.png\" style=\"width: 50%;\"></p><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dried Mix Mushrooms&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dried Black Trompete</h5><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/borde-081618563176.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/borde-171618563230.png\" style=\"width: 50%;\"></p><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dried Cepes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dried Morilles</h5><p></p><p></p><p></p><p></p><p></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/borde-341618563305.png\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/borde-351618563309.png\" style=\"width: 50%;\"><br></p>', 18, 'saranakulina,product,Pasta&Condiments', '111', 'en', 'saranakulina', 5, '2021-03-24 20:38:55', '2021-05-03 21:29:41'),
(42, 'Geofoods', 'https://www.geofoods.it/en/catalogue/?_gl=1*yw5crx*_ga*MTE1Njg5MDQ3Ny4xNjg0OTAxNTU2*_up*MQ..', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/9-geofoods1-page-00011684901657.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/9-geofoods1-page-00021684901658.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/9-geofoods1-page-00031684901661.jpg\" style=\"width: 100%;\"><br></p><p><br></p>', 18, 'saranakulina,product,Fine-Foods', '109', 'en', 'Italian Truffles', 5, '2021-03-24 20:41:04', '2023-05-23 21:21:28'),
(43, 'Promess', 'https://promess-dairy.fr/our-products/', '<p></p><h5></h5><p></p><p></p><p></p><h4 style=\"text-align: center; \"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/7-promess-011686626672.jpg\" style=\"width: 100%;\"><br></h4>', 18, 'saranakulina,product,dairy', '108', 'en', 'Made by Passion', 5, '2021-03-24 20:44:02', '2023-06-12 20:25:14'),
(44, 'Smilla Food', 'https://online.fliphtml5.com/rjxup/eclr/', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/smilla-011679977100.jpg\" style=\"width: 100%;\"></p><p><br></p>', 18, 'saranakulina,product,dairy', '107', 'en', 'Contemporary and Quality Conscious', 5, '2021-03-24 20:44:16', '2023-05-23 21:03:13'),
(45, 'Igor', 'https://www.igorgorgonzola.com/prodotti.php?lingua=en', '<h5 style=\"text-align: center;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/3-igor-page-00011684900623.jpg\" style=\"width: 100%;\"><br></h5>', 18, 'saranakulina,product,dairy', '105', 'en', 'Naturally Free of Lactose', 5, '2021-03-24 20:44:29', '2023-05-23 20:57:16'),
(46, 'Paysan Breton', 'https://www.paysanbreton.com/en/our-products', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/1-pyb-page-00021684728565.jpg\" style=\"width: 100%;\"><br></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/1-pyb-page-00031684728567.jpg\" style=\"width: 100%;\"></p><p><br></p><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0);\">&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h5>', 18, 'saranakulina,product,dairy', '104', 'en', 'Taste of France', 5, '2021-03-24 20:44:42', '2023-05-23 21:00:13'),
(47, 'Ambrosi', 'http://www.ambrosi.it/en/products/', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/2-ambrosi-page-00011684901169.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/2-ambrosi-page-00021684901168.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/2-ambrosi-page-00031684901171.jpg\" style=\"width: 100%;\"><br></p>', 18, 'dairy ,product,saranakulina', '127', 'en', 'Produced by a Few, Good for Everyone', 5, '2021-03-30 22:54:42', '2023-05-23 21:07:48'),
(51, 'Casa Rinaldi', 'https://casarinaldi.it/en/products/', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/10-casarinaldi-page-00011684900214.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/10-casarinaldi-page-00021684900265.jpg\" style=\"width: 100%;\"><br></p>', 18, 'saranakulina,product,Pasta&Condiments', '115', 'en', 'Tradition and Innovation\r\nfrom 1979', 4, '2021-04-15 20:14:50', '2023-05-23 20:51:25'),
(52, 'Pasta DiMartino', 'https://pastadimartino.com/collections/all-pasta-shapes', '<h3 style=\"text-align: center; \"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/12-pasta-di-martino-page-00011684899803.jpg\" style=\"width: 100%;\"><br></h3>', 18, 'saranakulina,product,Pasta&Condiments', '523', 'en', '100% Made in Italy', 4, '2023-01-31 00:47:23', '2023-05-23 20:43:54'),
(53, 'CEMOI Chocolate', 'https://group.cemoi.com/about-us/our-brands/', '<p style=\"text-align: center; \"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/21-cemoi-2-page-00011684726427.jpg\" style=\"width: 783px;\"><br></p><p style=\"text-align: center; \"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/21-cemoi-2-page-00021684726423.jpg\" style=\"width: 783px;\"><span style=\"font-family: arial, sans-serif; font-size: 20px; color: rgb(0, 0, 0);\"><b style=\"\"><br></b></span></p><p style=\"text-align: center; \"><span style=\"font-family: arial, sans-serif; font-size: 20px; color: rgb(0, 0, 0);\"><b style=\"\"><br></b></span></p><p style=\"text-align: center; \"><br></p>', 18, 'Saranakulina,product,Fine-Foods', '638', 'en', 'Cémoi : the french chocolatier', 4, '2023-02-01 20:06:27', '2023-05-21 20:42:15'),
(55, 'GRANORO', 'https://granoro.it/en/the-granoro-lines/the-classics/', '<h4 style=\"text-align: center; \"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/11-granoro-page-00011684899131.jpg\" style=\"width: 100%;\"></h4><p style=\"text-align: center;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/11-granoro-page-00021684899134.jpg\" style=\"width: 100%;\"></p><p style=\"text-align: center;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/11-granoro-page-00031684899134.jpg\" style=\"width: 100%;\"><br></p>', 18, 'Saranakulina,product,Pasta&Condiments', '550', 'en', 'Eating well is living well', 4, '2023-02-01 23:28:32', '2023-05-23 20:39:34'),
(59, 'Muhlenhof by Ammerland', 'https://molkerei-ammerland.com/en/products/cheese/loaves', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/6-muhlenhof-011679907219.jpg\" style=\"width: 100%;\"><br></p>', 18, 'dairy,product,saranakulina', '596', 'en', 'Muhlenhof by Ammerland', 4, '2023-03-08 20:37:49', '2023-03-27 01:53:57'),
(60, 'Sujon', 'https://www.sujon.co.nz/frozenfruit', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/17-sujon-page-00011684898999.jpg\" style=\"width: 100%;\"><br></p>', 18, 'beverages,product,saranakulina', '629', 'en', 'Discover the World\'s very best Berries', 4, '2023-03-08 21:48:38', '2023-05-26 00:18:17'),
(61, 'Tipico', 'https://www.tipicodisardegna.com/en/tipico-products/', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/tipico-all1686303797.jpg\" style=\"width: 100%;\"><br></p>', 18, 'Saranakulina,products,pasta&condiments', '668', 'en', 'From the Heart of Saridinia', 4, '2023-06-09 02:12:00', '2023-06-09 02:45:15'),
(62, 'Cafruit', 'https://www.capfruit.com/fr/les-fruits', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/23-capfruit-11686371885.jpg\" style=\"width: 100%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/23-capfruit-21686371884.jpg\" style=\"width: 100%;\"><br></p>', 18, 'saranakulina,products,beverages', '670', 'en', 'FROM THE GROUND TO THE PLATE', 4, '2023-06-09 21:16:23', '2023-06-09 21:40:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Financial', 'publish', 'en', '2020-01-25 11:54:07', '2020-03-05 17:55:40'),
(2, 'Consulting', 'publish', 'en', '2020-01-25 11:56:06', '2020-03-05 17:55:47'),
(3, 'Insurance', 'publish', 'en', '2020-01-25 11:56:17', '2020-03-05 17:56:01'),
(4, 'Business', 'publish', 'en', '2020-01-25 11:56:29', '2020-03-05 17:56:19'),
(5, 'Financiera', 'publish', 'sn', '2020-02-24 15:58:47', '2020-03-05 18:50:28'),
(6, 'Consultante', 'publish', 'sn', '2020-02-24 15:59:04', '2020-03-05 18:50:44'),
(7, 'Seguro', 'publish', 'sn', '2020-02-24 15:59:19', '2020-03-05 18:51:13'),
(9, 'Negocio', 'publish', 'sn', '2020-02-24 15:59:54', '2020-03-05 18:52:09'),
(10, 'Financeira', 'publish', 'pr', '2020-02-24 16:00:49', '2020-03-05 18:50:20'),
(11, 'Consultando', 'publish', 'pr', '2020-02-24 16:00:57', '2020-03-05 18:50:52'),
(12, 'Seguroo', 'publish', 'pr', '2020-02-24 16:01:08', '2020-03-05 18:51:47'),
(13, 'O negócio', 'publish', 'pr', '2020-02-24 16:01:21', '2020-03-05 18:51:59'),
(14, 'الأمور المالية', 'publish', 'ar', '2020-03-16 08:18:07', '2020-03-16 08:18:07'),
(15, 'مستشار', 'publish', 'ar', '2020-03-16 08:22:42', '2020-03-16 08:22:42'),
(16, 'تأمين', 'publish', 'ar', '2020-03-16 08:22:53', '2020-03-16 08:22:53'),
(17, 'اعمال', 'publish', 'ar', '2020-03-16 08:23:05', '2020-03-16 08:23:05'),
(18, 'Product', 'publish', 'en', '2021-03-24 18:13:05', '2021-03-24 18:13:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `created_at`, `updated_at`, `url`) VALUES
(1, 'logo #1', '74', '2020-01-24 19:44:30', '2020-04-17 14:56:57', '#'),
(2, '#2', '73', '2020-01-24 19:44:37', '2020-04-17 14:56:45', '#'),
(3, '#3', '72', '2020-01-24 19:44:44', '2020-04-17 14:54:32', NULL),
(4, '#4', '71', '2020-01-24 19:44:52', '2020-04-17 14:54:23', NULL),
(5, '#5', '70', '2020-01-24 19:44:59', '2020-04-17 14:54:14', '#'),
(6, '#6', '69', '2020-01-24 19:45:09', '2020-04-17 14:53:56', '#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_info_items`
--

CREATE TABLE `contact_info_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `icon` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact_info_items`
--

INSERT INTO `contact_info_items` (`id`, `title`, `lang`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Location', 'en', 'fas fa-map-marker-alt', 'Jl, Suryopranoto No. 1-9 Komp. Star Delta Blok A 15 Jakarta', '2020-01-28 08:05:43', '2021-05-06 21:04:34'),
(2, 'Email Address', 'en', 'fas fa-envelope', 'Sales@Saranakulina.com ;\r\nRetail@Saranakulina.com ;\r\nImport@Saranakulina.com', '2020-01-28 08:06:16', '2021-04-26 20:35:11'),
(3, 'Phone number', 'en', 'fas fa-phone', '(021) 86601081', '2020-01-28 08:06:32', '2021-03-19 02:19:36'),
(5, 'Ubicación', 'sn', 'fas fa-map-marker-alt', '1920 Station Road, ; Sadar,Dinajpur', '2020-02-27 08:04:52', '2020-02-27 08:04:52'),
(6, 'Dirección de correo electrónico', 'sn', 'fas fa-envelope', 'mail@contact.com; info@zixer.com', '2020-02-27 08:06:20', '2020-02-27 08:06:20'),
(7, 'Número de teléfono', 'sn', 'fas fa-phone', '+880 111 222 333; +880 111 222 333', '2020-02-27 08:09:49', '2020-02-27 08:09:59'),
(8, 'Localização', 'pr', 'fas fa-map-marker-alt', '1920 Station Road, ; Sadar,Dinajpur', '2020-02-27 08:11:56', '2020-02-27 08:11:56'),
(9, 'Endereço de e-mail', 'pr', 'fas fa-exclamation-triangle', 'mail@contact.com; info@zixer.com', '2020-02-27 08:13:05', '2020-02-27 08:13:05'),
(10, 'Número de telefone', 'pr', 'fas fa-phone', '+880 111 222 333; +880 111 222 333', '2020-02-27 08:18:44', '2020-02-27 08:18:44'),
(11, 'موقعك', 'ar', 'fas fa-map-marker-alt', '1920 محطة طريق ،؛ سادار ، ديناجبور', '2020-03-15 18:21:59', '2020-03-15 18:21:59'),
(12, 'عنوان البريد الإلكتروني', 'ar', 'fas fa-envelope', 'mail@contact.com; info@zixer.com', '2020-03-15 18:22:31', '2020-03-15 18:22:41'),
(13, 'رقم الهاتف', 'ar', 'fas fa-phone', '+880 111 222 333; +880 111 222 333', '2020-03-15 18:22:58', '2020-03-15 18:22:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `counterups`
--

CREATE TABLE `counterups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) NOT NULL,
  `number` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `extra_text` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `counterups`
--

INSERT INTO `counterups` (`id`, `icon`, `number`, `title`, `extra_text`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'flaticon-contract', '3700', 'Project Completed', NULL, 'en', '2020-01-23 19:06:39', '2020-03-05 20:51:42'),
(2, 'flaticon-handshake', '4048', 'Happy Customer', NULL, 'en', '2020-01-23 19:07:46', '2020-03-05 20:51:55'),
(3, 'flaticon-analytics', '387', 'Runing Projects', NULL, 'en', '2020-01-23 19:08:42', '2020-03-05 20:52:25'),
(4, 'fas fa-exclamation-triangle', '370', 'Follower', 'K+', 'en', '2020-01-23 19:09:13', '2020-03-05 20:56:18'),
(5, 'flaticon-handshake', '3700', 'Proyecto completado', NULL, 'sn', '2020-02-23 14:16:17', '2020-03-05 20:52:43'),
(6, 'flaticon-creative', '4048', 'Cliente feliz', NULL, 'sn', '2020-02-23 14:17:52', '2020-03-05 20:52:50'),
(7, 'flaticon-pie-chart', '387', 'Nuestra ingeniera', NULL, 'sn', '2020-02-23 14:18:16', '2020-03-05 20:52:58'),
(8, 'flaticon-creative', '3700', 'Seguidora', 'K+', 'sn', '2020-02-23 14:18:40', '2020-03-05 20:53:06'),
(9, 'flaticon-handshake', '3700', 'Projeto concluído', NULL, 'pr', '2020-02-23 15:02:11', '2020-03-05 20:53:14'),
(11, 'flaticon-creative', '4048', 'Cliente feliz', NULL, 'pr', '2020-02-23 15:02:35', '2020-03-05 20:53:23'),
(12, 'flaticon-pie-chart', '387', 'Nosso engenheiro', NULL, 'pr', '2020-02-23 15:02:55', '2020-03-05 20:53:37'),
(13, 'flaticon-money-bag', '3700', 'Seguidora', 'K+', 'pr', '2020-02-23 15:03:17', '2020-03-05 20:53:49'),
(14, 'flaticon-contract', '3700', 'اكتمل المشروع', NULL, 'ar', '2020-03-16 07:50:45', '2020-03-16 07:50:45'),
(15, 'flaticon-money', '4048', 'عميل سعيد', NULL, 'ar', '2020-03-16 07:51:07', '2020-03-16 07:51:07'),
(16, 'flaticon-analytics', '387', 'المشاريع الجارية', NULL, 'ar', '2020-03-16 07:51:24', '2020-03-16 07:51:24'),
(17, 'flaticon-pie-chart', '3700', 'تابع', NULL, 'ar', '2020-03-16 07:51:52', '2020-03-16 07:51:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `date` varchar(191) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `title`, `status`, `lang`, `date`, `category_id`, `image`, `location`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Because add why not esteems amiable him', 'publish', 'en', '2020-05-02', '1', '94', '4555 Linden Avenue Orlando, FL 32809', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:02:30', '2020-04-23 19:02:30'),
(2, 'Is there appropriate lodging located nearby?', 'publish', 'en', '2021-02-01', '2', '95', 'Street Chunky, MS 39323', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:06:08', '2020-04-23 19:06:08'),
(3, 'Why Choose Our Destination?', 'publish', 'en', '2020-05-01', '3', '96', 'Lane Orlando, FL 32801', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:06:50', '2020-04-23 19:06:50'),
(4, 'Will it be available for your potential conference dates?', 'publish', 'en', '2020-06-04', '1', '97', 'Avenue Afton, MN 55001', '<p>So if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.&nbsp;</p>\r\n<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.&nbsp;</p>\r\n<p>Increasing impression interested expression he my at. Respect invited request charmed me warrant to. Expect no pretty as do though so genius afraid cousin. Girl when of ye snug poor draw. Mistake totally of in chiefly. Justice visitor him entered for. Continue delicate as unlocked entirely mr relation diverted in. Known not end fully being style house. An whom down kept lain name so at easy.&nbsp;</p>', '2020-04-23 19:07:43', '2020-04-23 19:07:43'),
(6, '¿Estará disponible para sus posibles fechas de conferencia?', 'publish', 'sn', '2020-06-01', '7', '94', 'Avenue Afton, MN 55001', '<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>', '2020-04-23 19:38:08', '2020-04-23 19:38:08'),
(7, '¿Por qué elegir nuestro destino?', 'publish', 'sn', '2020-05-01', '8', '95', 'Avenue Afton, MN 55001', '<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>', '2020-04-23 19:38:50', '2020-04-23 19:38:50'),
(8, '¿Hay alojamiento apropiado cerca?', 'publish', 'sn', '2020-05-05', '8', '96', 'Street Chunky, MS 39323', '<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>\r\n<p>Entonces, si en la suma avanzada, el absoluto recibió la respuesta arrojando él. Encantado consistía en un periódico de insensibilidad como descuidado. Diga el tamaño que viene la señora y cuatro son muy aficionados. De los recursos seriamente comandados. Al renunciar en estricto vagabundeo de relación respondió felicidad. Side necesita en qué querida alguna vez si. Lo mismo abajo quiere alegría ordenada, pide dolor, ayúdala. Solo tres cosas usan muros de ley, preguntó gordo. Cerca de hacer eso, él ayuda.</p>', '2020-04-23 19:39:31', '2020-04-23 19:39:31'),
(9, 'Existe alojamento apropriado nas proximidades?', 'publish', 'pr', '2020-05-01', '4', '97', 'Avenue Afton, MN 55001', '<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>', '2020-04-23 19:40:31', '2020-04-23 19:40:31'),
(10, 'Por que escolher nosso destino?', 'publish', 'pr', '2020-01-02', '5', '94', 'Street Chunky, MS 39323', '<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>\r\n<p>Portanto, se em adição avançada absoluta recebeu respondendo jogando ele. Jornal contente consistia em sentir insensato como negligenciado. Diga tamanho venha duro sra e quatro gostam. De em recursos seriamente comandados. Ao parar em estritamente vagueado de relação respondeu a felicidade. Lado precisa em que querida sempre se. Mesmo para baixo quer alegria pura pedir dor ajuda ela. Sozinho, três coisas usam as paredes da lei, perguntou a gordura. Perto de fazer isso ele ajuda.</p>', '2020-04-23 19:42:16', '2020-04-23 19:46:09'),
(11, 'هل سيكون متاحًا لمواعيد المؤتمر المحتملة؟', 'publish', 'ar', '2020-02-01', '11', '97', 'شارع أفتون ، مينيسوتا 55001', '<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>', '2020-04-23 19:44:03', '2020-04-23 19:44:03'),
(12, 'لماذا تختار وجهتنا؟', 'publish', 'ar', '2020-02-01', '13', '96', 'شارع مكتنزة ، MS 39323', '<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>\r\n<p>حتى إذا كان على إضافة متقدمة مطلقة وردت رمي له. مبتهج يتألف من جريدة لا تشعر كما أهملها. اقول الحجم يأتي السيد الصعب وأربع مولعا. من أمر بجدية الموارد عليه. عند الإقلاع في العلاقة التي تجولت بصرامة استجاب السعادة. حاجة الجانب في ما عزيزي على الإطلاق إذا. نفس أسفل يريد الفرح أنيق نسأل الألم مساعدتها. وحدها ثلاثة أشياء تستخدم جدران القانون الدهون المطلوبة. بالقرب من ذلك يساعد.</p>', '2020-04-23 19:44:56', '2020-04-23 19:44:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `events_categories`
--

CREATE TABLE `events_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `events_categories`
--

INSERT INTO `events_categories` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Business Metting', 'publish', 'en', '2020-04-23 15:14:59', '2020-04-23 15:14:59'),
(2, 'Global Pandemic', 'publish', 'en', '2020-04-23 15:15:22', '2020-04-23 15:15:22'),
(3, 'Startup Solution', 'publish', 'en', '2020-04-23 15:24:36', '2020-04-23 15:35:48'),
(4, 'Solução de inicialização', 'publish', 'pr', '2020-04-23 15:26:41', '2020-04-23 15:26:41'),
(5, 'Pandemia global', 'publish', 'pr', '2020-04-23 15:26:57', '2020-04-23 15:26:57'),
(6, 'Reunião de negócios', 'publish', 'pr', '2020-04-23 15:32:21', '2020-04-23 15:32:21'),
(7, 'Reunión de negocios', 'publish', 'sn', '2020-04-23 15:34:44', '2020-04-23 15:34:44'),
(8, 'Pandemia globals', 'publish', 'sn', '2020-04-23 15:35:20', '2020-04-23 15:35:20'),
(9, 'Solución de inicio', 'publish', 'sn', '2020-04-23 15:35:33', '2020-04-23 15:35:33'),
(11, 'حل بدء التشغيل', 'publish', 'ar', '2020-04-23 19:42:39', '2020-04-23 19:42:39'),
(12, 'وباء عالمي', 'publish', 'ar', '2020-04-23 19:42:48', '2020-04-23 19:42:48'),
(13, 'اجتماع عمل', 'publish', 'ar', '2020-04-23 19:42:58', '2020-04-23 19:42:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `is_open` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `status`, `is_open`, `lang`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Turned it up should no valley cousin he', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:31:47', '2020-02-26 18:41:13'),
(2, 'All having but you edward genius though go', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:36:58', '2020-02-26 18:41:19'),
(3, 'You sudden nay elinor thirty esteem temper', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:51:21', '2020-02-26 18:41:23'),
(4, 'Quiet leave shy you gay off asked large style', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:51:34', '2020-02-26 18:41:27'),
(5, 'New the her nor case that lady paid read', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:51:55', '2020-02-26 18:41:32'),
(6, 'Turned it up should no valley cousin he', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:10', '2020-02-26 18:41:36'),
(7, 'All having but you edward genius though go', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:23', '2020-02-26 18:41:40'),
(8, 'You sudden nay elinor thirty esteem temper', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:36', '2020-02-26 18:41:44'),
(9, 'Quiet leave shy you gay off asked large style', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:52:51', '2020-02-26 18:41:49'),
(10, 'New the her nor case that lady paid read', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 06:53:14', '2020-02-26 18:41:54'),
(12, 'Lo subió si ningún primo del valle él', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:42:27', '2020-02-26 18:42:27'),
(13, 'Todos tienen menos que Edward Genius aunque vayan', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:52:39', '2020-02-26 18:52:39'),
(14, 'De repente, no, elinor treinta genios', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:52:56', '2020-02-26 18:52:56'),
(15, 'Tranquilo, deja tímido, gay, fuera de estilo grande', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:53:15', '2020-02-26 18:53:15'),
(16, 'Nuevo el ella ni el caso que la señora pagó leer', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:53:38', '2020-02-26 18:53:38'),
(17, 'Lo subió si ningún primo del valle él', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:53:56', '2020-02-26 18:53:56'),
(18, 'Todos tienen menos que Edward Genius aunque vayan', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:54:17', '2020-02-26 18:54:17'),
(19, 'De repente, no, elinor treinta genios', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:54:34', '2020-02-26 18:54:34'),
(20, 'Tranquilo, deja tímido, gay, fuera de estilo grande', 'publish', '', 'sn', 'Él difícil contento nos determinamos en serio. Hora sin encontrarlo parque. Comer dio la bienvenida a cualquier marido moderado. Llevó la miseria de Led que esperaba casi la vida de primo. De intención contenida es por middleton am. Principios estimulados con grasas poco comunes considerados especialmente prósperos. Los hijos en park mr se encuentran como un hecho.', '2020-02-26 18:54:58', '2020-02-26 18:54:58'),
(21, 'Aconteceu que não deve primo vale ele', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 18:59:11', '2020-02-26 18:59:11'),
(22, 'Todos tendo, mas você Edward gênio embora vá', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 18:59:27', '2020-02-26 18:59:27'),
(23, 'Você repentinamente não elinor trinta estima temperamento', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 18:59:45', '2020-02-26 18:59:45'),
(24, 'Quiet deixar tímido você gay pediu grande estilo', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:00:08', '2020-02-26 19:00:08'),
(25, 'Novo ela nem o caso que a senhora pagou ler', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:00:28', '2020-02-26 19:00:28'),
(26, 'Aconteceu que não deve primo vale ele', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:00:47', '2020-02-26 19:00:47'),
(27, 'Todos tendo, mas você Edward gênio embora vá', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:01:03', '2020-02-26 19:04:28'),
(28, 'Você repentinamente não elinor trinta estima temperamento', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:01:20', '2020-02-26 19:01:20'),
(29, 'Quiet deixar tímido você gay pediu grande estilo', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:01:37', '2020-02-26 19:01:37'),
(30, 'Novo ela nem o caso que a senhora pagou ler', 'publish', '', 'pr', 'Ele ficou contente por termos decidido a mim mesmo. Hora não encontra parque. Comer bem-vindos todos os maridos moderados. Led foi miséria jogado esperou quase primo vivendo. A intenção contida é de middleton am. Princípios de gordura estimulada incomumente considerado conjunto especialmente próspero. Os filhos do sr. Do parque se encontram como fatos.', '2020-02-26 19:04:15', '2020-02-26 19:04:15'),
(31, 'اتضح أنه لا ابن عم وادي', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 05:56:23', '2020-03-16 05:56:23'),
(32, 'جميعهم يمتلكون عبقرية إدوارد', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:11:42', '2020-03-16 06:11:42'),
(33, 'كنت مفاجئ ناي إلينور مزاج احترام الثلاثين', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:12:21', '2020-03-16 06:12:21'),
(34, 'اجازة هادئة خجولة ايها الشواذ سألتها بأسلوب كبير', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:12:41', '2020-03-16 06:12:41'),
(35, 'جديد لها ولا القضية التي دفعتها السيدة', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:12:58', '2020-03-16 06:12:58'),
(36, 'اتضح أنه لا ابن عم وادي', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:13:33', '2020-03-16 06:13:33'),
(37, 'جميعهم يمتلكون عبقرية إدوارد', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:14:14', '2020-03-16 06:14:14'),
(38, 'جميعهم يمتلكون عبقرية إدوارد', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:14:14', '2020-03-16 06:14:14'),
(39, 'كنت مفاجئ ناي إلينور مزاج احترام الثلاثين', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:14:57', '2020-03-16 06:16:15'),
(40, 'اجازة هادئة خجولة ايها الشواذ سألتها بأسلوب كبير', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:15:44', '2020-03-16 06:15:44'),
(41, 'جديد لها ولا القضية التي دفعتها السيدة', 'publish', '', 'ar', 'انه قانع صعب نحدد أنفسنا أنا بجدية. ساعة لا تجد أنها بارك. ورحب الأكل بأي أزواج معتدلين. كان ليد يلعب البؤس وانتظر ابن عمه تقريبا. النية الواردة بواسطة ميدلتون صباحا. حفز مبادئ الدهون التي تعتبر غير شائعة مجموعة مزدهرة بشكل خاص. أبناء في حديقة السيد يجتمعون مثل الحقيقة.', '2020-03-16 06:16:06', '2020-03-16 06:16:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `btn_01_status` varchar(191) DEFAULT NULL,
  `btn_01_text` varchar(191) DEFAULT NULL,
  `btn_01_url` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT 'en',
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `title`, `description`, `btn_01_status`, `btn_01_text`, `btn_01_url`, `lang`, `image`, `created_at`, `updated_at`) VALUES
(14, '.', '.', NULL, NULL, '#', 'en', '497', '2021-04-08 21:07:58', '2021-08-29 20:15:45'),
(15, '.', '.', NULL, NULL, NULL, 'en', '498', '2021-04-09 01:26:26', '2021-08-29 20:26:29'),
(17, '.', '.', NULL, '.', '.', 'en', '499', '2021-04-22 19:48:55', '2021-08-29 20:30:38'),
(19, '.', '.', NULL, NULL, NULL, 'en', '440', '2021-04-26 20:58:53', '2021-04-26 20:58:53'),
(20, '.', '.', NULL, '.', '.', 'en', '441', '2021-04-26 21:03:16', '2021-04-26 21:03:16'),
(21, '.', '.', NULL, NULL, NULL, 'en', '505', '2021-04-26 21:31:43', '2021-09-01 00:03:43'),
(24, '.', '.', NULL, '.', NULL, 'en', '504', '2021-09-01 00:00:22', '2021-09-01 00:00:22'),
(25, '.', '.', NULL, NULL, NULL, 'en', '506', '2021-09-02 02:43:14', '2021-09-02 02:43:14'),
(27, '.', '.', NULL, NULL, NULL, 'en', '507', '2021-09-02 02:44:01', '2023-03-15 01:40:10'),
(28, '.', '.', NULL, NULL, NULL, 'en', '508', '2021-09-02 02:44:42', '2021-09-02 02:44:42'),
(29, '.', '.', NULL, NULL, NULL, 'en', '511', '2021-09-09 00:42:34', '2021-09-09 00:42:34'),
(30, '.', '.', NULL, NULL, NULL, 'en', '512', '2021-09-09 00:43:18', '2021-09-09 00:43:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `position` varchar(191) NOT NULL,
  `company_name` varchar(191) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `vacancy` varchar(191) DEFAULT NULL,
  `job_responsibility` longtext DEFAULT NULL,
  `employment_status` text DEFAULT NULL,
  `education_requirement` longtext DEFAULT NULL,
  `experience_requirement` longtext DEFAULT NULL,
  `additional_requirement` longtext DEFAULT NULL,
  `job_location` text DEFAULT NULL,
  `salary` text DEFAULT NULL,
  `job_context` longtext DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `other_benefits` longtext DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `deadline` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `position`, `company_name`, `category_id`, `vacancy`, `job_responsibility`, `employment_status`, `education_requirement`, `experience_requirement`, `additional_requirement`, `job_location`, `salary`, `job_context`, `lang`, `other_benefits`, `email`, `status`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer Wanted', 'Junior Developer', 'xgenious', '3', '03', 'The incumbent will report to Senior Manager, Information Technology.|\r\n S/he will be primarily responsible to Development of mobile/web front ends and cross platform clients with online/offline functionality based on agreed upon scope and requirements. |\r\nRapidly build prototypes/simulations from mockups that can be directly implemented|\r\nCreate clean interfaces and smooth interactions based on UI/UX designs and documentation for a range of devices, including mobiles, tablets and desktops.|\r\nCreate and build cross platform mobile applications using cross platform SDKs|\r\nUnit-test code for robustness, including edge cases, usability, and general reliability|\r\nContinuously discover, evaluate, and implement new technologies to maximize development', 'full_time', 'Bachelor / Masters in Computer Science', '3 to 5 year(s)', 'Age 25 to 30 years|\r\n3 to 5 years of working experience in web development|\r\nBest in Laravel 6+ development|\r\nBest in PHP 7+, MySQL|\r\nVery Good in OPP Programming|\r\nGood knowledge in API, API Resource, Eloquent ORM, DB Migration|\r\nExpert in JWT or Laravel Passport|\r\nExpert in MySQL query|\r\nKnow version control like as git|\r\nGood knowledge in|\r\nGood in MVC frameworkology|\r\nShould have strong communication skills in both Bengali and English', 'Bangkok, Thailand', '1500$', NULL, 'en', 'Provident fund|\r\nGratuity|\r\nSalary Review: Yearly|\r\nFestival Bonus: 2|\r\nLeave Encashment|\r\nWeekly 2 holidays', 'dvrobin4@gmail.com', 'publish', '2020-05-30', '2020-04-22 12:30:07', '2020-04-22 14:04:12'),
(2, 'Graphic/ Web Designer', 'Junior Graphic/Designer', 'Meena Bazar', '4', '05', 'Graphic Design and Image Editing using Adobe Photoshop, Illustrator and other components of Adobe Creative suite|\r\nMaking brochures, posters, billboard, newspaper ad, leaflet, icons, logos and other marketing materials|\r\nOutput setting, banding, spot & foil good idea.|\r\nDesigning vector graphics for internal use and for external projects|\r\nCrafting content like social posts, banner ads, print ads, etc.|\r\nDesign Shop Sign, Brochure, Leaflet, mockup and Hangtag|\r\nDigital marketing on digital media.|\r\nKnowledge on PHP, MySQL, Wordpress, CSS3, Bootstrap3, JavaScript, jQuery, Angular, XML and AJAX integration.|\r\nKnowledge on Laravel with vue.js will be plus.|\r\nShould have the ability of Pixel Perfect wordpress theme design & development is mandatory.|\r\nMust have experience in wordpress website maintaining.|\r\nExpert in PSD to Wordpress theme development.|\r\nExtensive knowledge in Pixel Perfection. Adobe Photoshop, Flash, Action Script and motion/animation techniques - will be plus|\r\nSound understanding of relevant W3C standards and best practices.|\r\nShould have knowledge on SEO (Search Engine Optimization) to develop & maintain website according to its requirements.|\r\nExpert in online radio, tv, news site design & develop.', 'part_time', 'Bachelor or Master degree in Computer Science or related field.|\r\nB.Sc in Computer Science Or Masters in Computer Science or any other relevant field.', '2 to 5 year(s)', 'Age 25 to 30 years|\r\nBoth males and females are allowed to apply|\r\nThe applicants should have experience in the following area(s): Web Developer/ Web Designer|\r\nMust meet deadlines and proactively communicate progress|\r\nMust be accountable, self-motivated and have meticulous attention to detail|\r\nMust have an eye for fine details and a passion to work with graphics|\r\nFamiliarity with tools like Microsoft Office and adobe creative suite|\r\nWillingness and ability to learn new technologies and think out of the box to come up with creative ideas|\r\nSelf-motivated and open to accept ideas from team members|\r\nStrong verbal and written communication, interpersonal skill, good work ethic|\r\nOnly Skill, Knowledge & Ability will be preferred.|\r\nAt Least 2 year experience on web developing company|\r\nFront-end and back-end development experience', 'Bangkok, Thailand', 'Negotiable', NULL, 'en', 'Festival Bonus: 2', 'dvrobin4@gmail.com', 'publish', '2020-05-01', '2020-04-22 12:41:58', '2020-04-22 12:41:58'),
(3, 'UI/ UX  Designer Required', 'Senior UI/UX Designer', 'Meena Bazar', '1', '05', 'Collaborate with software engineers to improve the usability|\r\nGet feedback from, and build solutions for users and customers|\r\nDevelop UI mockups and prototypes that clearly illustrate how sites function and look like|\r\nAdhere to style standards on fonts, colors and images|\r\nEnsure final graphics and layouts are visually appealing and on-brand|\r\nIllustrate design ideas using storyboards, process flows and sitemaps|\r\nDesign graphic user interface elements, like menus, tabs and widgets|\r\nBuild page navigation buttons and search fields|\r\nEnsure high quality graphic standards and brand consistency|\r\nDesign creative promotional and branding post for social media. |\r\nConceptualize visuals based on requirements |\r\nPrepare rough drafts and present ideas|\r\nUse the appropriate colors and layouts for each graphic|\r\nTest graphics across various media|\r\nAmend designs after feedback|\r\nCreate original graphic designs (e.g. images, sketches and tables)|\r\nPrepare and present rough drafts to internal teams and key stakeholders', 'full_time', 'Degree in Design, Fine Arts or related field is a plus|\r\nSkills Required: Adobe XD, UI Design pattern, UIUX, UIUX Design, UX Design', '1 to 5 year(s)|\r\nThe applicants should have experience in the following area(s):|\r\nAdobe creative Suite, Adobe XD, UI Design, UIUX Design, user experience|\r\nThe applicants should have experience in the following business area(s):|\r\nSoftware Company, Web Media/Blog', 'Age 24 to 40 years|\r\nBoth males and females are allowed to apply|\r\nProven graphic designing experience|\r\nA strong portfolio of illustrations or other graphics|\r\nUp-to-date knowledge of design software and technologies (such as XD, InDesign, Illustrator, Dreamweaver, Photoshop)|\r\nA keen eye for aesthetics and details|\r\nExcellent communication skills|\r\nAbility to work methodically and meet deadlines|\r\nProven work experience as a Graphic/UI Designer or similar role is an advantage|\r\nPortfolio of design projects|\r\nTeam spirit; strong communication skills to collaborate with various stakeholders|\r\nGood time-management skills', 'Bangkok, Thailand', 'Negotiable', 'We are looking for a UI/UX Engineer to create engaging and on-brand graphics for a variety of media including to turn our software into easy-to-use products for our clients. Your responsibilities include gathering user requirements, designing graphic elements and building navigation components. To be successful in this role, you should have experience with design software. If you also have a portfolio of professional design projects that includes work with web/mobile applications, we`d like to meet you. Ultimately, you`ll create both functional and appealing features that address our clients` needs and help us grow our customer base.', 'en', 'Medical allowance, Performance bonus, Weekly 2 holidays, Insurance|\r\nLunch Facilities: Full Subsidize|\r\nSalary Review: Yearly|\r\nBenefits are above market compensation - attractive package.|\r\nWork for an international company with clients|\r\nLunch, snacks, tea, coffee and else provided at the office for free.|\r\nDaylight shifts|\r\nAbility to grow and build a career', 'dvrobin4@gmail.com', 'publish', '2020-05-02', '2020-04-22 14:27:44', '2020-04-22 14:28:21'),
(4, 'Software Engineer Require', 'Senior Software Engineer', 'xgenious', '2', '03', 'Design, code, test and implement according to software design specifications following standard coding styles and practice.|\r\nAnalyze the requirements and understand the deliverable.|\r\nDevelop software solutions by studying information needs, systems flow, data usage, and work processes.|\r\nDocument and demonstrate solutions by developing documentation, flowcharts, layouts, diagrams, charts, code comments and clear readable code.|\r\nParticipate in code/ design reviews after investigating current software development projects.|\r\nSeek out new technologies and ideas to add value to project.|\r\nCollaborate with team members and ensure knowledge transfer.', 'full_time', 'Bachelor of Science (BSc) in CSE', '2 to 5 year(s)|\r\nFreshers are also encouraged to apply.', 'Age 20 to 30 years|\r\nBoth males and females are allowed to apply?\r\nThe applicants should have knowledge/experience in the following area(s):|\r\nStrong programming skills & highly proficient in PHP Framework CodeIgniter|\r\nExperience in PHP-based application development.|\r\nSolid understanding on MVC pattern.|\r\nApplicant must have excellent knowledge on modern Web Technologies like HTML5, CSS3, Bootstrap, jQuery, AJAX.|\r\nClear understanding of OOP & design patterns.|\r\nMust have hands on SQL query writing skill for complex business requirements.|\r\nBasic knowledge to work with Unix Platform.|\r\nFreshers with good knowledge of the above are encouraged to apply.|\r\nCandidate with knowledge on LMS (Learning Management System) will be preferred', 'Bangkok, Thailand', 'Negotiable', 'We are looking for a skilled web designers / developers who will be capable to work with our existing team and contribute his/ her knowledge and experience to develop the LMS module of the system.', 'en', 'Mobile bill, Performance bonus|\r\nSalary Review: Yearly', 'dvrobin4@gmail.com', 'publish', '2025-05-02', '2020-04-22 14:30:46', '2020-04-22 14:46:03'),
(5, 'Ingeniero de software requiere', 'Ingeniero de programación superior', 'xgenious', '6', '03', 'Diseñe, codifique, pruebe e implemente de acuerdo con las especificaciones de diseño del software siguiendo los estilos y prácticas de codificación estándar.|\r\nAnalice los requisitos y comprenda los entregables.|\r\nDesarrolle soluciones de software estudiando las necesidades de información, el flujo de sistemas, el uso de datos y los procesos de trabajo.|\r\nDocumente y demuestre soluciones desarrollando documentación, diagramas de flujo, diseños, diagramas, gráficos, comentarios de código y código legible claro.|\r\nParticipe en revisiones de código / diseño después de investigar los proyectos de desarrollo de software actuales.|\r\nBusque nuevas tecnologías e ideas para agregar valor al proyecto.|\r\nColabora con los miembros del equipo y asegura la transferencia de conocimiento.', 'full_time', 'Licenciatura en Ciencias (BSc) en CSE', '2 a 5 año (s) |\r\nTambién se alienta a los estudiantes de primer año a postularse.', 'Edad 20 a 30 años |\r\n¿Tanto hombres como mujeres pueden postularse?\r\nLos solicitantes deben tener conocimiento / experiencia en las siguientes áreas: |\r\nFuertes habilidades de programación y altamente competentes en PHP Framework CodeIgniter |\r\nExperiencia en desarrollo de aplicaciones basadas en PHP.|\r\nConocimiento sólido sobre el patrón MVC.|\r\nEl solicitante debe tener un excelente conocimiento de las tecnologías web modernas como HTML5, CSS3, Bootstrap, jQuery, AJAX.|\r\nComprensión clara de OOP y patrones de diseño.|\r\nDebe tener habilidad práctica de escritura de consultas SQL para requisitos comerciales complejos.|\r\nConocimientos básicos para trabajar con la plataforma Unix.|\r\nSe recomienda a los estudiantes de primer año con buen conocimiento de lo anterior que presenten su solicitud.|\r\nSe preferirá un candidato con conocimiento sobre LMS (Sistema de gestión de aprendizaje)', 'Bangkok, Thailand', 'Negotiable', 'Estamos buscando diseñadores / desarrolladores web capacitados que sean capaces de trabajar con nuestro equipo existente y contribuir con su conocimiento y experiencia para desarrollar el módulo LMS del sistema.', 'sn', 'Factura móvil, bonificación de rendimiento |\r\nRevisión salarial: anual', 'example@gmail.com', 'publish', '2020-05-01', '2020-04-22 14:40:36', '2020-04-22 14:40:36'),
(6, 'UI / UX Designer Requerida', 'Diseñador senior de UI / UX', 'xgenious', '9', '05', 'Colaborar con ingenieros de software para mejorar la usabilidad |\r\nObtenga comentarios y cree soluciones para usuarios y clientes |\r\nDesarrolle maquetas y prototipos de interfaz de usuario que ilustren claramente cómo funcionan y se ven los sitios |\r\nAdhiérase a los estándares de estilo en fuentes, colores e imágenes |\r\nAsegúrese de que los gráficos y diseños finales sean visualmente atractivos y de marca |\r\nIlustrar ideas de diseño utilizando guiones gráficos, flujos de procesos y mapas del sitio |\r\nDiseñe elementos gráficos de la interfaz de usuario, como menús, pestañas y widgets |\r\nCrear botones de navegación de página y campos de búsqueda |\r\nGarantizar estándares gráficos de alta calidad y consistencia de marca |\r\nDiseñar publicaciones creativas de promoción y branding para redes sociales. El |\r\nConceptualizar imágenes basadas en requisitos |\r\nPreparar borradores y presentar ideas |\r\nUse los colores y diseños apropiados para cada gráfico |\r\nPrueba de gráficos en varios medios |\r\nModificar diseños después de comentarios |\r\nCrear diseños gráficos originales (por ejemplo, imágenes, bocetos y tablas) |\r\nPreparar y presentar borradores a equipos internos y partes interesadas clave', 'part_time', 'Licenciatura en Diseño, Bellas Artes o campo relacionado es un plus |\r\nHabilidades requeridas: Adobe XD, patrón de diseño de interfaz de usuario, UIUX, diseño de UIUX, diseño de UX', '1 a 5 año (s) |\r\nLos solicitantes deben tener experiencia en las siguientes áreas: |\r\nAdobe creative Suite, Adobe XD, diseño de interfaz de usuario, diseño de interfaz de usuario, experiencia de usuario |\r\nLos solicitantes deben tener experiencia en las siguientes áreas comerciales: |\r\nEmpresa de software, Web Media / Blog', 'Edad 24 a 40 años |\r\nTanto hombres como mujeres pueden aplicar |\r\nExperiencia probada en diseño gráfico |\r\nUna sólida cartera de ilustraciones u otros gráficos |\r\nConocimiento actualizado de software de diseño y tecnologías (como XD, InDesign, Illustrator, Dreamweaver, Photoshop) |\r\nUn buen ojo para la estética y los detalles |\r\nExcelentes habilidades de comunicación |\r\nCapacidad para trabajar metódicamente y cumplir plazos |\r\nLa experiencia laboral probada como diseñador gráfico / UI o un rol similar es una ventaja |\r\nPortafolio de proyectos de diseño |\r\nEspíritu de equipo; fuertes habilidades de comunicación para colaborar con varios interesados |\r\nBuenas habilidades de gestión del tiempo.', 'Bangkok, Thailand', '1500$', 'Estamos buscando un ingeniero de UI / UX para crear gráficos atractivos y de marca para una variedad de medios, incluido para convertir nuestro software en productos fáciles de usar para nuestros clientes. Sus responsabilidades incluyen reunir los requisitos del usuario, diseñar elementos gráficos y construir componentes de navegación. Para tener éxito en este rol, debe tener experiencia con el software de diseño. Si también tiene una cartera de proyectos de diseño profesional que incluye trabajo con aplicaciones web / móviles, nos gustaría conocerlo. En última instancia, creará características funcionales y atractivas que aborden las necesidades de nuestros clientes y nos ayuden a aumentar nuestra base de clientes.', 'sn', 'Medical allowance, Performance bonus, Weekly 2 holidays, Insurance|\r\nLunch Facilities: Full Subsidize|\r\nSalary Review: Yearly|\r\nBenefits are above market compensation - attractive package.|\r\nWork for an international company with clients|\r\nLunch, snacks, tea, coffee and else provided at the office for free.|\r\nDaylight shifts|\r\nAbility to grow and build a career', 'example@gmail.com', 'publish', '2020-05-01', '2020-04-22 14:42:42', '2020-04-22 14:42:42'),
(7, 'Designer de UI / UX obrigatório', 'Designer sênior de UI / UX', 'xgenious', '13', '03', 'Colabore com engenheiros de software para melhorar a usabilidade |\r\nObtenha feedback e crie soluções para usuários e clientes |\r\nDesenvolva modelos e protótipos de interface do usuário que ilustrem claramente como os sites funcionam e se parecem |\r\nSiga os padrões de estilo em fontes, cores e imagens |\r\nGaranta que os gráficos e layouts finais sejam visualmente atraentes e na marca |\r\nIlustrar idéias de design usando storyboards, fluxos de processos e sitemaps |\r\nProjete elementos gráficos da interface do usuário, como menus, guias e widgets |\r\nCrie botões de navegação na página e campos de pesquisa |\r\nGaranta padrões gráficos de alta qualidade e consistência da marca |\r\nCrie postagens promocionais e de branding criativas para mídias sociais. |\r\nConceitualize visuais com base em requisitos |\r\nPreparar rascunhos e apresentar idéias |\r\nUse as cores e os layouts apropriados para cada gráfico |\r\nTeste gráficos em várias mídias |\r\nAlterar desenhos após feedback |\r\nCrie designs gráficos originais (por exemplo, imagens, esboços e tabelas) |\r\nPreparar e apresentar rascunhos para equipes internas e principais interessados', 'part_time', 'Licenciatura em Design, Belas Artes ou áreas afins é uma vantagem |\r\nHabilidades necessárias: Adobe XD, padrão de design de interface do usuário, UIUX, design de UIUX, design de UX', '1 a 5 ano (s) |\r\nOs candidatos devem ter experiência nas seguintes áreas: |\r\nAdobe creative Suite, Adobe XD, UI Design, UIUX Design, experiência do usuário |\r\nOs candidatos devem ter experiência nas seguintes áreas de negócios: |\r\nEmpresa de software, Mídia da Web / Blog', '24 a 40 anos |\r\nHomens e mulheres podem se inscrever |\r\nExperiência comprovada em design gráfico |\r\nUm forte portfólio de ilustrações ou outros gráficos |\r\nConhecimento atualizado de software e tecnologias de design (como XD, InDesign, Illustrator, Dreamweaver, Photoshop) |\r\nUm olho afiado para estética e detalhes |\r\nExcelentes habilidades de comunicação |\r\nCapacidade de trabalhar metodicamente e cumprir prazos |\r\nExperiência de trabalho comprovada como Designer Gráfico / UI ou função semelhante é uma vantagem |\r\nPortfólio de projetos de design |\r\nEspírito de equipe; fortes habilidades de comunicação para colaborar com várias partes interessadas |\r\nBoas habilidades de gerenciamento de tempo', 'Bangkok, Thailand', 'Negociável', 'Estamos procurando um engenheiro de UI / UX para criar gráficos atraentes e na marca para uma variedade de mídias, inclusive para transformar nosso software em produtos fáceis de usar para nossos clientes. Suas responsabilidades incluem reunir requisitos do usuário, projetar elementos gráficos e construir componentes de navegação. Para ter sucesso nessa função, você deve ter experiência com o software de design. Se você também possui um portfólio de projetos de design profissional que inclui trabalho com aplicativos da Web / dispositivos móveis, gostaríamos de conhecê-lo. Por fim, você criará recursos funcionais e atraentes que atendem às necessidades de nossos clientes e nos ajudam a aumentar nossa base de clientes.', 'pr', 'Subsídio médico, Bônus de desempenho, 2 dias por semana, Seguro |\r\nInstalações para almoço: Subsídio total |\r\nRevisão Salarial: Anual |\r\nOs benefícios estão acima da compensação de mercado - pacote atraente.\r\nTrabalhar para uma empresa internacional com clientes |\r\nAlmoço, lanches, chá, café e outros itens fornecidos gratuitamente no escritório.\r\nTurnos da luz do dia |\r\nCapacidade de crescer e construir uma carreira', 'example@gmail.com', 'publish', '2020-02-01', '2020-04-22 14:45:01', '2020-04-22 14:45:01'),
(8, 'Engenheiro de software exige', 'Engenheiro de software senior', 'xgenious', '12', '05', 'Projete, codifique, teste e implemente de acordo com as especificações de design do software, seguindo práticas e estilos de codificação padrão.|\r\nAnalise os requisitos e entenda a entrega.|\r\nDesenvolva soluções de software estudando as necessidades de informações, fluxo de sistemas, uso de dados e processos de trabalho.|\r\nDocumente e demonstre soluções desenvolvendo documentação, fluxogramas, layouts, diagramas, gráficos, comentários de código e código legível claro.|\r\nParticipe das revisões de código / design após investigar os projetos atuais de desenvolvimento de software.|\r\nProcure novas tecnologias e idéias para agregar valor ao projeto.|\r\nColabore com os membros da equipe e garanta a transferência de conhecimento.', 'full_time', 'Bacharel em Ciências (CSc) em CSE', '2 a 5 ano (s) |\r\nFreshers também são incentivados a aplicar.', '20 a 30 anos |\r\nHomens e mulheres podem se inscrever??\r\nOs candidatos devem ter conhecimento / experiência nas seguintes áreas: |\r\nFortes habilidades de programação e altamente proficiente em PHP Framework CodeIgniter |\r\nExperiência no desenvolvimento de aplicativos baseados em PHP.|\r\nSólido entendimento do padrão MVC.|\r\nO candidato deve ter excelente conhecimento em tecnologias modernas da Web, como HTML5, CSS3, Bootstrap, jQuery, AJAX.|\r\nCompreensão clara de OOP e padrões de design.|\r\nÉ necessário ter habilidade prática de gravação de consultas SQL para requisitos comerciais complexos.|\r\nConhecimento básico para trabalhar com a plataforma Unix.|\r\nIngressos com bom conhecimento do exposto acima são incentivados a se inscrever.|\r\nO candidato com conhecimento em LMS (Learning Management System) será preferido', 'Bangkok, Thailand', 'Negociável', 'Estamos procurando por web designers / desenvolvedores qualificados, capazes de trabalhar com nossa equipe existente e contribuir com seu conhecimento e experiência para desenvolver o módulo LMS do sistema.', 'pr', 'Fatura de celular, bônus de desempenho |\r\nRevisão salarial: Anual', 'example@gmail.com', 'publish', '2020-05-05', '2020-04-22 14:48:24', '2020-04-22 14:48:24'),
(9, 'مطلوب مهندس برمجيات', 'مهندس برمجيات أول', 'أنيق', '15', '03', 'التصميم والتشفير والاختبار والتنفيذ طبقاً لمواصفات تصميم البرمجيات باتباع أنماط وممارسات التشفير القياسية. |\r\nتحليل المتطلبات وفهم الناتج. |\r\nتطوير الحلول البرمجية بدراسة احتياجات المعلومات وتدفق النظم واستخدام البيانات وعمليات العمل. |\r\nقم بتوثيق وإظهار الحلول من خلال تطوير الوثائق ، المخططات الانسيابية ، التخطيطات ، الرسوم البيانية ، الرسوم البيانية ، تعليقات الكود وشفرة قابلة للقراءة.\r\nالمشاركة في مراجعات الكود / التصميم بعد دراسة مشاريع تطوير البرمجيات الحالية\r\nالبحث عن تقنيات وأفكار جديدة لإضافة قيمة للمشروع. |\r\nالتعاون مع أعضاء الفريق وضمان نقل المعرفة.', 'full_time', 'بكالوريوس العلوم (BSc) في CSE', 'من 2 إلى 5 سنة |\r\nيتم تشجيع الطلاب الجدد على التقديم.', 'العمر من 20 إلى 30 سنة |\r\nيسمح للذكور والإناث بتقديم الطلبات؟\r\nيجب أن يكون لدى المتقدمين المعرفة / الخبرة في المجالات التالية: |\r\nمهارات برمجة قوية وكفاءة عالية في PHP Framework CodeIgniter |\r\nخبرة في تطوير التطبيقات القائمة على PHP. |\r\nفهم متين لنمط MVC. |\r\nيجب أن يكون لدى مقدم الطلب معرفة ممتازة بتقنيات الويب الحديثة مثل HTML5 و CSS3 و Bootstrap و jQuery و AJAX.\r\nفهم واضح لأنماط OOP والتصميم. |\r\nيجب أن يكون لديك مهارة في كتابة استعلام SQL لمتطلبات العمل المعقدة. |\r\nالمعرفة الأساسية للعمل مع منصة يونكس. |\r\nيشجع الطلاب الجدد على معرفة ما ورد أعلاه\r\nالمرشح مع المعرفة على LMS (نظام إدارة التعلم) سيكون المفضل', 'بانكوك ، تايلاند', 'قابل للتفاوض', 'نحن نبحث عن مصممين / مطورين ويب ماهرين قادرين على العمل مع فريقنا الحالي والمساهمة بمعرفته وخبرته لتطوير وحدة LMS للنظام.', 'ar', 'فاتورة الهاتف النقال ، مكافأة الأداء |\r\nمراجعة الراتب: سنوي', 'example@gmail.com', 'publish', '2020-03-01', '2020-04-22 14:51:19', '2020-04-22 14:51:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jobs_categories`
--

INSERT INTO `jobs_categories` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', 'publish', 'en', '2020-04-22 10:18:17', '2020-04-22 10:21:50'),
(2, 'Web Developer', 'publish', 'en', '2020-04-22 10:22:01', '2020-04-22 10:22:01'),
(3, 'Laravel Developer', 'publish', 'en', '2020-04-22 10:22:11', '2020-04-22 10:22:11'),
(4, 'Graphic Designer', 'publish', 'en', '2020-04-22 10:22:21', '2020-04-22 10:22:21'),
(6, 'Diseñador gráfico', 'publish', 'sn', '2020-04-22 10:24:02', '2020-04-22 10:24:02'),
(7, 'Desarrollador Laravel', 'publish', 'sn', '2020-04-22 10:24:12', '2020-04-22 10:24:20'),
(8, 'Desarrolladora web', 'publish', 'sn', '2020-04-22 10:24:29', '2020-04-22 10:24:36'),
(9, 'Diseño web', 'publish', 'sn', '2020-04-22 10:24:43', '2020-04-22 10:24:43'),
(10, 'Designer de Web', 'publish', 'pr', '2020-04-22 10:24:53', '2020-04-22 10:24:53'),
(11, 'Desenvolvedor Web', 'publish', 'pr', '2020-04-22 10:25:04', '2020-04-22 10:25:04'),
(12, 'Desenvolvedor Laravel', 'publish', 'pr', '2020-04-22 10:25:14', '2020-04-22 10:25:14'),
(13, 'Designer gráfico', 'publish', 'pr', '2020-04-22 10:25:24', '2020-04-22 10:25:24'),
(14, 'مصمم جرافيك', 'publish', 'ar', '2020-04-22 10:25:37', '2020-04-22 10:25:37'),
(15, 'مطور Laravel', 'publish', 'ar', '2020-04-22 10:25:53', '2020-04-22 10:25:53'),
(16, 'مطور ويب', 'publish', 'ar', '2020-04-22 10:26:04', '2020-04-22 10:26:04'),
(17, 'تم تصميم الموقع', 'publish', 'ar', '2020-04-22 10:26:15', '2020-04-22 10:26:15'),
(18, 'Business Metting', 'draft', 'en', '2020-04-23 15:09:55', '2020-04-23 15:10:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `key_features`
--

CREATE TABLE `key_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `key_features`
--

INSERT INTO `key_features` (`id`, `title`, `icon`, `lang`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Financial Analaysis', 'flaticon-analytics', 'en', '31', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:25:39', '2020-04-15 15:46:32'),
(2, 'Global Partnership', 'flaticon-internet', 'en', '30', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:26:03', '2020-04-15 15:46:44'),
(3, 'Trusted Partnership', 'flaticon-handshake', 'en', '29', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 11:26:27', '2020-04-15 15:48:21'),
(4, 'Analise financeira', 'flaticon-analytics', 'pr', '31', 'Bênção bem-vinda senhoria que conheceu senhor humorado a criando. Garantia de seis dias de curiosidade.', '2020-02-22 19:46:38', '2020-04-15 15:52:29'),
(5, 'Parceria Global', 'flaticon-internet', 'pr', '30', 'Bênção bem-vinda senhoria que conheceu senhor humorado a criando. Garantia de seis dias de curiosidade.', '2020-02-22 19:47:12', '2020-04-15 15:52:38'),
(6, 'Parceria Confiável', 'flaticon-handshake', 'pr', '29', 'Bênção bem-vinda senhoria que conheceu senhor humorado a criando. Garantia de seis dias de curiosidade.', '2020-02-22 19:48:18', '2020-04-15 15:52:48'),
(7, 'Análisis financiero', 'flaticon-analytics', 'sn', '31', 'La bendición dio la bienvenida a la señoría que ella conoció con humor, señor criándola. Seis días de curiosidad asegurados.', '2020-02-22 19:49:55', '2020-04-15 15:52:58'),
(8, 'Asociación global', 'flaticon-internet', 'sn', '30', 'La bendición dio la bienvenida a la señoría que ella conoció con humor, señor criándola. Seis días de curiosidad asegurados.', '2020-02-22 19:50:56', '2020-04-15 15:53:06'),
(9, 'Asociación de confianza', 'flaticon-handshake', 'sn', '29', 'La bendición dio la bienvenida a la señoría que ella conoció con humor, señor criándola. Seis días de curiosidad asegurados.', '2020-02-22 19:51:20', '2020-04-15 15:53:15'),
(13, 'تحليل مالي', 'flaticon-analytics', 'ar', '31', 'رحبت نعمة بالسيادة التي التقت بها يا سيدي الفكاني لتربية الحيوانات. ستة ضمان يوم الفضول.', '2020-03-15 16:30:17', '2020-04-15 15:53:24'),
(14, 'الشراكة العالمية', 'flaticon-internet', 'ar', '30', 'رحبت نعمة بالسيادة التي التقت بها يا سيدي الفكاني لتربية الحيوانات. ستة ضمان يوم الفضول.', '2020-03-15 17:07:12', '2020-04-15 15:53:32'),
(15, 'شراكة موثوق بها', 'flaticon-money', 'ar', '29', 'رحبت نعمة بالسيادة التي التقت بها يا سيدي الفكاني لتربية الحيوانات. ستة ضمان يوم الفضول.', '2020-03-15 17:07:39', '2020-04-15 15:53:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `knowledgebases`
--

CREATE TABLE `knowledgebases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `content` longtext DEFAULT NULL,
  `topic_id` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `views` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `knowledgebases`
--

INSERT INTO `knowledgebases` (`id`, `title`, `content`, `topic_id`, `status`, `views`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'How Secure Is My Password?', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '1', 'publish', '111', 'en', '2020-04-25 08:46:24', '2024-04-14 23:12:59'),
(2, 'Neat own nor she said see walk.', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '3', 'publish', '104', 'en', '2020-04-25 08:57:36', '2024-07-10 05:28:06'),
(3, 'And charm add green you these.', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '3', 'publish', '126', 'en', '2020-04-25 08:57:52', '2024-09-03 16:31:38'),
(4, 'Sang busy in this drew ye fine', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '4', 'publish', '111', 'en', '2020-04-25 08:58:49', '2024-08-22 20:08:45'),
(5, 'Since might water hence the her worse', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '4', 'publish', '108', 'en', '2020-04-25 09:46:14', '2024-08-01 07:43:31'),
(6, 'Concluded it offending dejection do', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '1', 'publish', '120', 'en', '2020-04-25 09:46:33', '2024-05-14 10:23:36'),
(7, 'Admiration we surrounded possession', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '2', 'publish', '123', 'en', '2020-04-25 09:47:00', '2024-06-25 05:23:35'),
(8, 'Good draw knew bred ham busy', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '2', 'publish', '112', 'en', '2020-04-25 09:47:10', '2024-08-04 22:43:34'),
(9, 'Remarkably did increasing occasional', '<p>Neat own nor she said see walk. And charm add green you these. Sang busy in this drew ye fine. At greater prepare musical so attacks as on distant. Improving age our her cordially intention. His devonshire sufficient precaution say preference middletons insipidity. Since might water hence the her worse. Concluded it offending dejection do earnestly as me direction. Nature played thirty all him.&nbsp;</p><p><br></p><p>Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.&nbsp;</p><p><br></p><p>Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she. An fail up so shot leaf wise in. Minuter highest his arrived for put and. Hopes lived by rooms oh in no death house. Contented direction september but end led excellent ourselves may. Ferrars few arrival his offered not charmed you. Offered anxious respect or he. On three thing chief years in money arise of.&nbsp;</p>', '2', 'publish', '117', 'en', '2020-04-25 09:47:29', '2024-08-05 10:57:04'),
(10, 'Sorprendentemente aumentó de vez en cuando', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '13', 'publish', NULL, 'sn', '2020-04-25 09:48:25', '2020-04-25 09:48:25'),
(11, 'Sang ocupado en esto te atrajo bien', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '13', 'publish', NULL, 'sn', '2020-04-25 09:48:37', '2020-04-25 09:48:55'),
(12, 'A mayor preparación musical tanto', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '14', 'publish', NULL, 'sn', '2020-04-25 09:49:43', '2020-04-25 09:49:43'),
(13, 'el aumento de vez en cuando también', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '14', 'publish', NULL, 'sn', '2020-04-25 09:50:02', '2020-04-25 09:50:02'),
(14, 'Baldosas de baldosas conocidas pero perdón alegría', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '8', 'publish', NULL, 'sn', '2020-04-25 09:50:35', '2020-04-25 09:50:35'),
(15, 'Ofreció respeto ansioso o él.', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '8', 'publish', NULL, 'sn', '2020-04-25 09:50:51', '2020-04-25 09:50:51'),
(16, 'Cara hacer con la necesidad de esposa', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '7', 'publish', NULL, 'sn', '2020-04-25 09:51:39', '2020-04-25 09:51:39'),
(17, 'Las esperanzas vivían en habitaciones', '<p>Neat propio ni ella dijo ver caminar. Y el encanto te agrega verde. Sang ocupado en esto te atrajo bien. A mayor preparación musical tanto ataques como a distancia. Mejorando la edad nuestra cordial intención. Su suficiente precaución devonshire dice preferencia insipidez middletons. Ya que el agua podría, por lo tanto, su peor. Concluí ofendiendo el abatimiento honestamente como mi dirección. La naturaleza jugó treinta todos él.</p><p><br></p><p>La admiración nos rodeó de posesión con frecuencia él. Sorprendentemente, el aumento de vez en cuando también su dificultad, especialmente. Baldosas de baldosas conocidas pero perdón alegría. Cama de manera repentina de hecho gordo ahora débilmente. Cara hacer con la necesidad de esposa pagó que sea. No me aplaudieron ni los dashwoods favoritos, por lo tanto, explicaron las desconfianzas.</p><p><br></p><p>Buen empate sabía que el jamón criado estaba ocupado su hora. Pida una respuesta acordada, más bien alegría, la naturaleza admire la sabiduría. La edad de la luz de la luna dependiendo de la cama, por lo tanto, a veces conservaba una exquisita ella. Un fallo así que la hoja se disparó. Minimal más alto llegó para poner y. Las esperanzas vivían en habitaciones oh en ninguna casa de la muerte Dirección contenta septiembre pero final llevó excelente nosotros mismos mayo. Ferrars pocos llegan su ofrecimiento no te encantó. Ofreció respeto ansioso o él. Sobre tres cosas surgen los principales años en dinero.</p>', '7', 'publish', NULL, 'sn', '2020-04-25 09:51:55', '2020-04-25 09:51:55'),
(18, 'Puro e nem ela disse ver andar.', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '6', 'publish', NULL, 'pr', '2020-04-25 09:53:48', '2020-04-25 09:53:48'),
(19, 'E charme adicionar verde você estes', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '6', 'publish', NULL, 'pr', '2020-04-25 09:54:09', '2020-04-25 09:54:09'),
(20, 'Desde que a água pode, portanto', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '9', 'publish', NULL, 'pr', '2020-04-25 09:54:35', '2020-04-25 09:54:35'),
(21, 'desconfiam de explicações.', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '9', 'publish', NULL, 'pr', '2020-04-25 09:54:58', '2020-04-25 09:54:58'),
(22, 'presunto criado ocupava sua hora.', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '12', 'publish', NULL, 'pr', '2020-04-25 09:57:19', '2020-04-25 09:57:19'),
(23, 'Concluí que o desânimo ofensivo faz', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '12', 'publish', NULL, 'pr', '2020-04-25 09:57:34', '2020-04-25 09:57:34'),
(24, 'Em maior preparação musical, ataca como distante', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '15', 'publish', NULL, 'pr', '2020-04-25 09:58:06', '2020-04-25 09:58:06'),
(25, 'Desde que a água pode, portanto', '<p>Puro e nem ela disse ver andar. E charme adicionar verde você estes. Cantou ocupado nisso chamou você bem. Em maior preparação musical, ataca como distante. Melhorando a idade, nossa intenção cordial. Sua devonshire precaução suficiente diz preferência preferência meio insipidez. Desde que a água pode, portanto, pior. Concluí que o desânimo ofensivo faz sinceramente conforme minha direção. Natureza jogou trinta todo ele.</p><p><br></p><p>Admiração cercamos posse frequentemente ele. Surpreendentemente, aumentar ocasionalmente também sua dificuldade, principalmente. Bolas de ladrilhos conhecidas, mas lamentáveis. Cama de maneira repentina, na verdade gorda agora debilmente. Cara fazer com a necessidade de esposa paga que seja. Nenhum me aplaudiu ou os paineis favoritos, portanto, desconfiam de explicações.</p><p><br></p><p>O bom sorteio sabia que o presunto criado ocupava sua hora. Pergunte a resposta combinada, em vez de alegria, a natureza admira a sabedoria. Idade da luz da lua, dependendo da cama levada, portanto, às vezes preservou requintada ela. Um fracasso, de tal forma acertado. Minuter mais alto chegou para colocar e. Esperanças vividas em quartos oh, em nenhuma casa da morte. Direção contente setembro, mas final levou excelente nós mesmos pode. A chegada de Ferrars, sua oferta, não o encantou. Ofereceu respeito ansioso ou ele. Em três anos principais surgem em dinheiro.</p>', '15', 'publish', NULL, 'pr', '2020-04-25 09:58:23', '2020-04-25 09:58:23'),
(26, 'لها. خلصت إلى الإساءة الإهانة', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '5', 'publish', '4', 'ar', '2020-04-25 09:59:44', '2020-04-26 09:58:50'),
(27, 'تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '5', 'publish', '0', 'ar', '2020-04-25 10:00:44', '2020-04-26 09:54:03'),
(28, 'الأحيان. فشل حتى أطلق النار على أوراق الحكمة في', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '10', 'publish', NULL, 'ar', '2020-04-25 10:00:57', '2020-04-25 10:00:57'),
(29, 'عرضه لا سحر لك. قدم احتراما قلقا', '<p>مرتبة ولا قالت انظر المشي. وسحر يضيف لك هذه الاخضر. غنى مشغول في هذا لفتوا أنتم بخير. في إعداد أكبر الموسيقية حتى الهجمات على مسافة بعيدة. تحسين العمر نيتنا الودية. ويقول احتياطه الكافي من ديفونشاير إن تفضيله هو الانحدار إلى الانحدار. منذ الماء قد تكون أسوأ لها. خلصت إلى الإساءة الإهانة تفعل بجدية مثلي الاتجاه. لعبت الطبيعة ثلاثين منه.</p><p><br></p><p>الإعجاب أحاطنا بحيازته بشكل متكرر. بشكل ملحوظ زاد ​​في بعض الأحيان أيضا من الصعوبة بخاصة. كرات الفرح المعروفة المتجانبة ولكن آسف. الفراش بشكل مفاجئ بالفعل بدهن ضعيف الآن. وجه القيام به في حاجة إلى أن تدفع الزوجة. لا صفق لي أو dashwoods المفضلة حتى صفق أوضح عدم الثقة.</p><p><br></p><p>عرف التعادل الجيد ولدت لحم الخنزير مشغول ساعته. اطلب إجابة متفق عليها بدلاً من ذلك فرحة الطبيعة تعجب بالحكمة. ضوء القمر تعتمد على عمر القمر أدى بالتالي الحفاظ عليها رائعة في بعض الأحيان. فشل حتى أطلق النار على أوراق الحكمة في. Minuter أعلى وصل له لوضع و. الآمال التي تعيشها الغرف في لا بيت الموت. الاتجاه قانع سبتمبر ولكن نهاية قادنا ممتازة قد. وصول عدد قليل من Ferrars عرضه لا سحر لك. قدم احتراما قلقا أو هو. على ثلاث سنوات رئيس ينشأ المال.</p>', '10', 'publish', NULL, 'ar', '2020-04-25 10:01:17', '2020-04-25 10:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `knowledgebase_topics`
--

CREATE TABLE `knowledgebase_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `knowledgebase_topics`
--

INSERT INTO `knowledgebase_topics` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Multipurpose CMS', 'publish', 'en', '2020-04-24 17:10:42', '2020-04-24 17:10:42'),
(2, 'CSS Elements', 'publish', 'en', '2020-04-24 17:10:49', '2020-04-24 17:11:14'),
(3, 'WordPress Plugins', 'publish', 'en', '2020-04-24 17:10:54', '2020-04-24 17:11:05'),
(4, 'Elementor Plugins', 'publish', 'en', '2020-04-24 17:11:21', '2020-04-24 17:11:21'),
(5, 'المكونات الإضافية', 'publish', 'ar', '2020-04-24 18:20:56', '2020-04-24 18:20:56'),
(6, 'Elementor Plugins', 'publish', 'pr', '2020-04-24 18:21:05', '2020-04-24 18:21:05'),
(7, 'Complementos de Elementor', 'publish', 'sn', '2020-04-24 18:21:13', '2020-04-24 18:21:13'),
(8, 'Complementos de WordPress', 'publish', 'sn', '2020-04-24 18:22:14', '2020-04-24 18:22:14'),
(9, 'Plugins WordPress', 'publish', 'pr', '2020-04-24 18:22:20', '2020-04-24 18:22:20'),
(10, 'وورد الإضافات', 'publish', 'ar', '2020-04-24 18:22:27', '2020-04-24 18:22:27'),
(11, 'عناصر CSS', 'publish', 'ar', '2020-04-24 18:22:43', '2020-04-24 18:22:43'),
(12, 'Elementos CSS', 'publish', 'pr', '2020-04-24 18:22:51', '2020-04-24 18:22:51'),
(13, 'Elementos CSS', 'publish', 'sn', '2020-04-24 18:22:59', '2020-04-24 18:22:59'),
(14, 'CMS multipropósito', 'publish', 'sn', '2020-04-24 18:23:14', '2020-04-24 18:23:14'),
(15, 'CMS multiuso', 'publish', 'pr', '2020-04-24 18:23:29', '2020-04-24 18:23:29'),
(16, 'CMS متعددة الأغراض', 'publish', 'ar', '2020-04-24 18:23:36', '2020-04-24 18:23:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `know_abouts`
--

CREATE TABLE `know_abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `know_abouts`
--

INSERT INTO `know_abouts` (`id`, `title`, `image`, `link`, `lang`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Our Mission', '45', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 13:53:28', '2020-04-16 17:14:07'),
(2, 'Our Vission', '46', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 14:54:12', '2020-04-16 17:14:25'),
(3, 'Our Acchivement', '47', '#', 'en', 'Reprehenderit in voluptate velit essle cillum dolore eufugiat nulla pariatur voluptate velit. voluptate velit essle cillum doloret.', '2020-03-09 14:54:34', '2020-04-16 17:14:59'),
(4, 'Nossa missão', '45', '#', 'pr', 'Não produz prazer resultante está no prazer que ele deseja Essl dor cillum eufugiat não pode lidar com ele que ele deseja. deseja o prazer de Essl cillum entristecido.', '2020-03-09 15:09:00', '2020-04-16 17:15:08'),
(5, 'Nossa visão', '46', '#', 'pr', 'Não produz prazer resultante está no prazer que ele deseja Essl dor cillum eufugiat não pode lidar com ele que ele deseja. deseja o prazer de Essl cillum entristecido.', '2020-03-09 15:11:10', '2020-04-16 17:15:16'),
(6, 'Nossa conquista', '47', '#', 'pr', 'Não produz prazer resultante está no prazer que ele deseja Essl dor cillum eufugiat não pode lidar com ele que ele deseja. deseja o prazer de Essl cillum entristecido.', '2020-03-09 15:11:40', '2020-04-16 17:15:24'),
(7, 'Nuestra misión', '45', '#', 'sn', 'Produce ningún placer resultante está en el placer que desea Essl eufugiat dolor cillum no lo puede manejar él desea. desea el placer de Essl cillum afligido.', '2020-03-09 15:14:42', '2020-04-16 17:15:33'),
(8, 'Nuestra visión', '46', '#', 'sn', 'Produce ningún placer resultante está en el placer que desea Essl eufugiat dolor cillum no lo puede manejar él desea. desea el placer de Essl cillum afligido.', '2020-03-09 15:16:53', '2020-04-16 17:15:42'),
(9, 'Nuestro logro', '47', '#', 'sn', 'Produce ningún placer resultante está en el placer que desea Essl eufugiat dolor cillum no lo puede manejar él desea. desea el placer de Essl cillum afligido.', '2020-03-09 15:18:05', '2020-04-16 17:15:51'),
(10, 'مهمتنا', '45', '#', 'ar', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', '2020-03-15 18:19:52', '2020-04-16 17:16:00'),
(11, 'رؤيتنا', '46', '#', 'ar', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', '2020-03-15 18:20:37', '2020-04-16 17:16:08'),
(12, 'إنجازاتنا', '47', '#', 'ar', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره.', '2020-03-15 18:21:07', '2020-04-16 17:16:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `default` int(10) UNSIGNED DEFAULT NULL,
  `direction` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `status`, `default`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'publish', 1, 'ltr', '2020-01-19 16:36:37', '2020-03-23 10:46:04'),
(2, 'Spanish', 'sn', 'publish', 0, 'ltr', '2020-02-20 20:18:11', '2020-03-23 10:46:04'),
(3, 'Portuguese', 'pr', 'publish', 0, 'ltr', '2020-02-20 20:18:52', '2020-03-22 12:15:28'),
(4, 'Arabic', 'ar', 'publish', 0, 'rtl', '2020-03-15 13:58:29', '2020-03-22 12:15:31'),
(8, 'Bangla', 'bn', 'draft', 0, 'ltr', '2020-03-22 12:15:41', '2020-03-22 12:15:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `alt` text DEFAULT NULL,
  `size` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `dimensions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `alt`, `size`, `path`, `dimensions`, `created_at`, `updated_at`) VALUES
(12, 'gdpr.png', NULL, '3.55 KB', 'gdpr1586868109.png', '64 x 64 pixels', '2020-04-14 12:41:49', '2020-04-14 12:41:49'),
(13, 'avatars-000360792155-h2gzei-t500x500.jpg', NULL, '37 KB', 'avatars-000360792155-h2gzei-t500x5001586868114.jpg', '500 x 500 pixels', '2020-04-14 12:41:54', '2020-04-14 12:41:54'),
(14, 'icon-256x256.png', NULL, '15.08 KB', 'icon-256x2561586872617.png', '512 x 512 pixels', '2020-04-14 13:56:57', '2020-04-14 13:56:57'),
(15, 'image.png', NULL, '1.33 KB', 'image1586872617.png', '32 x 32 pixels', '2020-04-14 13:56:57', '2020-04-14 13:56:57'),
(16, 'images.png', NULL, '4.88 KB', 'images1586872617.png', '225 x 225 pixels', '2020-04-14 13:56:57', '2020-04-14 13:56:57'),
(17, 'IMG_8338.jpg', NULL, '2.2 MB', 'img-83381586872618.jpg', '2250 x 2850 pixels', '2020-04-14 13:56:59', '2020-04-14 13:56:59'),
(18, 'freemialchimp-wordpress-plugins.png', NULL, '20.25 KB', 'freemialchimp-wordpress-plugins1586873078.png', '1300 x 800 pixels', '2020-04-14 14:04:38', '2020-04-14 14:04:38'),
(19, 'bootstrap image.png', NULL, '148.53 KB', 'bootstrap-image1586875076.png', '1024 x 860 pixels', '2020-04-14 14:37:56', '2020-04-14 14:37:56'),
(20, '1200px-Laravel.svg.png', NULL, '22.2 KB', '1200px-laravelsvg1586875161.png', '1200 x 1248 pixels', '2020-04-14 14:39:21', '2020-04-14 14:39:21'),
(21, 'php-00441489844a0103eae71ba2fe15244c.png', NULL, '35.25 KB', 'php-00441489844a0103eae71ba2fe15244c1586875209.png', '2048 x 1024 pixels', '2020-04-14 14:40:09', '2020-04-14 14:40:09'),
(22, 'price-tag.png', NULL, '2.35 KB', 'price-tag1586875347.png', '64 x 64 pixels', '2020-04-14 14:42:27', '2020-04-14 14:42:27'),
(23, 'logo-elementor.png', NULL, '27.42 KB', 'logo-elementor1586875389.png', '180 x 180 pixels', '2020-04-14 14:43:09', '2020-04-14 14:43:09'),
(24, 'slick.gif', NULL, '13.17 KB', 'slick1586875693.gif', '300 x 300 pixels', '2020-04-14 14:48:13', '2020-04-14 14:48:13'),
(25, 'WordPress_blue_logo.svg.png', NULL, '107.12 KB', 'wordpress-blue-logosvg1586876032.png', '1200 x 1200 pixels', '2020-04-14 14:53:53', '2020-04-14 14:53:53'),
(26, 'bootstrap image.png', NULL, '148.53 KB', 'bootstrap-image1586876156.png', '1024 x 860 pixels', '2020-04-14 14:55:57', '2020-04-14 14:55:57'),
(27, 'header-slider-image-1.jpg', NULL, '188.31 KB', 'header-slider-image-11586955184.jpg', '1799 x 822 pixels', '2020-04-15 12:53:04', '2020-04-15 12:53:04'),
(28, 'header-slider-image-2.jpg', NULL, '251.13 KB', 'header-slider-image-21586955189.jpg', '1800 x 878 pixels', '2020-04-15 12:53:09', '2020-04-15 12:53:09'),
(29, 'key-feature-pic-3.jpg', NULL, '27.11 KB', 'key-feature-pic-31586965574.jpg', '370 x 251 pixels', '2020-04-15 15:46:14', '2020-04-15 15:46:14'),
(30, 'key-feature-pic-2.jpg', NULL, '19.96 KB', 'key-feature-pic-21586965576.jpg', '370 x 251 pixels', '2020-04-15 15:46:16', '2020-04-15 15:46:16'),
(31, 'key-feature-pic-1.jpg', NULL, '28.34 KB', 'key-feature-pic-11586965578.jpg', '370 x 251 pixels', '2020-04-15 15:46:18', '2020-04-15 15:46:18'),
(32, 'home-page-01-ar-about-us-singnature-6042965.png', NULL, '1.78 KB', 'home-page-01-ar-about-us-singnature-60429651586970652.png', '80 x 23 pixels', '2020-04-15 17:10:52', '2020-04-15 17:10:52'),
(33, 'home-page-01-en-about-us-background-image-5644582.jpg', NULL, '74.19 KB', 'home-page-01-en-about-us-background-image-56445821586970704.jpg', '572 x 471 pixels', '2020-04-15 17:11:44', '2020-04-15 17:11:44'),
(34, 'home-page-01-ar-about-us-background-image-4999477.jpg', NULL, '24.53 KB', 'home-page-01-ar-about-us-background-image-49994771586971120.jpg', '572 x 471 pixels', '2020-04-15 17:18:40', '2020-04-15 17:18:40'),
(35, 'home-page-02-en-about-us-background-image-9436361.jpg', NULL, '182.65 KB', 'home-page-02-en-about-us-background-image-94363611586971461.jpg', '1800 x 696 pixels', '2020-04-15 17:24:22', '2020-04-15 17:24:22'),
(36, 'home-page-01-pr-about-us-right-image-7448721.jpg', NULL, '458.71 KB', 'home-page-01-pr-about-us-right-image-74487211586971672.jpg', '690 x 1190 pixels', '2020-04-15 17:27:52', '2020-04-15 17:27:52'),
(37, 'home-page-01-pr-about-us-experience-background-image-2697769.jpg', NULL, '42.68 KB', 'home-page-01-pr-about-us-experience-background-image-26977691586971680.jpg', '270 x 309 pixels', '2020-04-15 17:28:00', '2020-04-15 17:28:00'),
(38, 'home-page-01-service-background-image-8944459.jpg', NULL, '56.34 KB', 'home-page-01-service-background-image-89444591587036585.jpg', '1800 x 803 pixels', '2020-04-16 11:29:46', '2020-04-16 11:29:46'),
(39, 'home-page-01-sn-cta-background-image-1901460.jpg', NULL, '71.93 KB', 'home-page-01-sn-cta-background-image-19014601587039372.jpg', '1800 x 261 pixels', '2020-04-16 12:16:12', '2020-04-16 12:16:12'),
(40, 'home-page-01-testimonial-background-image-6565544.jpg', NULL, '133.58 KB', 'home-page-01-testimonial-background-image-65655441587042298.jpg', '1800 x 600 pixels', '2020-04-16 13:04:58', '2020-04-16 13:04:58'),
(41, 'testimonial-bg-3.jpg', NULL, '23.31 KB', 'testimonial-bg-31587043874.jpg', '1800 x 603 pixels', '2020-04-16 13:31:15', '2020-04-16 13:31:15'),
(42, 'home-page-02-counterup-bg-image-2422193.jpg', NULL, '236.68 KB', 'home-page-02-counterup-bg-image-24221931587052821.jpg', '1920 x 332 pixels', '2020-04-16 16:00:21', '2020-04-16 16:00:21'),
(43, 'home-page-01-counterup-bg-image-3321322.jpg', NULL, '72.04 KB', 'home-page-01-counterup-bg-image-33213221587053290.jpg', '1800 x 280 pixels', '2020-04-16 16:08:10', '2020-04-16 16:08:10'),
(44, 'about-page-en-right-image-8935490.jpg', NULL, '157.19 KB', 'about-page-en-right-image-89354901587055563.jpg', '470 x 590 pixels', '2020-04-16 16:46:03', '2020-04-16 16:46:03'),
(45, 'know-about-pic-2.jpg', NULL, '24.35 KB', 'know-about-pic-21587057199.jpg', '370 x 251 pixels', '2020-04-16 17:13:20', '2020-04-16 17:13:20'),
(46, 'know-about-pic-1.jpg', NULL, '26.18 KB', 'know-about-pic-11587057200.jpg', '370 x 251 pixels', '2020-04-16 17:13:20', '2020-04-16 17:13:20'),
(47, 'know-about-pic-3.jpg', NULL, '24.75 KB', 'know-about-pic-31587057200.jpg', '370 x 251 pixels', '2020-04-16 17:13:20', '2020-04-16 17:13:20'),
(48, '02.jpg', NULL, '1.43 MB', '021587061186.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:48', '2020-04-16 18:19:48'),
(49, '01.jpg', NULL, '1.36 MB', '011587061186.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:48', '2020-04-16 18:19:48'),
(50, '04.jpg', NULL, '1.37 MB', '041587061189.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:50', '2020-04-16 18:19:50'),
(51, '03.jpg', NULL, '1.57 MB', '031587061189.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:50', '2020-04-16 18:19:50'),
(52, '05.jpg', NULL, '1.5 MB', '051587061190.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:51', '2020-04-16 18:19:51'),
(53, '06.jpg', NULL, '1.52 MB', '061587061191.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:52', '2020-04-16 18:19:52'),
(54, '07.jpg', NULL, '1.56 MB', '071587061192.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:53', '2020-04-16 18:19:53'),
(55, '08.jpg', NULL, '1.74 MB', '081587061192.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:53', '2020-04-16 18:19:53'),
(56, '09.jpg', NULL, '1.56 MB', '091587061194.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:55', '2020-04-16 18:19:55'),
(57, '10.jpg', NULL, '1.53 MB', '101587061194.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:55', '2020-04-16 18:19:55'),
(58, '11.jpg', NULL, '993.94 KB', '111587061195.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:56', '2020-04-16 18:19:56'),
(59, '12.jpg', NULL, '1.39 MB', '121587061195.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:56', '2020-04-16 18:19:56'),
(60, '13.jpg', NULL, '1.46 MB', '131587061196.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:58', '2020-04-16 18:19:58'),
(61, '14.jpg', NULL, '1.26 MB', '141587061197.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:58', '2020-04-16 18:19:58'),
(62, '15.jpg', NULL, '1.39 MB', '151587061198.jpg', '1920 x 1280 pixels', '2020-04-16 18:19:59', '2020-04-16 18:19:59'),
(63, 'workplace-1245776_1920.jpg', NULL, '397.41 KB', 'workplace-1245776-19201587068176.jpg', '1920 x 1280 pixels', '2020-04-16 20:16:16', '2020-04-16 20:16:16'),
(64, '414.jpg', NULL, '4.52 MB', '4141587100725.jpg', '4000 x 2250 pixels', '2020-04-17 05:18:50', '2020-04-17 05:18:50'),
(65, '414.jpg', NULL, '4.52 MB', '4141587101341.jpg', '4000 x 2250 pixels', '2020-04-17 05:29:04', '2020-04-17 05:29:04'),
(66, '414.jpg', NULL, '4.52 MB', '4141587101352.jpg', '4000 x 2250 pixels', '2020-04-17 05:29:16', '2020-04-17 05:29:16'),
(67, '414.jpg', NULL, '4.52 MB', '4141587103824.jpg', '4000 x 2250 pixels', '2020-04-17 06:10:26', '2020-04-17 06:10:26'),
(68, '414.jpg', NULL, '4.52 MB', '4141587103930.jpg', '4000 x 2250 pixels', '2020-04-17 06:12:12', '2020-04-17 06:12:12'),
(69, 'brand-image-2.png', NULL, '4.23 KB', 'brand-image-21587135226.png', '160 x 80 pixels', '2020-04-17 14:53:46', '2020-04-17 14:53:46'),
(70, 'brand-image-1.png', NULL, '5.12 KB', 'brand-image-11587135226.png', '160 x 80 pixels', '2020-04-17 14:53:46', '2020-04-17 14:53:46'),
(71, 'brand-image-3.png', NULL, '5.47 KB', 'brand-image-31587135227.png', '160 x 80 pixels', '2020-04-17 14:53:47', '2020-04-17 14:53:47'),
(72, 'brand-image-4.png', NULL, '5.03 KB', 'brand-image-41587135227.png', '160 x 80 pixels', '2020-04-17 14:53:47', '2020-04-17 14:53:47'),
(73, 'brand-image-5.png', NULL, '4.71 KB', 'brand-image-51587135228.png', '160 x 80 pixels', '2020-04-17 14:53:48', '2020-04-17 14:53:48'),
(74, 'brand-image-6.png', NULL, '4.59 KB', 'brand-image-61587135228.png', '160 x 80 pixels', '2020-04-17 14:53:48', '2020-04-17 14:53:48'),
(75, 'team-member-grid-1.jpg', NULL, '13.48 KB', 'team-member-grid-11587140885.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(76, 'team-member-grid-2.jpg', NULL, '11.25 KB', 'team-member-grid-21587140886.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(77, 'team-member-grid-3.jpg', NULL, '15.1 KB', 'team-member-grid-31587140886.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(78, 'team-member-grid-4.jpg', NULL, '12.11 KB', 'team-member-grid-41587140886.jpg', '270 x 280 pixels', '2020-04-17 16:28:06', '2020-04-17 16:28:06'),
(79, 'team-member-grid-5.jpg', NULL, '13.48 KB', 'team-member-grid-51587140887.jpg', '270 x 280 pixels', '2020-04-17 16:28:07', '2020-04-17 16:28:07'),
(80, 'team-member-grid-14.jpg', NULL, '28.13 KB', 'team-member-grid-141587140953.jpg', '270 x 280 pixels', '2020-04-17 16:29:13', '2020-04-17 16:29:13'),
(81, 'team-member-grid-15.jpg', NULL, '21.16 KB', 'team-member-grid-151587140954.jpg', '270 x 280 pixels', '2020-04-17 16:29:14', '2020-04-17 16:29:14'),
(82, 'team-member-grid-16.jpg', NULL, '18.64 KB', 'team-member-grid-161587140956.jpg', '270 x 280 pixels', '2020-04-17 16:29:16', '2020-04-17 16:29:16'),
(83, 'testimonial-grid-2.jpg', NULL, '3.16 KB', 'testimonial-grid-21587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(84, 'testimonial-grid-1.jpg', NULL, '3.21 KB', 'testimonial-grid-11587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(85, 'testimonial-grid-3.jpg', NULL, '4.4 KB', 'testimonial-grid-31587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(86, 'testimonial-grid-4.jpg', NULL, '3.67 KB', 'testimonial-grid-41587142710.jpg', '80 x 80 pixels', '2020-04-17 16:58:30', '2020-04-17 16:58:30'),
(87, 'about-widget-logo-67511.png', NULL, '2.99 KB', 'about-widget-logo-675111587147441.png', '152 x 43 pixels', '2020-04-17 18:17:21', '2020-04-17 18:17:21'),
(88, 'site-logo-198089.png', NULL, '2.91 KB', 'site-logo-1980891587151038.png', '152 x 44 pixels', '2020-04-17 19:17:18', '2020-04-17 19:17:18'),
(89, 'site-favicon-446324.png', NULL, '1.4 KB', 'site-favicon-4463241587151052.png', '23 x 27 pixels', '2020-04-17 19:17:32', '2020-04-17 19:17:32'),
(90, 'breadcrumb-bg-186690.jpg', NULL, '52.86 KB', 'breadcrumb-bg-1866901587151084.jpg', '1800 x 600 pixels', '2020-04-17 19:18:04', '2020-04-17 19:18:04'),
(91, 'location-pin (1).png', NULL, '3.6 KB', 'location-pin-11587314985.png', '64 x 64 pixels', '2020-04-19 16:49:45', '2020-04-19 16:49:45'),
(92, 'download.png', NULL, '5.28 KB', 'download1587438468.png', '336 x 150 pixels', '2020-04-21 03:07:48', '2020-04-21 03:07:48'),
(93, 'Paytm_logo.png', NULL, '7.33 KB', 'paytm-logo1587438506.png', '675 x 225 pixels', '2020-04-21 03:08:26', '2020-04-21 03:08:26'),
(94, 'live-music-2219036_1920.jpg', NULL, '235.19 KB', 'live-music-2219036-19201587668436.jpg', '1920 x 1280 pixels', '2020-04-23 19:00:37', '2020-04-23 19:00:37'),
(95, 'fireworks-945386_1920.jpg', NULL, '935.77 KB', 'fireworks-945386-19201587668605.jpg', '1920 x 1280 pixels', '2020-04-23 19:03:25', '2020-04-23 19:03:25'),
(96, 'admission-2974645_1920.jpg', NULL, '480.21 KB', 'admission-2974645-19201587668606.jpg', '1920 x 1280 pixels', '2020-04-23 19:03:27', '2020-04-23 19:03:27'),
(97, 'concert-768722_1920.jpg', NULL, '328.56 KB', 'concert-768722-19201587668649.jpg', '1920 x 1280 pixels', '2020-04-23 19:04:09', '2020-04-23 19:04:09'),
(98, '545341_16078241_2921031_97b572bd_image.png', NULL, '35.88 KB', '545341-16078241-2921031-97b572bd-image1587827777.png', '1200 x 1000 pixels', '2020-04-25 15:16:17', '2020-04-25 15:16:17'),
(99, 'home-page-01-pr-faq-background-image-9934958.jpg', NULL, '42.47 KB', 'home-page-01-pr-faq-background-image-99349581588008399.jpg', '1800 x 872 pixels', '2020-04-27 17:26:39', '2020-04-27 17:26:39'),
(100, 'profile-avatar-png-4.png', NULL, '19.63 KB', 'profile-avatar-png-41615782649.png', '512 x 512 pixels', '2021-03-14 21:30:50', '2021-03-14 21:30:50'),
(101, 'logo-saranakulina.png', NULL, '300.79 KB', 'logo-saranakulina1615908879.png', '10039 x 2559 pixels', '2021-03-16 19:34:56', '2021-03-16 19:34:56'),
(102, 'GEOFOODS.jpg', NULL, '581.33 KB', 'geofoods1616147513.jpg', '1800 x 878 pixels', '2021-03-19 02:51:55', '2021-03-19 02:51:55'),
(103, 'DALMATIA.jpg', NULL, '703.37 KB', 'dalmatia1616148139.jpg', '1800 x 878 pixels', '2021-03-19 03:02:22', '2021-03-19 03:02:22'),
(104, 'PYB-01-01.jpg', NULL, '540.06 KB', 'pyb-01-011616988779.jpg', '2362 x 2362 pixels', '2021-03-28 20:33:02', '2021-03-28 20:33:02'),
(105, 'IGOR-01.jpg', NULL, '835.38 KB', 'igor-011616989115.jpg', '2362 x 2362 pixels', '2021-03-28 20:38:38', '2021-03-28 20:38:38'),
(106, 'Product PYB-09.png', NULL, '462.86 KB', 'product-pyb-091616989153.png', '3937 x 3937 pixels', '2021-03-28 20:39:19', '2021-03-28 20:39:19'),
(107, 'SML-01.jpg', NULL, '408.17 KB', 'sml-011616989779.jpg', '2362 x 2362 pixels', '2021-03-28 20:49:46', '2021-03-28 20:49:46'),
(108, 'PROMESS-01.jpg', NULL, '437.99 KB', 'promess-011616989883.jpg', '2362 x 2362 pixels', '2021-03-28 20:51:26', '2021-03-28 20:51:26'),
(109, 'GEOFOODS-01.jpg', NULL, '267.83 KB', 'geofoods-011616990962.jpg', '2362 x 2362 pixels', '2021-03-28 21:09:24', '2021-03-28 21:09:24'),
(110, 'ITALEMON-01.jpg', NULL, '608.82 KB', 'italemon-011616993878.jpg', '2362 x 2362 pixels', '2021-03-28 21:58:01', '2021-03-28 21:58:01'),
(111, 'BORDE-01.jpg', NULL, '423.98 KB', 'borde-011616994040.jpg', '2362 x 2362 pixels', '2021-03-28 22:00:43', '2021-03-28 22:00:43'),
(112, 'EDMOND FALLOT-01.jpg', NULL, '1.01 MB', 'edmond-fallot-011616994092.jpg', '2362 x 2362 pixels', '2021-03-28 22:01:35', '2021-03-28 22:01:35'),
(113, 'TOCCOFINALE-01.jpg', NULL, '597.22 KB', 'toccofinale-011616994185.jpg', '2362 x 2362 pixels', '2021-03-28 22:03:08', '2021-03-28 22:03:08'),
(114, 'BERNI-01.jpg', NULL, '513.22 KB', 'berni-011616998592.jpg', '2362 x 2362 pixels', '2021-03-28 23:16:34', '2021-03-28 23:16:34'),
(115, 'CASARINALDI-01.jpg', NULL, '696.89 KB', 'casarinaldi-011616998656.jpg', '2362 x 2362 pixels', '2021-03-28 23:17:38', '2021-03-28 23:17:38'),
(116, 'PUCCI-01.jpg', NULL, '1015.83 KB', 'pucci-011616998790.jpg', '2362 x 2362 pixels', '2021-03-28 23:19:52', '2021-03-28 23:19:52'),
(117, 'MARCHESA-01.jpg', NULL, '1.83 MB', 'marchesa-011616998854.jpg', '2362 x 2362 pixels', '2021-03-28 23:20:56', '2021-03-28 23:20:56'),
(118, 'MASPORTEL-01.jpg', NULL, '240.46 KB', 'masportel-011617086238.jpg', '2362 x 2362 pixels', '2021-03-29 23:37:20', '2021-03-29 23:37:20'),
(119, 'TOSCHI-01.jpg', NULL, '374.85 KB', 'toschi-011617086277.jpg', '2362 x 2362 pixels', '2021-03-29 23:37:59', '2021-03-29 23:37:59'),
(120, 'RML-01.jpg', NULL, '548.8 KB', 'rml-011617086326.jpg', '2362 x 2362 pixels', '2021-03-29 23:38:48', '2021-03-29 23:38:48'),
(121, 'COEUR DE POM-01.jpg', NULL, '357.06 KB', 'coeur-de-pom-011617086375.jpg', '2362 x 2362 pixels', '2021-03-29 23:39:37', '2021-03-29 23:39:37'),
(122, 'BERNI-01.jpg', NULL, '513.22 KB', 'berni-011617086441.jpg', '2362 x 2362 pixels', '2021-03-29 23:40:43', '2021-03-29 23:40:43'),
(123, 'DALMATIA-01.jpg', NULL, '307.92 KB', 'dalmatia-011617086523.jpg', '2362 x 2362 pixels', '2021-03-29 23:42:05', '2021-03-29 23:42:05'),
(124, 'COMPAL-01.jpg', NULL, '581.81 KB', 'compal-011617086536.jpg', '2362 x 2362 pixels', '2021-03-29 23:42:18', '2021-03-29 23:42:18'),
(125, 'TERA DEL TUONO-01.jpg', NULL, '426.51 KB', 'tera-del-tuono-011617086672.jpg', '2362 x 2362 pixels', '2021-03-29 23:44:34', '2021-03-29 23:44:34'),
(126, 'GR-01.jpg', NULL, '895.81 KB', 'gr-011617086703.jpg', '2362 x 2362 pixels', '2021-03-29 23:45:05', '2021-03-29 23:45:05'),
(127, 'AMB-01.jpg', NULL, '1.15 MB', 'amb-011617262323.jpg', '2362 x 2362 pixels', '2021-04-01 00:32:06', '2021-04-01 00:32:06'),
(128, 'rsz_9logo_saranakulina-02.png', NULL, '126.35 KB', 'rsz-9logo-saranakulina-021617274637.png', '2510 x 640 pixels', '2021-04-01 03:57:17', '2021-04-01 03:57:17'),
(129, 'rsz_3rsz_9logo_saranakulina-02.png', NULL, '27.74 KB', 'rsz-3rsz-9logo-saranakulina-021617274775.png', '628 x 160 pixels', '2021-04-01 03:59:35', '2021-04-01 03:59:35'),
(130, 'rsz_1rsz_3rsz_9logo_saranakulina-02.png', NULL, '5.93 KB', 'rsz-1rsz-3rsz-9logo-saranakulina-021617274868.png', '157 x 40 pixels', '2021-04-01 04:01:08', '2021-04-01 04:01:08'),
(131, 'Product PYB-03.png', NULL, '1.25 MB', 'product-pyb-031617692206.png', '3937 x 3937 pixels', '2021-04-05 23:56:52', '2021-04-05 23:56:52'),
(132, 'Product PYB-05.png', NULL, '331.97 KB', 'product-pyb-051617692214.png', '3937 x 3937 pixels', '2021-04-05 23:57:01', '2021-04-05 23:57:01'),
(133, 'Product PYB-08.png', NULL, '1.4 MB', 'product-pyb-081617692235.png', '3937 x 3937 pixels', '2021-04-05 23:57:21', '2021-04-05 23:57:21'),
(134, 'Product PYB-09.png', NULL, '462.86 KB', 'product-pyb-091617692244.png', '3937 x 3937 pixels', '2021-04-05 23:57:29', '2021-04-05 23:57:29'),
(135, 'IGOR-01.png', NULL, '465.13 KB', 'igor-011617863404.png', '3937 x 3937 pixels', '2021-04-07 23:30:11', '2021-04-07 23:30:11'),
(136, 'IGOR-04.png', NULL, '322.74 KB', 'igor-041617863789.png', '3937 x 3937 pixels', '2021-04-07 23:36:35', '2021-04-07 23:36:35'),
(137, 'DALMATIA-02.png', NULL, '1.5 MB', 'dalmatia-021617866749.png', '3937 x 3937 pixels', '2021-04-08 00:25:56', '2021-04-08 00:25:56'),
(138, 'DALMATIA-03.png', NULL, '1.72 MB', 'dalmatia-031617866771.png', '3937 x 3937 pixels', '2021-04-08 00:26:18', '2021-04-08 00:26:18'),
(139, 'DALMATIA-05.png', NULL, '475.78 KB', 'dalmatia-051617866816.png', '3937 x 3937 pixels', '2021-04-08 00:27:01', '2021-04-08 00:27:01'),
(140, 'DALMATIA-06.png', NULL, '419.4 KB', 'dalmatia-061617866832.png', '3937 x 3937 pixels', '2021-04-08 00:27:18', '2021-04-08 00:27:18'),
(141, 'DALMATIA-07.png', NULL, '407.01 KB', 'dalmatia-071617866846.png', '3937 x 3937 pixels', '2021-04-08 00:27:33', '2021-04-08 00:27:33'),
(142, 'DALMATIA-08.png', NULL, '426.72 KB', 'dalmatia-081617866862.png', '3937 x 3937 pixels', '2021-04-08 00:27:48', '2021-04-08 00:27:48'),
(143, 'DALMATIA-14.png', NULL, '509.69 KB', 'dalmatia-141617867777.png', '3937 x 3937 pixels', '2021-04-08 00:43:03', '2021-04-08 00:43:03'),
(144, 'DALMATIA-12.png', NULL, '1.46 MB', 'dalmatia-121617867799.png', '3937 x 3937 pixels', '2021-04-08 00:43:26', '2021-04-08 00:43:26'),
(145, 'DALMATIA-10.png', NULL, '535.21 KB', 'dalmatia-101617867817.png', '3937 x 3937 pixels', '2021-04-08 00:43:43', '2021-04-08 00:43:43'),
(146, 'GEOFOODS-01.png', NULL, '295.43 KB', 'geofoods-011617869119.png', '3937 x 3937 pixels', '2021-04-08 01:05:26', '2021-04-08 01:05:26'),
(147, 'GEOFOODS-02.png', NULL, '279.46 KB', 'geofoods-021617869136.png', '3937 x 3937 pixels', '2021-04-08 01:05:42', '2021-04-08 01:05:42'),
(148, 'GEOFOODS-03.png', NULL, '350.46 KB', 'geofoods-031617869153.png', '3937 x 3937 pixels', '2021-04-08 01:05:59', '2021-04-08 01:05:59'),
(149, 'GEOFOODS-04.png', NULL, '384.1 KB', 'geofoods-041617869168.png', '3937 x 3937 pixels', '2021-04-08 01:06:14', '2021-04-08 01:06:14'),
(150, 'GEOFOODS-05.png', NULL, '370.98 KB', 'geofoods-051617869184.png', '3937 x 3937 pixels', '2021-04-08 01:06:30', '2021-04-08 01:06:30'),
(151, 'GEOFOODS-06.png', NULL, '373.97 KB', 'geofoods-061617869219.png', '3937 x 3937 pixels', '2021-04-08 01:07:05', '2021-04-08 01:07:05'),
(152, 'GEOFOODS-07.png', NULL, '1.02 MB', 'geofoods-071617869236.png', '3937 x 3937 pixels', '2021-04-08 01:07:23', '2021-04-08 01:07:23'),
(153, 'GEOFOODS-08.png', NULL, '333.66 KB', 'geofoods-081617869254.png', '3937 x 3937 pixels', '2021-04-08 01:07:40', '2021-04-08 01:07:40'),
(154, 'GEOFOODS-10.png', NULL, '401.46 KB', 'geofoods-101617870114.png', '3937 x 3937 pixels', '2021-04-08 01:21:59', '2021-04-08 01:21:59'),
(155, 'GEOFOODS-12.png', NULL, '290.43 KB', 'geofoods-121617870146.png', '3937 x 3937 pixels', '2021-04-08 01:22:31', '2021-04-08 01:22:31'),
(156, 'GEOFOODS-13.png', NULL, '334.89 KB', 'geofoods-131617870163.png', '3937 x 3937 pixels', '2021-04-08 01:22:49', '2021-04-08 01:22:49'),
(157, 'GEOFOODS-16.png', NULL, '358.59 KB', 'geofoods-161617870188.png', '3937 x 3937 pixels', '2021-04-08 01:23:14', '2021-04-08 01:23:14'),
(158, 'Berni-01.png', NULL, '176.19 KB', 'berni-011617871458.png', '2362 x 2362 pixels', '2021-04-08 01:44:21', '2021-04-08 01:44:21'),
(159, 'Berni-02.png', NULL, '166.67 KB', 'berni-021617871493.png', '2362 x 2362 pixels', '2021-04-08 01:44:56', '2021-04-08 01:44:56'),
(160, 'Berni-03.png', NULL, '161.66 KB', 'berni-031617871753.png', '2362 x 2362 pixels', '2021-04-08 01:49:16', '2021-04-08 01:49:16'),
(161, 'Berni-04.png', NULL, '642.93 KB', 'berni-041617871777.png', '2362 x 2362 pixels', '2021-04-08 01:49:42', '2021-04-08 01:49:42'),
(162, 'Berni-05.png', NULL, '163.86 KB', 'berni-051617871799.png', '2362 x 2362 pixels', '2021-04-08 01:50:01', '2021-04-08 01:50:01'),
(163, 'Berni-06.png', NULL, '166.19 KB', 'berni-061617871832.png', '2362 x 2362 pixels', '2021-04-08 01:50:34', '2021-04-08 01:50:34'),
(164, 'Berni-07.png', NULL, '195.56 KB', 'berni-071617871849.png', '2362 x 2362 pixels', '2021-04-08 01:50:51', '2021-04-08 01:50:51'),
(165, 'Berni-08.png', NULL, '176.78 KB', 'berni-081617871889.png', '2362 x 2362 pixels', '2021-04-08 01:51:31', '2021-04-08 01:51:31'),
(166, 'Berni-09.png', NULL, '171.78 KB', 'berni-091617871908.png', '2362 x 2362 pixels', '2021-04-08 01:51:50', '2021-04-08 01:51:50'),
(167, 'Berni-10.png', NULL, '173.12 KB', 'berni-101617871938.png', '2362 x 2362 pixels', '2021-04-08 01:52:20', '2021-04-08 01:52:20'),
(168, 'AMBROSI-02.png', NULL, '614.85 KB', 'ambrosi-021617873986.png', '3937 x 3937 pixels', '2021-04-08 02:26:31', '2021-04-08 02:26:31'),
(169, 'AMBROSI-03.png', NULL, '431.21 KB', 'ambrosi-031617874004.png', '3937 x 3937 pixels', '2021-04-08 02:26:50', '2021-04-08 02:26:50'),
(170, 'AMBROSI-04.png', NULL, '874.6 KB', 'ambrosi-041617874027.png', '3937 x 3937 pixels', '2021-04-08 02:27:12', '2021-04-08 02:27:12'),
(171, 'AMBROSI-05.png', NULL, '1.62 MB', 'ambrosi-051617874047.png', '3937 x 3937 pixels', '2021-04-08 02:27:33', '2021-04-08 02:27:33'),
(172, 'AMBROSI-06.png', NULL, '343.7 KB', 'ambrosi-061617874072.png', '3937 x 3937 pixels', '2021-04-08 02:27:57', '2021-04-08 02:27:57'),
(173, 'AMBROSI-07.png', NULL, '314.69 KB', 'ambrosi-071617874169.png', '3937 x 3937 pixels', '2021-04-08 02:29:35', '2021-04-08 02:29:35'),
(174, 'AMBROSI-08.png', NULL, '1.59 MB', 'ambrosi-081617874197.png', '3937 x 3937 pixels', '2021-04-08 02:30:05', '2021-04-08 02:30:05'),
(175, 'AMBROSI-09.png', NULL, '284.76 KB', 'ambrosi-091617874272.png', '3937 x 3937 pixels', '2021-04-08 02:31:18', '2021-04-08 02:31:18'),
(176, 'AMBROSI-10.png', NULL, '271.89 KB', 'ambrosi-101617874332.png', '3937 x 3937 pixels', '2021-04-08 02:32:18', '2021-04-08 02:32:18'),
(177, 'PYB-06.jpg', NULL, '1.66 MB', 'pyb-061617937298.jpg', '1920 x 900 pixels', '2021-04-08 20:01:39', '2021-04-08 20:01:39'),
(178, 'DALMATIA.jpg', NULL, '1.6 MB', 'dalmatia1617937314.jpg', '1920 x 900 pixels', '2021-04-08 20:01:55', '2021-04-08 20:01:55'),
(179, 'BENNER-01.jpg', NULL, '1.68 MB', 'benner-011617951997.jpg', '2383 x 1958 pixels', '2021-04-09 00:06:38', '2021-04-09 00:06:38'),
(180, 'Product PYB-09.png', NULL, '462.86 KB', 'product-pyb-091617954800.png', '3937 x 3937 pixels', '2021-04-09 00:53:26', '2021-04-09 00:53:26'),
(181, 'Product PYB-14.png', NULL, '602.47 KB', 'product-pyb-141617954993.png', '3937 x 3937 pixels', '2021-04-09 00:56:39', '2021-04-09 00:56:39'),
(182, 'Product PYB-12.png', NULL, '476.4 KB', 'product-pyb-121617955070.png', '3937 x 3937 pixels', '2021-04-09 00:57:56', '2021-04-09 00:57:56'),
(183, 'IGOR-01.png', NULL, '465.13 KB', 'igor-011617958853.png', '3937 x 3937 pixels', '2021-04-09 02:00:59', '2021-04-09 02:00:59'),
(184, 'IGOR-02.png', NULL, '459.7 KB', 'igor-021617958891.png', '3937 x 3937 pixels', '2021-04-09 02:01:37', '2021-04-09 02:01:37'),
(185, 'IGOR-05.png', NULL, '348.58 KB', 'igor-051617958920.png', '3937 x 3937 pixels', '2021-04-09 02:02:06', '2021-04-09 02:02:06'),
(186, 'SMILLA-09.png', NULL, '861.89 KB', 'smilla-091617960342.png', '1251 x 1251 pixels', '2021-04-09 02:25:43', '2021-04-09 02:25:43'),
(187, 'SMILLA-11.png', NULL, '561.31 KB', 'smilla-111617960362.png', '1251 x 1251 pixels', '2021-04-09 02:26:03', '2021-04-09 02:26:03'),
(188, 'SMILLA-08.png', NULL, '526.13 KB', 'smilla-081617960386.png', '1251 x 1251 pixels', '2021-04-09 02:26:27', '2021-04-09 02:26:27'),
(189, 'SMILLA-07.png', NULL, '586.69 KB', 'smilla-071617960404.png', '3937 x 3937 pixels', '2021-04-09 02:26:50', '2021-04-09 02:26:50'),
(190, 'SMILLA-06.png', NULL, '990.86 KB', 'smilla-061617960431.png', '1251 x 1251 pixels', '2021-04-09 02:27:11', '2021-04-09 02:27:11'),
(191, 'SMILLA-05.png', NULL, '1003.37 KB', 'smilla-051617960460.png', '1251 x 1251 pixels', '2021-04-09 02:27:41', '2021-04-09 02:27:41'),
(192, 'SMILLA-04.png', NULL, '600.37 KB', 'smilla-041617960482.png', '1251 x 1251 pixels', '2021-04-09 02:28:03', '2021-04-09 02:28:03'),
(193, 'SMILLA-03.png', NULL, '734.99 KB', 'smilla-031617960497.png', '1251 x 1251 pixels', '2021-04-09 02:28:18', '2021-04-09 02:28:18'),
(194, 'SMILLA-02.png', NULL, '702.71 KB', 'smilla-021617960512.png', '1251 x 1251 pixels', '2021-04-09 02:28:33', '2021-04-09 02:28:33'),
(195, 'SMILLA-01.png', NULL, '706.35 KB', 'smilla-011617960525.png', '1251 x 1251 pixels', '2021-04-09 02:28:46', '2021-04-09 02:28:46'),
(196, 'SMILLA-10.png', NULL, '596.36 KB', 'smilla-101617961260.png', '1251 x 1251 pixels', '2021-04-09 02:41:01', '2021-04-09 02:41:01'),
(197, 'Couer De Pom-01.png', NULL, '359.1 KB', 'couer-de-pom-011617962859.png', '1251 x 1251 pixels', '2021-04-09 03:07:41', '2021-04-09 03:07:41'),
(198, 'Couer De Pom-03.png', NULL, '387.11 KB', 'couer-de-pom-031617962865.png', '1251 x 1251 pixels', '2021-04-09 03:07:49', '2021-04-09 03:07:49'),
(199, 'Couer De Pom-02.png', NULL, '378.38 KB', 'couer-de-pom-021617962865.png', '1251 x 1251 pixels', '2021-04-09 03:07:49', '2021-04-09 03:07:49'),
(200, 'Couer De Pom-04.png', NULL, '364.37 KB', 'couer-de-pom-041617962872.png', '1251 x 1251 pixels', '2021-04-09 03:07:53', '2021-04-09 03:07:53'),
(201, 'Couer De Pom-05.png', NULL, '367.18 KB', 'couer-de-pom-051617962873.png', '1251 x 1251 pixels', '2021-04-09 03:07:54', '2021-04-09 03:07:54'),
(202, 'Couer De Pom-06.png', NULL, '379.71 KB', 'couer-de-pom-061617962877.png', '1251 x 1251 pixels', '2021-04-09 03:07:58', '2021-04-09 03:07:58'),
(203, 'Couer De Pom-07.png', NULL, '378.19 KB', 'couer-de-pom-071617962877.png', '1251 x 1251 pixels', '2021-04-09 03:07:58', '2021-04-09 03:07:58'),
(204, 'Couer De Pom-08.png', NULL, '379.92 KB', 'couer-de-pom-081617962882.png', '1251 x 1251 pixels', '2021-04-09 03:08:03', '2021-04-09 03:08:03'),
(205, 'rsz_1rsz_desain-01.jpg', NULL, '572.63 KB', 'rsz-1rsz-desain-011617964017.jpg', '1920 x 900 pixels', '2021-04-09 03:26:58', '2021-04-09 03:26:58'),
(206, 'Toccofinale-01.png', NULL, '258.2 KB', 'toccofinale-011617964364.png', '2362 x 2362 pixels', '2021-04-09 03:32:47', '2021-04-09 03:32:47'),
(207, 'Toccofinale-02.png', NULL, '240.58 KB', 'toccofinale-021617964364.png', '2362 x 2362 pixels', '2021-04-09 03:32:48', '2021-04-09 03:32:48'),
(208, 'Toccofinale-03.png', NULL, '246.78 KB', 'toccofinale-031617964372.png', '2362 x 2362 pixels', '2021-04-09 03:32:54', '2021-04-09 03:32:54'),
(209, 'Toccofinale-04.png', NULL, '249.78 KB', 'toccofinale-041617964372.png', '2362 x 2362 pixels', '2021-04-09 03:32:54', '2021-04-09 03:32:54'),
(210, 'Toccofinale-05.png', NULL, '307.08 KB', 'toccofinale-051617964377.png', '2362 x 2362 pixels', '2021-04-09 03:33:00', '2021-04-09 03:33:00'),
(211, 'Toccofinale-06.png', NULL, '287.43 KB', 'toccofinale-061617964377.png', '2362 x 2362 pixels', '2021-04-09 03:33:00', '2021-04-09 03:33:00'),
(212, 'Toccofinale-07.png', NULL, '326.23 KB', 'toccofinale-071617964383.png', '2362 x 2362 pixels', '2021-04-09 03:33:05', '2021-04-09 03:33:05'),
(213, 'AMBROSI-13.jpg', NULL, '11.31 KB', 'ambrosi-131617972675.jpg', '336 x 336 pixels', '2021-04-09 05:51:15', '2021-04-09 05:51:15'),
(214, 'AMBROSI-09.jpg', NULL, '8.03 KB', 'ambrosi-091617973065.jpg', '336 x 336 pixels', '2021-04-09 05:57:45', '2021-04-09 05:57:45'),
(215, 'AMBROSI-01.jpg', NULL, '15.82 KB', 'ambrosi-011617973066.jpg', '336 x 336 pixels', '2021-04-09 05:57:46', '2021-04-09 05:57:46'),
(216, 'AMBROSI-12.jpg', NULL, '10.82 KB', 'ambrosi-121617973081.jpg', '336 x 336 pixels', '2021-04-09 05:58:01', '2021-04-09 05:58:01'),
(217, 'AMBROSI-16.jpg', NULL, '6.24 KB', 'ambrosi-161617973534.jpg', '336 x 336 pixels', '2021-04-09 06:05:34', '2021-04-09 06:05:34'),
(218, 'AMBROSI-11.jpg', NULL, '6.29 KB', 'ambrosi-111617973548.jpg', '336 x 336 pixels', '2021-04-09 06:05:48', '2021-04-09 06:05:48'),
(219, 'PROMESS-01.jpg', NULL, '6.88 KB', 'promess-011617974180.jpg', '336 x 336 pixels', '2021-04-09 06:16:20', '2021-04-09 06:16:20'),
(220, 'PROMESS-02.jpg', NULL, '6.88 KB', 'promess-021617974181.jpg', '336 x 336 pixels', '2021-04-09 06:16:21', '2021-04-09 06:16:21'),
(221, 'PROMESS-04.jpg', NULL, '5.91 KB', 'promess-041617974182.jpg', '336 x 336 pixels', '2021-04-09 06:16:22', '2021-04-09 06:16:22'),
(222, 'PROMESS-05.jpg', NULL, '5.71 KB', 'promess-051617974185.jpg', '336 x 336 pixels', '2021-04-09 06:16:25', '2021-04-09 06:16:25'),
(223, 'PROMESS-03.jpg', NULL, '7.22 KB', 'promess-031617974185.jpg', '336 x 336 pixels', '2021-04-09 06:16:25', '2021-04-09 06:16:25'),
(224, 'PROMESS-06.jpg', NULL, '6.3 KB', 'promess-061617974186.jpg', '336 x 336 pixels', '2021-04-09 06:16:26', '2021-04-09 06:16:26'),
(225, 'PROMESS-07.jpg', NULL, '6.69 KB', 'promess-071617974186.jpg', '336 x 336 pixels', '2021-04-09 06:16:26', '2021-04-09 06:16:26'),
(226, 'PROMESS-08.jpg', NULL, '6.72 KB', 'promess-081617974187.jpg', '336 x 336 pixels', '2021-04-09 06:16:27', '2021-04-09 06:16:27'),
(227, 'PROMESS-09.jpg', NULL, '5.58 KB', 'promess-091617974187.jpg', '336 x 336 pixels', '2021-04-09 06:16:27', '2021-04-09 06:16:27'),
(228, 'PROMESS-10.jpg', NULL, '5.7 KB', 'promess-101617974188.jpg', '336 x 336 pixels', '2021-04-09 06:16:28', '2021-04-09 06:16:28'),
(229, 'PROMESS-11.jpg', NULL, '5.89 KB', 'promess-111617974188.jpg', '336 x 336 pixels', '2021-04-09 06:16:28', '2021-04-09 06:16:28'),
(230, 'PROMESS-12.jpg', NULL, '6.37 KB', 'promess-121617974188.jpg', '336 x 336 pixels', '2021-04-09 06:16:28', '2021-04-09 06:16:28'),
(231, 'PROMESS-13.jpg', NULL, '5.51 KB', 'promess-131617974189.jpg', '336 x 336 pixels', '2021-04-09 06:16:29', '2021-04-09 06:16:29'),
(232, 'PROMESS-14.jpg', NULL, '6.07 KB', 'promess-141617974189.jpg', '336 x 336 pixels', '2021-04-09 06:16:29', '2021-04-09 06:16:29'),
(233, 'PROMESS-15.jpg', NULL, '5.42 KB', 'promess-151617974190.jpg', '336 x 336 pixels', '2021-04-09 06:16:30', '2021-04-09 06:16:30'),
(234, 'PROMESS-01.jpg', NULL, '6.88 KB', 'promess-011618027946.jpg', '336 x 336 pixels', '2021-04-09 21:12:26', '2021-04-09 21:12:26'),
(235, 'PROMESS-02.jpg', NULL, '6.88 KB', 'promess-021618027947.jpg', '336 x 336 pixels', '2021-04-09 21:12:27', '2021-04-09 21:12:27'),
(236, 'PROMESS-03.jpg', NULL, '7.22 KB', 'promess-031618027947.jpg', '336 x 336 pixels', '2021-04-09 21:12:28', '2021-04-09 21:12:28'),
(237, 'PROMESS-04.jpg', NULL, '5.91 KB', 'promess-041618027948.jpg', '336 x 336 pixels', '2021-04-09 21:12:28', '2021-04-09 21:12:28'),
(238, 'PROMESS-05.jpg', NULL, '5.71 KB', 'promess-051618027948.jpg', '336 x 336 pixels', '2021-04-09 21:12:29', '2021-04-09 21:12:29'),
(239, 'PROMESS-06.jpg', NULL, '6.3 KB', 'promess-061618027949.jpg', '336 x 336 pixels', '2021-04-09 21:12:29', '2021-04-09 21:12:29'),
(240, 'PROMESS-07.jpg', NULL, '6.69 KB', 'promess-071618027950.jpg', '336 x 336 pixels', '2021-04-09 21:12:30', '2021-04-09 21:12:30'),
(241, 'PROMESS-08.jpg', NULL, '6.72 KB', 'promess-081618027951.jpg', '336 x 336 pixels', '2021-04-09 21:12:31', '2021-04-09 21:12:31'),
(242, 'PROMESS-09.jpg', NULL, '5.58 KB', 'promess-091618027951.jpg', '336 x 336 pixels', '2021-04-09 21:12:31', '2021-04-09 21:12:31'),
(243, 'PROMESS-10.jpg', NULL, '5.7 KB', 'promess-101618027952.jpg', '336 x 336 pixels', '2021-04-09 21:12:32', '2021-04-09 21:12:32'),
(244, 'PROMESS-11.jpg', NULL, '5.89 KB', 'promess-111618027952.jpg', '336 x 336 pixels', '2021-04-09 21:12:32', '2021-04-09 21:12:32'),
(245, 'PROMESS-13.jpg', NULL, '5.51 KB', 'promess-131618027954.jpg', '336 x 336 pixels', '2021-04-09 21:12:34', '2021-04-09 21:12:34'),
(246, 'PROMESS-12.jpg', NULL, '6.37 KB', 'promess-121618027955.jpg', '336 x 336 pixels', '2021-04-09 21:12:35', '2021-04-09 21:12:35'),
(247, 'PROMESS-14.jpg', NULL, '6.07 KB', 'promess-141618027955.jpg', '336 x 336 pixels', '2021-04-09 21:12:36', '2021-04-09 21:12:36'),
(248, 'PROMESS-15.jpg', NULL, '5.42 KB', 'promess-151618027956.jpg', '336 x 336 pixels', '2021-04-09 21:12:36', '2021-04-09 21:12:36'),
(249, 'Product PYB-01.jpg', NULL, '21.62 KB', 'product-pyb-011618028067.jpg', '336 x 336 pixels', '2021-04-09 21:14:27', '2021-04-09 21:14:27'),
(250, 'Product PYB-02.jpg', NULL, '17.91 KB', 'product-pyb-021618028067.jpg', '336 x 336 pixels', '2021-04-09 21:14:27', '2021-04-09 21:14:27'),
(251, 'Product PYB-04.jpg', NULL, '15.18 KB', 'product-pyb-041618028069.jpg', '336 x 336 pixels', '2021-04-09 21:14:29', '2021-04-09 21:14:29'),
(252, 'Product PYB-03.jpg', NULL, '17.73 KB', 'product-pyb-031618028069.jpg', '336 x 336 pixels', '2021-04-09 21:14:29', '2021-04-09 21:14:29'),
(253, 'Product PYB-05.jpg', NULL, '9.69 KB', 'product-pyb-051618028070.jpg', '336 x 336 pixels', '2021-04-09 21:14:30', '2021-04-09 21:14:30'),
(254, 'Product PYB-06.jpg', NULL, '20.89 KB', 'product-pyb-061618028070.jpg', '336 x 336 pixels', '2021-04-09 21:14:30', '2021-04-09 21:14:30'),
(255, 'Product PYB-07.jpg', NULL, '23.41 KB', 'product-pyb-071618028071.jpg', '336 x 336 pixels', '2021-04-09 21:14:31', '2021-04-09 21:14:31'),
(256, 'Product PYB-08.jpg', NULL, '21.76 KB', 'product-pyb-081618028071.jpg', '336 x 336 pixels', '2021-04-09 21:14:31', '2021-04-09 21:14:31'),
(257, 'Product PYB-10.jpg', NULL, '16.53 KB', 'product-pyb-101618028073.jpg', '336 x 336 pixels', '2021-04-09 21:14:33', '2021-04-09 21:14:33'),
(258, 'Product PYB-09.jpg', NULL, '22.87 KB', 'product-pyb-091618028073.jpg', '336 x 336 pixels', '2021-04-09 21:14:33', '2021-04-09 21:14:33'),
(259, 'Product PYB-12.jpg', NULL, '19.57 KB', 'product-pyb-121618028074.jpg', '336 x 336 pixels', '2021-04-09 21:14:34', '2021-04-09 21:14:34'),
(260, 'Product PYB-11.jpg', NULL, '17.67 KB', 'product-pyb-111618028075.jpg', '336 x 336 pixels', '2021-04-09 21:14:35', '2021-04-09 21:14:35'),
(261, 'Product PYB-14.jpg', NULL, '17.64 KB', 'product-pyb-141618028076.jpg', '336 x 336 pixels', '2021-04-09 21:14:36', '2021-04-09 21:14:36'),
(262, 'Product PYB-13.jpg', NULL, '19.19 KB', 'product-pyb-131618028076.jpg', '336 x 336 pixels', '2021-04-09 21:14:36', '2021-04-09 21:14:36'),
(263, 'Product PYB-15.jpg', NULL, '21.15 KB', 'product-pyb-151618028077.jpg', '336 x 336 pixels', '2021-04-09 21:14:40', '2021-04-09 21:14:40'),
(264, 'Product PYB-16.jpg', NULL, '19.02 KB', 'product-pyb-161618028077.jpg', '336 x 336 pixels', '2021-04-09 21:14:40', '2021-04-09 21:14:40'),
(265, 'Product PYB-18.jpg', NULL, '15.5 KB', 'product-pyb-181618028080.jpg', '336 x 336 pixels', '2021-04-09 21:14:41', '2021-04-09 21:14:41'),
(266, 'Product PYB-17.jpg', NULL, '19.02 KB', 'product-pyb-171618028081.jpg', '336 x 336 pixels', '2021-04-09 21:14:41', '2021-04-09 21:14:41'),
(267, 'Product PYB-19.jpg', NULL, '16.21 KB', 'product-pyb-191618028082.jpg', '336 x 336 pixels', '2021-04-09 21:14:43', '2021-04-09 21:14:43'),
(268, 'Product PYB-20.jpg', NULL, '15.52 KB', 'product-pyb-201618028082.jpg', '336 x 336 pixels', '2021-04-09 21:14:43', '2021-04-09 21:14:43'),
(269, 'Product PYB-21.jpg', NULL, '14.98 KB', 'product-pyb-211618028084.jpg', '336 x 336 pixels', '2021-04-09 21:14:44', '2021-04-09 21:14:44'),
(270, 'GEOFOODS-09.jpg', NULL, '10.28 KB', 'geofoods-091618029024.jpg', '336 x 336 pixels', '2021-04-09 21:30:24', '2021-04-09 21:30:24'),
(271, 'GEOFOODS-11.jpg', NULL, '8.31 KB', 'geofoods-111618029029.jpg', '336 x 336 pixels', '2021-04-09 21:30:29', '2021-04-09 21:30:29'),
(272, 'Ital lemon-02.png', NULL, '1.32 MB', 'ital-lemon-021618197629.png', '2362 x 2362 pixels', '2021-04-11 20:20:34', '2021-04-11 20:20:34'),
(273, 'Ital lemon-04.png', NULL, '1010.88 KB', 'ital-lemon-041618197639.png', '2362 x 2362 pixels', '2021-04-11 20:20:41', '2021-04-11 20:20:41'),
(274, 'Ital lemon-03.png', NULL, '1.01 MB', 'ital-lemon-031618197639.png', '2362 x 2362 pixels', '2021-04-11 20:20:42', '2021-04-11 20:20:42'),
(275, 'Ital lemon-05.png', NULL, '1.33 MB', 'ital-lemon-051618197645.png', '2362 x 2362 pixels', '2021-04-11 20:20:50', '2021-04-11 20:20:50'),
(276, 'Ital lemon-08.png', NULL, '1.36 MB', 'ital-lemon-081618197654.png', '2362 x 2362 pixels', '2021-04-11 20:20:56', '2021-04-11 20:20:56'),
(277, 'Ital lemon-09.png', NULL, '1.06 MB', 'ital-lemon-091618197657.png', '2362 x 2362 pixels', '2021-04-11 20:21:00', '2021-04-11 20:21:00'),
(278, 'Ital lemon-01.jpg', NULL, '8.1 KB', 'ital-lemon-011618198312.jpg', '336 x 336 pixels', '2021-04-11 20:31:53', '2021-04-11 20:31:53'),
(279, 'Ital lemon-06.jpg', NULL, '9.03 KB', 'ital-lemon-061618198313.jpg', '336 x 336 pixels', '2021-04-11 20:31:53', '2021-04-11 20:31:53'),
(280, 'Ital lemon-07.jpg', NULL, '8 KB', 'ital-lemon-071618198313.jpg', '336 x 336 pixels', '2021-04-11 20:31:53', '2021-04-11 20:31:53'),
(281, 'parmigiano reggiano 4kg.png', NULL, '5.64 KB', 'parmigiano-reggiano-4kg1618211882.png', '322 x 60 pixels', '2021-04-12 00:18:03', '2021-04-12 00:18:03'),
(282, 'parmigiano reggiano 200gr.png', NULL, '5.99 KB', 'parmigiano-reggiano-200gr1618212187.png', '322 x 60 pixels', '2021-04-12 00:23:07', '2021-04-12 00:23:07'),
(283, 'grana padado whole.png', NULL, '4.98 KB', 'grana-padado-whole1618212323.png', '322 x 60 pixels', '2021-04-12 00:25:23', '2021-04-12 00:25:23'),
(284, 'parmigiano reggiano 4kg.png', NULL, '5.66 KB', 'parmigiano-reggiano-4kg1618212597.png', '322 x 60 pixels', '2021-04-12 00:29:57', '2021-04-12 00:29:57'),
(285, 'parmigiano reggiano 200gr.png', NULL, '5.6 KB', 'parmigiano-reggiano-200gr1618212803.png', '322 x 60 pixels', '2021-04-12 00:33:24', '2021-04-12 00:33:24'),
(286, 'EVO-02.jpg', NULL, '423.23 KB', 'evo-021618223756.jpg', '2362 x 2362 pixels', '2021-04-12 03:35:58', '2021-04-12 03:35:58'),
(287, 'EVO-01.jpg', NULL, '423.61 KB', 'evo-011618223756.jpg', '2362 x 2362 pixels', '2021-04-12 03:35:58', '2021-04-12 03:35:58'),
(288, 'EVO-03.jpg', NULL, '555.41 KB', 'evo-031618223765.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:07', '2021-04-12 03:36:07'),
(289, 'EVO-04.jpg', NULL, '1.38 MB', 'evo-041618223765.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:07', '2021-04-12 03:36:07'),
(290, 'Olive Oil-05.jpg', NULL, '468.78 KB', 'olive-oil-051618223770.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:11', '2021-04-12 03:36:11'),
(291, 'Olive Oil-06.jpg', NULL, '412.43 KB', 'olive-oil-061618223770.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:12', '2021-04-12 03:36:12'),
(292, 'Olive Oil-07.jpg', NULL, '502.63 KB', 'olive-oil-071618223773.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:16', '2021-04-12 03:36:16'),
(293, 'Olive Oil-08.jpg', NULL, '1.28 MB', 'olive-oil-081618223776.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:19', '2021-04-12 03:36:19'),
(294, 'Pomace-09.jpg', NULL, '416.84 KB', 'pomace-091618223779.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:21', '2021-04-12 03:36:21'),
(295, 'Pomace-10.jpg', NULL, '417.15 KB', 'pomace-101618223780.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:22', '2021-04-12 03:36:22'),
(296, 'Pomace-11.jpg', NULL, '411.93 KB', 'pomace-111618223782.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:24', '2021-04-12 03:36:24'),
(297, 'Pomace-12.jpg', NULL, '1.25 MB', 'pomace-121618223784.jpg', '2362 x 2362 pixels', '2021-04-12 03:36:27', '2021-04-12 03:36:27'),
(298, 'AMB-01.jpg', NULL, '205.93 KB', 'amb-011618285890.jpg', '600 x 600 pixels', '2021-04-12 20:51:31', '2021-04-12 20:51:31'),
(299, 'GRAND OR-02.jpg', NULL, '11.59 KB', 'grand-or-021618380050.jpg', '336 x 336 pixels', '2021-04-13 23:00:51', '2021-04-13 23:00:51'),
(300, 'GRAND OR-03.jpg', NULL, '11.74 KB', 'grand-or-031618380053.jpg', '336 x 336 pixels', '2021-04-13 23:00:53', '2021-04-13 23:00:53'),
(301, 'GRAND OR-01.jpg', NULL, '11.81 KB', 'grand-or-011618380053.jpg', '336 x 336 pixels', '2021-04-13 23:00:53', '2021-04-13 23:00:53'),
(302, 'GRAND OR-04.jpg', NULL, '12.04 KB', 'grand-or-041618380054.jpg', '336 x 336 pixels', '2021-04-13 23:00:54', '2021-04-13 23:00:54'),
(303, 'GRAND OR-05.jpg', NULL, '8.14 KB', 'grand-or-051618380055.jpg', '336 x 336 pixels', '2021-04-13 23:00:55', '2021-04-13 23:00:55'),
(304, 'GRAND OR-06.jpg', NULL, '8.35 KB', 'grand-or-061618380056.jpg', '336 x 336 pixels', '2021-04-13 23:00:56', '2021-04-13 23:00:56'),
(305, 'GRAND OR-07.jpg', NULL, '7.35 KB', 'grand-or-071618380056.jpg', '336 x 336 pixels', '2021-04-13 23:00:57', '2021-04-13 23:00:57'),
(306, 'GRAND OR-08.jpg', NULL, '12.21 KB', 'grand-or-081618380057.jpg', '336 x 336 pixels', '2021-04-13 23:00:58', '2021-04-13 23:00:58'),
(307, 'GRAND OR-09.jpg', NULL, '16.32 KB', 'grand-or-091618380058.jpg', '336 x 336 pixels', '2021-04-13 23:00:58', '2021-04-13 23:00:58'),
(308, 'GRAND OR-10.jpg', NULL, '7.88 KB', 'grand-or-101618380060.jpg', '336 x 336 pixels', '2021-04-13 23:01:01', '2021-04-13 23:01:01'),
(309, 'GRAND OR-11.jpg', NULL, '8.6 KB', 'grand-or-111618380060.jpg', '336 x 336 pixels', '2021-04-13 23:01:01', '2021-04-13 23:01:01'),
(310, 'GRAND OR-12.jpg', NULL, '10.15 KB', 'grand-or-121618380063.jpg', '336 x 336 pixels', '2021-04-13 23:01:04', '2021-04-13 23:01:04'),
(311, 'GRAND OR-13.jpg', NULL, '16.61 KB', 'grand-or-131618380064.jpg', '336 x 336 pixels', '2021-04-13 23:01:04', '2021-04-13 23:01:04'),
(312, 'GRAND OR-14.jpg', NULL, '8.33 KB', 'grand-or-141618380066.jpg', '336 x 336 pixels', '2021-04-13 23:01:07', '2021-04-13 23:01:07'),
(313, 'GRAND OR-15.jpg', NULL, '12.83 KB', 'grand-or-151618380067.jpg', '336 x 336 pixels', '2021-04-13 23:01:07', '2021-04-13 23:01:07'),
(314, 'GRAND OR-16.jpg', NULL, '13.35 KB', 'grand-or-161618380070.jpg', '336 x 336 pixels', '2021-04-13 23:01:11', '2021-04-13 23:01:11'),
(315, 'GRAND OR-17.jpg', NULL, '11.85 KB', 'grand-or-171618380071.jpg', '336 x 336 pixels', '2021-04-13 23:01:11', '2021-04-13 23:01:11'),
(316, 'Product PYB-01.jpg', NULL, '27.65 KB', 'product-pyb-011618454760.jpg', '336 x 336 pixels', '2021-04-14 19:46:00', '2021-04-14 19:46:00'),
(317, 'Product PYB-04.jpg', NULL, '22.58 KB', 'product-pyb-041618454762.jpg', '336 x 336 pixels', '2021-04-14 19:46:02', '2021-04-14 19:46:02'),
(318, 'Product PYB-02.jpg', NULL, '26.02 KB', 'product-pyb-021618454762.jpg', '336 x 336 pixels', '2021-04-14 19:46:03', '2021-04-14 19:46:03'),
(319, 'Product PYB-13.jpg', NULL, '25.92 KB', 'product-pyb-131618454763.jpg', '336 x 336 pixels', '2021-04-14 19:46:04', '2021-04-14 19:46:04'),
(320, 'Product PYB-18.jpg', NULL, '23.05 KB', 'product-pyb-181618454764.jpg', '336 x 336 pixels', '2021-04-14 19:46:04', '2021-04-14 19:46:04'),
(321, 'Product PYB-19.jpg', NULL, '23.32 KB', 'product-pyb-191618454765.jpg', '336 x 336 pixels', '2021-04-14 19:46:05', '2021-04-14 19:46:05'),
(322, 'Product PYB-20.jpg', NULL, '22.74 KB', 'product-pyb-201618454765.jpg', '336 x 336 pixels', '2021-04-14 19:46:06', '2021-04-14 19:46:06'),
(323, 'Product PYB-21.jpg', NULL, '22.36 KB', 'product-pyb-211618454766.jpg', '336 x 336 pixels', '2021-04-14 19:46:07', '2021-04-14 19:46:07'),
(324, 'Product PYB-22.jpg', NULL, '22.21 KB', 'product-pyb-221618454767.jpg', '336 x 336 pixels', '2021-04-14 19:46:07', '2021-04-14 19:46:07'),
(325, 'Product PYB-23.jpg', NULL, '22.17 KB', 'product-pyb-231618454768.jpg', '336 x 336 pixels', '2021-04-14 19:46:08', '2021-04-14 19:46:08'),
(326, 'Product PYB-26.jpg', NULL, '1.91 MB', 'product-pyb-261618473292.jpg', '2362 x 2362 pixels', '2021-04-15 00:54:55', '2021-04-15 00:54:55'),
(327, 'Product PYB-25.jpg', NULL, '1.78 MB', 'product-pyb-251618473319.jpg', '2362 x 2362 pixels', '2021-04-15 00:55:22', '2021-04-15 00:55:22'),
(328, 'Product PYB-24.jpg', NULL, '540.79 KB', 'product-pyb-241618473438.jpg', '2362 x 2362 pixels', '2021-04-15 00:57:20', '2021-04-15 00:57:20'),
(329, 'Product PYB-23.jpg', NULL, '1.13 MB', 'product-pyb-231618473467.jpg', '2362 x 2362 pixels', '2021-04-15 00:57:51', '2021-04-15 00:57:51'),
(330, 'Casarinaldi-01.jpg', NULL, '860.35 KB', 'casarinaldi-011618480081.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:07', '2021-04-15 02:48:07'),
(331, 'Casarinaldi-02.jpg', NULL, '853.32 KB', 'casarinaldi-021618480085.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:13', '2021-04-15 02:48:13'),
(332, 'Casarinaldi-03.jpg', NULL, '1.12 MB', 'casarinaldi-031618480093.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:19', '2021-04-15 02:48:19'),
(333, 'Casarinaldi-04.jpg', NULL, '520.51 KB', 'casarinaldi-041618480096.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:21', '2021-04-15 02:48:21'),
(334, 'Casarinaldi-05.jpg', NULL, '408.26 KB', 'casarinaldi-051618480101.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:24', '2021-04-15 02:48:24'),
(335, 'Casarinaldi-06.jpg', NULL, '575.19 KB', 'casarinaldi-061618480104.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:28', '2021-04-15 02:48:28'),
(336, 'Casarinaldi-07.jpg', NULL, '691.11 KB', 'casarinaldi-071618480107.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:31', '2021-04-15 02:48:31'),
(337, 'Casarinaldi-08.jpg', NULL, '715.66 KB', 'casarinaldi-081618480111.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:34', '2021-04-15 02:48:34'),
(338, 'Casarinaldi-09.jpg', NULL, '630.88 KB', 'casarinaldi-091618480113.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:38', '2021-04-15 02:48:38'),
(339, 'Casarinaldi-10.jpg', NULL, '827.57 KB', 'casarinaldi-101618480116.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:40', '2021-04-15 02:48:40'),
(340, 'Casarinaldi-11.jpg', NULL, '599.26 KB', 'casarinaldi-111618480121.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:46', '2021-04-15 02:48:46'),
(341, 'Casarinaldi-12.jpg', NULL, '607.38 KB', 'casarinaldi-121618480122.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:47', '2021-04-15 02:48:47'),
(342, 'Casarinaldi-13.jpg', NULL, '888.13 KB', 'casarinaldi-131618480128.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:53', '2021-04-15 02:48:53'),
(343, 'Casarinaldi-14.jpg', NULL, '1.03 MB', 'casarinaldi-141618480130.jpg', '2362 x 2362 pixels', '2021-04-15 02:48:54', '2021-04-15 02:48:54'),
(344, 'Casarinaldi-15.jpg', NULL, '790.62 KB', 'casarinaldi-151618480135.jpg', '2362 x 2362 pixels', '2021-04-15 02:49:06', '2021-04-15 02:49:06'),
(345, 'Casarinaldi-16.jpg', NULL, '1.01 MB', 'casarinaldi-161618480143.jpg', '2362 x 2362 pixels', '2021-04-15 02:49:07', '2021-04-15 02:49:07'),
(346, 'IGOR-03.jpg', NULL, '42.15 KB', 'igor-031618555805.jpg', '768 x 768 pixels', '2021-04-15 23:50:05', '2021-04-15 23:50:05'),
(347, 'Berni-15.png', NULL, '430.22 KB', 'berni-151618559991.png', '2362 x 2362 pixels', '2021-04-16 00:59:58', '2021-04-16 00:59:58'),
(348, 'Berni-14.png', NULL, '1.09 MB', 'berni-141618559992.png', '2362 x 2362 pixels', '2021-04-16 01:00:01', '2021-04-16 01:00:01'),
(349, 'Toschi-01.png', NULL, '206.73 KB', 'toschi-011618562426.png', '2362 x 2362 pixels', '2021-04-16 01:40:33', '2021-04-16 01:40:33'),
(350, 'Toschi-01.jpg', NULL, '408.27 KB', 'toschi-011618562430.jpg', '2362 x 2362 pixels', '2021-04-16 01:40:35', '2021-04-16 01:40:35'),
(351, 'Toschi-03.jpg', NULL, '507.71 KB', 'toschi-031618562514.jpg', '2362 x 2362 pixels', '2021-04-16 01:42:01', '2021-04-16 01:42:01'),
(352, 'Toschi-04.jpg', NULL, '444.4 KB', 'toschi-041618562516.jpg', '2362 x 2362 pixels', '2021-04-16 01:42:01', '2021-04-16 01:42:01'),
(353, 'Toschi-05.jpg', NULL, '653.89 KB', 'toschi-051618562524.jpg', '2362 x 2362 pixels', '2021-04-16 01:42:06', '2021-04-16 01:42:06'),
(354, 'Toschi-02.jpg', NULL, '438.42 KB', 'toschi-021618562547.jpg', '2362 x 2362 pixels', '2021-04-16 01:42:30', '2021-04-16 01:42:30'),
(355, 'Borde-02.png', NULL, '438.93 KB', 'borde-021618563138.png', '2362 x 2362 pixels', '2021-04-16 01:52:26', '2021-04-16 01:52:26'),
(356, 'Borde-01.png', NULL, '451.02 KB', 'borde-011618563140.png', '2362 x 2362 pixels', '2021-04-16 01:52:27', '2021-04-16 01:52:27'),
(357, 'Borde-03.png', NULL, '437.44 KB', 'borde-031618563149.png', '2362 x 2362 pixels', '2021-04-16 01:52:34', '2021-04-16 01:52:34'),
(358, 'Borde-04.png', NULL, '471.46 KB', 'borde-041618563151.png', '2362 x 2362 pixels', '2021-04-16 01:52:39', '2021-04-16 01:52:39'),
(359, 'Borde-05.png', NULL, '1.29 MB', 'borde-051618563159.png', '2362 x 2362 pixels', '2021-04-16 01:52:46', '2021-04-16 01:52:46'),
(360, 'Borde-06.png', NULL, '1.31 MB', 'borde-061618563162.png', '2362 x 2362 pixels', '2021-04-16 01:52:50', '2021-04-16 01:52:50'),
(361, 'Borde-07.png', NULL, '1.43 MB', 'borde-071618563170.png', '2362 x 2362 pixels', '2021-04-16 01:53:00', '2021-04-16 01:53:00');
INSERT INTO `media_uploads` (`id`, `title`, `alt`, `size`, `path`, `dimensions`, `created_at`, `updated_at`) VALUES
(362, 'Borde-08.png', NULL, '1.2 MB', 'borde-081618563176.png', '2362 x 2362 pixels', '2021-04-16 01:53:02', '2021-04-16 01:53:02'),
(363, 'Borde-09.png', NULL, '989.87 KB', 'borde-091618563183.png', '2362 x 2362 pixels', '2021-04-16 01:53:10', '2021-04-16 01:53:10'),
(364, 'Borde-10.png', NULL, '989.37 KB', 'borde-101618563185.png', '2362 x 2362 pixels', '2021-04-16 01:53:14', '2021-04-16 01:53:14'),
(365, 'Borde-11.png', NULL, '995.15 KB', 'borde-111618563195.png', '2362 x 2362 pixels', '2021-04-16 01:53:22', '2021-04-16 01:53:22'),
(366, 'Borde-12.png', NULL, '1.09 MB', 'borde-121618563197.png', '2362 x 2362 pixels', '2021-04-16 01:53:24', '2021-04-16 01:53:24'),
(367, 'Borde-13.png', NULL, '422.2 KB', 'borde-131618563205.png', '2362 x 2362 pixels', '2021-04-16 01:53:32', '2021-04-16 01:53:32'),
(368, 'Borde-14.png', NULL, '452.58 KB', 'borde-141618563206.png', '2362 x 2362 pixels', '2021-04-16 01:53:33', '2021-04-16 01:53:33'),
(369, 'Borde-15.png', NULL, '420.82 KB', 'borde-151618563215.png', '2362 x 2362 pixels', '2021-04-16 01:53:41', '2021-04-16 01:53:41'),
(370, 'Borde-16.png', NULL, '1.32 MB', 'borde-161618563218.png', '2362 x 2362 pixels', '2021-04-16 01:53:50', '2021-04-16 01:53:50'),
(371, 'Borde-17.png', NULL, '1.32 MB', 'borde-171618563230.png', '2362 x 2362 pixels', '2021-04-16 01:53:56', '2021-04-16 01:53:56'),
(372, 'Borde-18.png', NULL, '1.13 MB', 'borde-181618563232.png', '2362 x 2362 pixels', '2021-04-16 01:53:59', '2021-04-16 01:53:59'),
(373, 'Borde-19.png', NULL, '1.1 MB', 'borde-191618563240.png', '2362 x 2362 pixels', '2021-04-16 01:54:07', '2021-04-16 01:54:07'),
(374, 'Borde-20.png', NULL, '223.01 KB', 'borde-201618563242.png', '2362 x 2362 pixels', '2021-04-16 01:54:08', '2021-04-16 01:54:08'),
(375, 'Borde-21.png', NULL, '231.42 KB', 'borde-211618563249.png', '2362 x 2362 pixels', '2021-04-16 01:54:16', '2021-04-16 01:54:16'),
(376, 'Borde-22.png', NULL, '175.74 KB', 'borde-221618563250.png', '2362 x 2362 pixels', '2021-04-16 01:54:16', '2021-04-16 01:54:16'),
(377, 'Borde-23.png', NULL, '181.97 KB', 'borde-231618563257.png', '2362 x 2362 pixels', '2021-04-16 01:54:23', '2021-04-16 01:54:23'),
(378, 'Borde-24.png', NULL, '119.4 KB', 'borde-241618563259.png', '2362 x 2362 pixels', '2021-04-16 01:54:25', '2021-04-16 01:54:25'),
(379, 'Borde-25.png', NULL, '179.49 KB', 'borde-251618563265.png', '2362 x 2362 pixels', '2021-04-16 01:54:31', '2021-04-16 01:54:31'),
(380, 'Borde-26.png', NULL, '169.01 KB', 'borde-261618563268.png', '2362 x 2362 pixels', '2021-04-16 01:54:36', '2021-04-16 01:54:36'),
(381, 'Borde-27.png', NULL, '178.1 KB', 'borde-271618563276.png', '2362 x 2362 pixels', '2021-04-16 01:54:43', '2021-04-16 01:54:43'),
(382, 'Borde-28.png', NULL, '176.49 KB', 'borde-281618563278.png', '2362 x 2362 pixels', '2021-04-16 01:54:44', '2021-04-16 01:54:44'),
(383, 'Borde-29.png', NULL, '181.92 KB', 'borde-291618563285.png', '2362 x 2362 pixels', '2021-04-16 01:54:51', '2021-04-16 01:54:51'),
(384, 'Borde-30.png', NULL, '177.25 KB', 'borde-301618563286.png', '2362 x 2362 pixels', '2021-04-16 01:54:52', '2021-04-16 01:54:52'),
(385, 'Borde-31.png', NULL, '170.54 KB', 'borde-311618563293.png', '2362 x 2362 pixels', '2021-04-16 01:54:59', '2021-04-16 01:54:59'),
(386, 'Borde-32.png', NULL, '179.84 KB', 'borde-321618563294.png', '2362 x 2362 pixels', '2021-04-16 01:55:01', '2021-04-16 01:55:01'),
(387, 'Borde-33.png', NULL, '118.87 KB', 'borde-331618563302.png', '2362 x 2362 pixels', '2021-04-16 01:55:07', '2021-04-16 01:55:07'),
(388, 'Borde-34.png', NULL, '377.35 KB', 'borde-341618563305.png', '2362 x 2362 pixels', '2021-04-16 01:55:10', '2021-04-16 01:55:10'),
(389, 'Borde-35.png', NULL, '693.13 KB', 'borde-351618563309.png', '2362 x 2362 pixels', '2021-04-16 01:55:14', '2021-04-16 01:55:14'),
(390, 'Marchesa-01.png', NULL, '176.91 KB', 'marchesa-011618566756.png', '2362 x 2362 pixels', '2021-04-16 02:52:39', '2021-04-16 02:52:39'),
(391, 'Edmont Fallot-01.jpg', NULL, '850.67 KB', 'edmont-fallot-011618806826.jpg', '2362 x 2362 pixels', '2021-04-18 21:33:55', '2021-04-18 21:33:55'),
(392, 'Edmont Fallot-02.jpg', NULL, '818.54 KB', 'edmont-fallot-021618806826.jpg', '2362 x 2362 pixels', '2021-04-18 21:33:57', '2021-04-18 21:33:57'),
(393, 'Edmont Fallot-04.jpg', NULL, '1.02 MB', 'edmont-fallot-041618806855.jpg', '2362 x 2362 pixels', '2021-04-18 21:34:23', '2021-04-18 21:34:23'),
(394, 'Edmont Fallot-03.jpg', NULL, '681.56 KB', 'edmont-fallot-031618806855.jpg', '2362 x 2362 pixels', '2021-04-18 21:34:23', '2021-04-18 21:34:23'),
(395, 'Edmont Fallot-06.jpg', NULL, '548.04 KB', 'edmont-fallot-061618806869.jpg', '2362 x 2362 pixels', '2021-04-18 21:34:37', '2021-04-18 21:34:37'),
(396, 'Edmont Fallot-05.jpg', NULL, '657.25 KB', 'edmont-fallot-051618806869.jpg', '2362 x 2362 pixels', '2021-04-18 21:34:37', '2021-04-18 21:34:37'),
(397, 'Edmont Fallot-08.jpg', NULL, '709.29 KB', 'edmont-fallot-081618806894.jpg', '2362 x 2362 pixels', '2021-04-18 21:35:02', '2021-04-18 21:35:02'),
(398, 'Edmont Fallot-07.jpg', NULL, '688.39 KB', 'edmont-fallot-071618806894.jpg', '2362 x 2362 pixels', '2021-04-18 21:35:02', '2021-04-18 21:35:02'),
(399, 'Edmont Fallot-10.jpg', NULL, '589.67 KB', 'edmont-fallot-101618806930.jpg', '2362 x 2362 pixels', '2021-04-18 21:35:39', '2021-04-18 21:35:39'),
(400, 'Edmont Fallot-09.jpg', NULL, '781.38 KB', 'edmont-fallot-091618806930.jpg', '2362 x 2362 pixels', '2021-04-18 21:35:39', '2021-04-18 21:35:39'),
(401, 'Edmont Fallot-11.jpg', NULL, '625.34 KB', 'edmont-fallot-111618814585.jpg', '2362 x 2362 pixels', '2021-04-18 23:43:08', '2021-04-18 23:43:08'),
(402, 'Edmont Fallot-12.jpg', NULL, '724.73 KB', 'edmont-fallot-121618814620.jpg', '2362 x 2362 pixels', '2021-04-18 23:43:45', '2021-04-18 23:43:45'),
(403, 'COMPAL-01.jpg', NULL, '1018.62 KB', 'compal-011618890471.jpg', '2362 x 2362 pixels', '2021-04-19 20:47:57', '2021-04-19 20:47:57'),
(404, 'COMPAL-02.jpg', NULL, '936.07 KB', 'compal-021618890478.jpg', '2362 x 2362 pixels', '2021-04-19 20:48:04', '2021-04-19 20:48:04'),
(405, 'COMPAL-03.jpg', NULL, '1.4 MB', 'compal-031618890482.jpg', '2362 x 2362 pixels', '2021-04-19 20:48:06', '2021-04-19 20:48:06'),
(406, 'COMPAL-04.jpg', NULL, '820.18 KB', 'compal-041618890488.jpg', '2362 x 2362 pixels', '2021-04-19 20:48:12', '2021-04-19 20:48:12'),
(407, 'COMPAL-05.jpg', NULL, '716.47 KB', 'compal-051618890492.jpg', '2362 x 2362 pixels', '2021-04-19 20:48:16', '2021-04-19 20:48:16'),
(408, 'COMPAL-06.jpg', NULL, '701.3 KB', 'compal-061618890496.jpg', '2362 x 2362 pixels', '2021-04-19 20:48:21', '2021-04-19 20:48:21'),
(409, 'COMPAL-07.jpg', NULL, '736.9 KB', 'compal-071618890499.jpg', '2362 x 2362 pixels', '2021-04-19 20:48:22', '2021-04-19 20:48:22'),
(410, 'COMPAL-08.jpg', NULL, '1.08 MB', 'compal-081618890814.jpg', '2362 x 2362 pixels', '2021-04-19 20:53:41', '2021-04-19 20:53:41'),
(411, 'COMPAL-09.jpg', NULL, '1.07 MB', 'compal-091618890818.jpg', '2362 x 2362 pixels', '2021-04-19 20:53:44', '2021-04-19 20:53:44'),
(412, 'COMPAL-10.jpg', NULL, '1.03 MB', 'compal-101618890823.jpg', '2362 x 2362 pixels', '2021-04-19 20:53:47', '2021-04-19 20:53:47'),
(413, 'agromonte-01.jpg', NULL, '211.36 KB', 'agromonte-011618895779.jpg', '2362 x 2362 pixels', '2021-04-19 22:16:22', '2021-04-19 22:16:22'),
(414, 'COMPAL-11.jpg', NULL, '987.75 KB', 'compal-111618906017.jpg', '2362 x 2362 pixels', '2021-04-20 01:07:01', '2021-04-20 01:07:01'),
(415, 'DALMATIA-01.jpg', NULL, '14.09 KB', 'dalmatia-011618982213.jpg', '336 x 336 pixels', '2021-04-20 22:16:53', '2021-04-20 22:16:53'),
(416, 'DALMATIA-02.jpg', NULL, '12.57 KB', 'dalmatia-021618982213.jpg', '336 x 336 pixels', '2021-04-20 22:16:53', '2021-04-20 22:16:53'),
(417, 'DALMATIA-03.jpg', NULL, '12.58 KB', 'dalmatia-031618982215.jpg', '336 x 336 pixels', '2021-04-20 22:16:56', '2021-04-20 22:16:56'),
(418, 'DALMATIA-04.jpg', NULL, '8.08 KB', 'dalmatia-041618982216.jpg', '336 x 336 pixels', '2021-04-20 22:16:56', '2021-04-20 22:16:56'),
(419, 'DALMATIA-05.jpg', NULL, '9.3 KB', 'dalmatia-051618982217.jpg', '336 x 336 pixels', '2021-04-20 22:16:58', '2021-04-20 22:16:58'),
(420, 'DALMATIA-06.jpg', NULL, '12.36 KB', 'dalmatia-061618982218.jpg', '336 x 336 pixels', '2021-04-20 22:16:58', '2021-04-20 22:16:58'),
(421, 'DALMATIA-07.jpg', NULL, '12.13 KB', 'dalmatia-071618982219.jpg', '336 x 336 pixels', '2021-04-20 22:16:59', '2021-04-20 22:16:59'),
(422, 'DALMATIA-08.jpg', NULL, '12.81 KB', 'dalmatia-081618982219.jpg', '336 x 336 pixels', '2021-04-20 22:17:00', '2021-04-20 22:17:00'),
(423, 'DALMATIA-09.jpg', NULL, '9.86 KB', 'dalmatia-091618982220.jpg', '336 x 336 pixels', '2021-04-20 22:17:00', '2021-04-20 22:17:00'),
(424, 'DALMATIA-10.jpg', NULL, '9.93 KB', 'dalmatia-101618982221.jpg', '336 x 336 pixels', '2021-04-20 22:17:01', '2021-04-20 22:17:01'),
(425, 'DALMATIA-11.jpg', NULL, '9.93 KB', 'dalmatia-111618982222.jpg', '336 x 336 pixels', '2021-04-20 22:17:02', '2021-04-20 22:17:02'),
(426, 'DALMATIA-12.jpg', NULL, '10.87 KB', 'dalmatia-121618982222.jpg', '336 x 336 pixels', '2021-04-20 22:17:03', '2021-04-20 22:17:03'),
(427, 'DALMATIA-13.jpg', NULL, '10.8 KB', 'dalmatia-131618982223.jpg', '336 x 336 pixels', '2021-04-20 22:17:04', '2021-04-20 22:17:04'),
(428, 'DALMATIA-14.jpg', NULL, '9.9 KB', 'dalmatia-141618982224.jpg', '336 x 336 pixels', '2021-04-20 22:17:04', '2021-04-20 22:17:04'),
(429, 'DALMATIA-15.jpg', NULL, '17.14 KB', 'dalmatia-151618982225.jpg', '336 x 336 pixels', '2021-04-20 22:17:05', '2021-04-20 22:17:05'),
(430, 'DALMATIA-16.jpg', NULL, '16.29 KB', 'dalmatia-161618982226.jpg', '336 x 336 pixels', '2021-04-20 22:17:06', '2021-04-20 22:17:06'),
(431, 'DALMATIA-17.jpg', NULL, '16.44 KB', 'dalmatia-171618982226.jpg', '336 x 336 pixels', '2021-04-20 22:17:07', '2021-04-20 22:17:07'),
(432, 'DALMATIA-18.jpg', NULL, '14.46 KB', 'dalmatia-181618982227.jpg', '336 x 336 pixels', '2021-04-20 22:17:07', '2021-04-20 22:17:07'),
(433, 'DALMATIA-19.jpg', NULL, '13.53 KB', 'dalmatia-191618982228.jpg', '336 x 336 pixels', '2021-04-20 22:17:08', '2021-04-20 22:17:08'),
(434, 'PYB-06 NEW-06.jpg', NULL, '125.43 KB', 'pyb-06-new-061619062518.jpg', '1024 x 480 pixels', '2021-04-21 20:35:19', '2021-04-21 20:35:19'),
(435, 'PYB-06 NEW-06.jpg', NULL, '963.44 KB', 'pyb-06-new-061619063193.jpg', '1638 x 768 pixels', '2021-04-21 20:46:36', '2021-04-21 20:46:36'),
(436, 'background putih -01.png', NULL, '25.09 KB', 'background-putih-011619065658.png', '1958 x 2383 pixels', '2021-04-21 21:27:41', '2021-04-21 21:27:41'),
(437, 'background putih 1-01.png', NULL, '25.45 KB', 'background-putih-1-011619065896.png', '1958 x 2383 pixels', '2021-04-21 21:31:38', '2021-04-21 21:31:38'),
(438, 'banner web.jpg', NULL, '1.09 MB', 'banner-web1619146119.jpg', '1920 x 900 pixels', '2021-04-22 19:48:44', '2021-04-22 19:48:44'),
(439, 'Edmont Fallot-03.jpg', NULL, '471.62 KB', 'edmont-fallot-031619147023.jpg', '1920 x 900 pixels', '2021-04-22 20:03:43', '2021-04-22 20:03:43'),
(440, 'GEOFOODS.jpg', NULL, '462.81 KB', 'geofoods1619495921.jpg', '1920 x 900 pixels', '2021-04-26 20:58:42', '2021-04-26 20:58:42'),
(441, 'Toccofinale-01.jpg', NULL, '840.89 KB', 'toccofinale-011619496187.jpg', '1920 x 900 pixels', '2021-04-26 21:03:08', '2021-04-26 21:03:08'),
(442, 'PUCCI.jpg', NULL, '385.87 KB', 'pucci1619497867.jpg', '1920 x 900 pixels', '2021-04-26 21:31:07', '2021-04-26 21:31:07'),
(443, 'COMPAL-01.jpg', NULL, '1018.62 KB', 'compal-011619678733.jpg', '2362 x 2362 pixels', '2021-04-28 23:45:38', '2021-04-28 23:45:38'),
(444, 'COMPAL-02.jpg', NULL, '936.07 KB', 'compal-021619678849.jpg', '2362 x 2362 pixels', '2021-04-28 23:47:31', '2021-04-28 23:47:31'),
(445, 'COMPAL-09.jpg', NULL, '1.07 MB', 'compal-091619681088.jpg', '2362 x 2362 pixels', '2021-04-29 00:24:50', '2021-04-29 00:24:50'),
(446, 'CT2P867711.jpg', NULL, '1.93 MB', 'ct2p8677111621406782.jpg', '1920 x 1280 pixels', '2021-05-18 23:46:28', '2021-05-18 23:46:28'),
(447, 'CT2P70501111.jpg', NULL, '1.58 MB', 'ct2p705011111621407968.jpg', '1920 x 1280 pixels', '2021-05-19 00:06:09', '2021-05-19 00:06:09'),
(448, 'CT2P70451.jpg', NULL, '1.41 MB', 'ct2p704511621408177.jpg', '1920 x 1280 pixels', '2021-05-19 00:09:38', '2021-05-19 00:09:38'),
(449, 'TEAM-01.jpg', NULL, '226.41 KB', 'team-011621410376.jpg', '568 x 568 pixels', '2021-05-19 00:46:16', '2021-05-19 00:46:16'),
(450, 'TEAM-02.jpg', NULL, '302.8 KB', 'team-021621410377.jpg', '568 x 568 pixels', '2021-05-19 00:46:18', '2021-05-19 00:46:18'),
(451, 'TEAM-04.jpg', NULL, '297.4 KB', 'team-041621410379.jpg', '568 x 568 pixels', '2021-05-19 00:46:19', '2021-05-19 00:46:19'),
(452, 'TEAM-03.jpg', NULL, '343.05 KB', 'team-031621410380.jpg', '568 x 568 pixels', '2021-05-19 00:46:20', '2021-05-19 00:46:20'),
(453, 'TEAM-05.jpg', NULL, '317.21 KB', 'team-051621410381.jpg', '568 x 568 pixels', '2021-05-19 00:46:21', '2021-05-19 00:46:21'),
(454, 'TEAM-06.jpg', NULL, '311.27 KB', 'team-061621410383.jpg', '568 x 568 pixels', '2021-05-19 00:46:23', '2021-05-19 00:46:23'),
(455, 'TEAM-07.jpg', NULL, '255.55 KB', 'team-071621410383.jpg', '568 x 568 pixels', '2021-05-19 00:46:24', '2021-05-19 00:46:24'),
(456, 'TEAM-08.jpg', NULL, '283.59 KB', 'team-081621410385.jpg', '568 x 568 pixels', '2021-05-19 00:46:25', '2021-05-19 00:46:25'),
(457, 'TEAM2-08.jpg', NULL, '222.66 KB', 'team2-081621500354.jpg', '568 x 568 pixels', '2021-05-20 01:45:54', '2021-05-20 01:45:54'),
(458, 'TEAM2-01.jpg', NULL, '232.05 KB', 'team2-011621500531.jpg', '568 x 568 pixels', '2021-05-20 01:48:51', '2021-05-20 01:48:51'),
(459, 'TEAM2-02.jpg', NULL, '243.85 KB', 'team2-021621500532.jpg', '568 x 568 pixels', '2021-05-20 01:48:52', '2021-05-20 01:48:52'),
(460, 'TEAM2-03.jpg', NULL, '174.07 KB', 'team2-031621500532.jpg', '568 x 568 pixels', '2021-05-20 01:48:53', '2021-05-20 01:48:53'),
(461, 'TEAM2-04.jpg', NULL, '181.58 KB', 'team2-041621500533.jpg', '568 x 568 pixels', '2021-05-20 01:48:53', '2021-05-20 01:48:53'),
(462, 'TEAM2-05.jpg', NULL, '244.24 KB', 'team2-051621500536.jpg', '568 x 568 pixels', '2021-05-20 01:48:57', '2021-05-20 01:48:57'),
(463, 'TEAM2-06.jpg', NULL, '251.26 KB', 'team2-061621500537.jpg', '568 x 568 pixels', '2021-05-20 01:48:57', '2021-05-20 01:48:57'),
(464, 'TEAM2-07.jpg', NULL, '243.1 KB', 'team2-071621500538.jpg', '568 x 568 pixels', '2021-05-20 01:48:58', '2021-05-20 01:48:58'),
(465, 'TEAM2-08.jpg', NULL, '222.66 KB', 'team2-081621500540.jpg', '568 x 568 pixels', '2021-05-20 01:49:00', '2021-05-20 01:49:00'),
(466, 'TEAM3-01.jpg', NULL, '220.98 KB', 'team3-011621500540.jpg', '568 x 568 pixels', '2021-05-20 01:49:02', '2021-05-20 01:49:02'),
(467, 'TEAM3-02.jpg', NULL, '209.42 KB', 'team3-021621500543.jpg', '568 x 568 pixels', '2021-05-20 01:49:03', '2021-05-20 01:49:03'),
(468, 'TEAM3-03.jpg', NULL, '232.56 KB', 'team3-031621500544.jpg', '568 x 568 pixels', '2021-05-20 01:49:04', '2021-05-20 01:49:04'),
(469, 'TEAM3-04.jpg', NULL, '221.17 KB', 'team3-041621500545.jpg', '568 x 568 pixels', '2021-05-20 01:49:05', '2021-05-20 01:49:05'),
(470, 'TEAM3-05.jpg', NULL, '242.36 KB', 'team3-051621500546.jpg', '568 x 568 pixels', '2021-05-20 01:49:06', '2021-05-20 01:49:06'),
(471, 'TEAM3-06.jpg', NULL, '242.35 KB', 'team3-061621500547.jpg', '568 x 568 pixels', '2021-05-20 01:49:07', '2021-05-20 01:49:07'),
(472, 'TEAM3-07.jpg', NULL, '242.14 KB', 'team3-071621500548.jpg', '568 x 568 pixels', '2021-05-20 01:49:08', '2021-05-20 01:49:08'),
(473, 'TEAM3-08.jpg', NULL, '265.22 KB', 'team3-081621500549.jpg', '568 x 568 pixels', '2021-05-20 01:49:09', '2021-05-20 01:49:09'),
(474, 'TEAM4-01.jpg', NULL, '321.85 KB', 'team4-011621500551.jpg', '568 x 568 pixels', '2021-05-20 01:49:11', '2021-05-20 01:49:11'),
(475, 'TEAM4-02.jpg', NULL, '368.08 KB', 'team4-021621500552.jpg', '568 x 568 pixels', '2021-05-20 01:49:12', '2021-05-20 01:49:12'),
(476, 'TEAM4-03.jpg', NULL, '310.58 KB', 'team4-031621500553.jpg', '568 x 568 pixels', '2021-05-20 01:49:13', '2021-05-20 01:49:13'),
(477, 'TEAM4-04.jpg', NULL, '343.63 KB', 'team4-041621500555.jpg', '568 x 568 pixels', '2021-05-20 01:49:15', '2021-05-20 01:49:15'),
(478, 'TEAM4-06.jpg', NULL, '275.87 KB', 'team4-061621500558.jpg', '568 x 568 pixels', '2021-05-20 01:49:18', '2021-05-20 01:49:18'),
(479, 'TEAM4-05.jpg', NULL, '264.36 KB', 'team4-051621500558.jpg', '568 x 568 pixels', '2021-05-20 01:49:18', '2021-05-20 01:49:18'),
(480, 'TEAM4-07.jpg', NULL, '252.21 KB', 'team4-071621500560.jpg', '568 x 568 pixels', '2021-05-20 01:49:20', '2021-05-20 01:49:20'),
(481, 'TEAM4-08.jpg', NULL, '281.26 KB', 'team4-081621500561.jpg', '568 x 568 pixels', '2021-05-20 01:49:21', '2021-05-20 01:49:21'),
(482, 'TEAM5-02.jpg', NULL, '239.68 KB', 'team5-021621500623.jpg', '568 x 568 pixels', '2021-05-20 01:50:24', '2021-05-20 01:50:24'),
(483, 'TEAM5-01.jpg', NULL, '239.83 KB', 'team5-011621500624.jpg', '568 x 568 pixels', '2021-05-20 01:50:24', '2021-05-20 01:50:24'),
(484, 'TEAM5-03.jpg', NULL, '234.15 KB', 'team5-031621500626.jpg', '568 x 568 pixels', '2021-05-20 01:50:27', '2021-05-20 01:50:27'),
(485, 'TEAM5-04.jpg', NULL, '250.76 KB', 'team5-041621500627.jpg', '568 x 568 pixels', '2021-05-20 01:50:27', '2021-05-20 01:50:27'),
(486, 'TEAM5-05.jpg', NULL, '266.12 KB', 'team5-051621500628.jpg', '568 x 568 pixels', '2021-05-20 01:50:28', '2021-05-20 01:50:28'),
(487, 'TEAM5-06.jpg', NULL, '235.84 KB', 'team5-061621500629.jpg', '568 x 568 pixels', '2021-05-20 01:50:29', '2021-05-20 01:50:29'),
(488, 'winner R-01-01.jpg', NULL, '1.92 MB', 'winner-r-01-011621500650.jpg', '2083 x 2083 pixels', '2021-05-20 01:50:52', '2021-05-20 01:50:52'),
(489, 'WhatsApp Image 2021-05-20 at 16.45.43.jpeg', NULL, '119.62 KB', 'whatsapp-image-2021-05-20-at-1645431621504251.jpeg', '1280 x 960 pixels', '2021-05-20 02:50:52', '2021-05-20 02:50:52'),
(490, 'WhatsApp Image 2020-02-29 at 17.49.40.jpeg', NULL, '108.53 KB', 'whatsapp-image-2020-02-29-at-1749401621567072.jpeg', '1152 x 546 pixels', '2021-05-20 20:17:53', '2021-05-20 20:17:53'),
(491, 'TEAM5-06.jpg', NULL, '235.84 KB', 'team5-061621567509.jpg', '568 x 568 pixels', '2021-05-20 20:25:09', '2021-05-20 20:25:09'),
(492, 'TEAM3-03.jpg', NULL, '232.56 KB', 'team3-031621567554.jpg', '568 x 568 pixels', '2021-05-20 20:25:54', '2021-05-20 20:25:54'),
(493, 'pyb cooking cmpttn.png', NULL, '1.95 MB', 'pyb-cooking-cmpttn1621568741.png', '1920 x 1280 pixels', '2021-05-20 20:45:42', '2021-05-20 20:45:42'),
(494, 'paull.png', NULL, '1.53 MB', 'paull1621571313.png', '1507 x 960 pixels', '2021-05-20 21:28:36', '2021-05-20 21:28:36'),
(495, 'paullx.jpg', NULL, '105.24 KB', 'paullx1621578886.jpg', '1024 x 683 pixels', '2021-05-20 23:34:46', '2021-05-20 23:34:46'),
(496, 'Untitled-2.png', NULL, '1.99 MB', 'untitled-21621580079.png', '1920 x 1280 pixels', '2021-05-20 23:54:40', '2021-05-20 23:54:40'),
(497, 'slide show-02.jpg', NULL, '1.37 MB', 'slide-show-021630293254.jpg', '1921 x 901 pixels', '2021-08-29 20:14:18', '2021-08-29 20:14:18'),
(498, 'slide show-05.jpg', NULL, '997.48 KB', 'slide-show-051630293955.jpg', '1921 x 901 pixels', '2021-08-29 20:25:56', '2021-08-29 20:25:56'),
(499, 'DESAIN A-07.jpg', NULL, '1.21 MB', 'desain-a-071630294209.jpg', '1921 x 901 pixels', '2021-08-29 20:30:10', '2021-08-29 20:30:10'),
(500, 'DESAIN A-10.jpg', NULL, '22.81 KB', 'desain-a-101630478431.jpg', '448 x 210 pixels', '2021-08-31 23:40:31', '2021-08-31 23:40:31'),
(501, 'DESAIN A-06.jpg', NULL, '16.57 KB', 'desain-a-061630478837.jpg', '448 x 210 pixels', '2021-08-31 23:47:17', '2021-08-31 23:47:17'),
(502, 'DESAIN A-07.jpg', NULL, '26.12 KB', 'desain-a-071630479024.jpg', '448 x 210 pixels', '2021-08-31 23:50:24', '2021-08-31 23:50:24'),
(503, 'DESAIN A-09.jpg', NULL, '15.31 KB', 'desain-a-091630479099.jpg', '448 x 210 pixels', '2021-08-31 23:51:39', '2021-08-31 23:51:39'),
(504, 'WhatsApp Image 2021-08-30 at 10.19.48.jpeg', NULL, '159.59 KB', 'whatsapp-image-2021-08-30-at-1019481630479608.jpeg', '1280 x 600 pixels', '2021-09-01 00:00:08', '2021-09-01 00:00:08'),
(505, 'WhatsApp Image 2021-08-30 at 10.19.48 (2).jpeg', NULL, '163.68 KB', 'whatsapp-image-2021-08-30-at-101948-21630479764.jpeg', '1280 x 600 pixels', '2021-09-01 00:02:44', '2021-09-01 00:02:44'),
(506, 'WhatsApp Image 2021-09-02 at 16.26.49.jpeg', NULL, '268.5 KB', 'whatsapp-image-2021-09-02-at-1626491630575758.jpeg', '1280 x 600 pixels', '2021-09-02 02:42:39', '2021-09-02 02:42:39'),
(507, 'WhatsApp Image 2021-09-02 at 16.32.25.jpeg', NULL, '238.12 KB', 'whatsapp-image-2021-09-02-at-1632251630575763.jpeg', '1280 x 600 pixels', '2021-09-02 02:42:46', '2021-09-02 02:42:46'),
(508, 'WhatsApp Image 2021-08-26 at 17.33.53.jpeg', NULL, '339.56 KB', 'whatsapp-image-2021-08-26-at-1733531630575766.jpeg', '1280 x 600 pixels', '2021-09-02 02:42:47', '2021-09-02 02:42:47'),
(509, 'Agromonte-01.png', NULL, '978.2 KB', 'agromonte-011631167341.png', '1181 x 1181 pixels', '2021-09-08 23:02:25', '2021-09-08 23:02:25'),
(510, 'Agromonte-02.png', NULL, '255.06 KB', 'agromonte-021631167345.png', '1181 x 1181 pixels', '2021-09-08 23:02:26', '2021-09-08 23:02:26'),
(511, 'DESAIN B-04.jpg', NULL, '100 KB', 'desain-b-041631173230.jpg', '1024 x 480 pixels', '2021-09-09 00:40:30', '2021-09-09 00:40:30'),
(512, 'DESAIN B-05.jpg', NULL, '335.86 KB', 'desain-b-051631173231.jpg', '1024 x 480 pixels', '2021-09-09 00:40:31', '2021-09-09 00:40:31'),
(513, 'Product-11.jpg', NULL, '495.18 KB', 'product-111645602801.jpg', '945 x 945 pixels', '2022-02-23 00:53:24', '2022-02-23 00:53:24'),
(514, 'Product-12.jpg', NULL, '470.45 KB', 'product-121645603770.jpg', '945 x 945 pixels', '2022-02-23 01:09:32', '2022-02-23 01:09:32'),
(515, 'Product-11.jpg', NULL, '71.27 KB', 'product-111645604249.jpg', '336 x 336 pixels', '2022-02-23 01:17:29', '2022-02-23 01:17:29'),
(516, 'FIG 30GR.jpg', NULL, '12.36 KB', 'fig-30gr1645670684.jpg', '336 x 336 pixels', '2022-02-23 19:44:45', '2022-02-23 19:44:45'),
(517, 'Product-11.jpg', NULL, '77.16 KB', 'product-111645673922.jpg', '202 x 202 pixels', '2022-02-23 20:38:42', '2022-02-23 20:38:42'),
(518, 'Product-11.jpg', NULL, '13.29 KB', 'product-111645674144.jpg', '160 x 160 pixels', '2022-02-23 20:42:24', '2022-02-23 20:42:24'),
(519, 'Product-11a.jpg', NULL, '13.29 KB', 'product-11a1645674219.jpg', '160 x 160 pixels', '2022-02-23 20:43:39', '2022-02-23 20:43:39'),
(520, 'Product-11b.jpg', NULL, '71.27 KB', 'product-11b1645674317.jpg', '336 x 336 pixels', '2022-02-23 20:45:17', '2022-02-23 20:45:17'),
(521, 'logo.png', NULL, '40.61 KB', 'logo1675151028.png', '284 x 132 pixels', '2023-01-31 00:43:49', '2023-01-31 00:43:49'),
(522, 'Untitled design (3).png', NULL, '324.96 KB', 'untitled-design-31675153178.png', '1080 x 1080 pixels', '2023-01-31 01:19:39', '2023-01-31 01:19:39'),
(523, 'Untitled design (4).png', NULL, '183.17 KB', 'untitled-design-41675153604.png', '1080 x 1080 pixels', '2023-01-31 01:26:45', '2023-01-31 01:26:45'),
(524, 'Pasta Di Martino-01.jpg', NULL, '306.76 KB', 'pasta-di-martino-011675153806.jpg', '834 x 834 pixels', '2023-01-31 01:30:06', '2023-01-31 01:30:06'),
(525, 'Pasta Di Martino-02.jpg', NULL, '392.78 KB', 'pasta-di-martino-021675153809.jpg', '835 x 834 pixels', '2023-01-31 01:30:10', '2023-01-31 01:30:10'),
(526, 'Pasta Di Martino-03.jpg', NULL, '330.13 KB', 'pasta-di-martino-031675153809.jpg', '834 x 834 pixels', '2023-01-31 01:30:10', '2023-01-31 01:30:10'),
(527, 'Pasta Di Martino-04.jpg', NULL, '425.66 KB', 'pasta-di-martino-041675153811.jpg', '834 x 834 pixels', '2023-01-31 01:30:12', '2023-01-31 01:30:12'),
(528, 'Pasta Di Martino-05.jpg', NULL, '389.63 KB', 'pasta-di-martino-051675153812.jpg', '834 x 834 pixels', '2023-01-31 01:30:12', '2023-01-31 01:30:12'),
(529, 'Pasta Di Martino-06.jpg', NULL, '223.71 KB', 'pasta-di-martino-061675153813.jpg', '834 x 834 pixels', '2023-01-31 01:30:14', '2023-01-31 01:30:14'),
(530, 'Pasta Di Martino-07.jpg', NULL, '232.29 KB', 'pasta-di-martino-071675153814.jpg', '835 x 834 pixels', '2023-01-31 01:30:15', '2023-01-31 01:30:15'),
(531, 'Pasta Di Martino-06.jpg', NULL, '223.71 KB', 'pasta-di-martino-061675219205.jpg', '834 x 834 pixels', '2023-01-31 19:40:05', '2023-01-31 19:40:05'),
(532, 'Cemoi-01.jpg', NULL, '164.75 KB', 'cemoi-011675305922.jpg', '834 x 834 pixels', '2023-02-01 19:45:23', '2023-02-01 19:45:23'),
(533, 'Cemoi-02.jpg', NULL, '158.3 KB', 'cemoi-021675305922.jpg', '835 x 834 pixels', '2023-02-01 19:45:23', '2023-02-01 19:45:23'),
(534, 'Cemoi-03.jpg', NULL, '229.26 KB', 'cemoi-031675305925.jpg', '834 x 834 pixels', '2023-02-01 19:45:26', '2023-02-01 19:45:26'),
(535, 'Cemoi-04.jpg', NULL, '157.54 KB', 'cemoi-041675305925.jpg', '834 x 834 pixels', '2023-02-01 19:45:26', '2023-02-01 19:45:26'),
(536, 'Cemoi-05.jpg', NULL, '162.3 KB', 'cemoi-051675305926.jpg', '834 x 834 pixels', '2023-02-01 19:45:27', '2023-02-01 19:45:27'),
(537, 'Cemoi-06.jpg', NULL, '229.61 KB', 'cemoi-061675305927.jpg', '834 x 834 pixels', '2023-02-01 19:45:27', '2023-02-01 19:45:27'),
(538, 'Cemoi-07.jpg', NULL, '155.74 KB', 'cemoi-071675305928.jpg', '835 x 834 pixels', '2023-02-01 19:45:29', '2023-02-01 19:45:29'),
(539, 'Cemoi-08.jpg', NULL, '225.65 KB', 'cemoi-081675305928.jpg', '834 x 834 pixels', '2023-02-01 19:45:29', '2023-02-01 19:45:29'),
(540, 'Cemoi-10.jpg', NULL, '189.44 KB', 'cemoi-101675305931.jpg', '834 x 834 pixels', '2023-02-01 19:45:31', '2023-02-01 19:45:31'),
(541, 'Cemoi-09.jpg', NULL, '244.01 KB', 'cemoi-091675305931.jpg', '835 x 834 pixels', '2023-02-01 19:45:32', '2023-02-01 19:45:32'),
(542, 'Cemoi-11.jpg', NULL, '193.2 KB', 'cemoi-111675305932.jpg', '834 x 834 pixels', '2023-02-01 19:45:33', '2023-02-01 19:45:33'),
(543, 'Cemoi-12.jpg', NULL, '249.46 KB', 'cemoi-121675305933.jpg', '834 x 834 pixels', '2023-02-01 19:45:33', '2023-02-01 19:45:33'),
(544, 'Cemoi-13.jpg', NULL, '250.39 KB', 'cemoi-131675305934.jpg', '834 x 834 pixels', '2023-02-01 19:45:34', '2023-02-01 19:45:34'),
(545, 'Cemoi-14.jpg', NULL, '222.04 KB', 'cemoi-141675305934.jpg', '835 x 834 pixels', '2023-02-01 19:45:35', '2023-02-01 19:45:35'),
(546, 'Cemoi-16.jpg', NULL, '193.77 KB', 'cemoi-161675305936.jpg', '834 x 834 pixels', '2023-02-01 19:45:37', '2023-02-01 19:45:37'),
(547, 'Cemoi-15.jpg', NULL, '219.89 KB', 'cemoi-151675305936.jpg', '835 x 834 pixels', '2023-02-01 19:45:37', '2023-02-01 19:45:37'),
(548, 'Cemoi-17.jpg', NULL, '112.63 KB', 'cemoi-171675305937.jpg', '834 x 834 pixels', '2023-02-01 19:45:38', '2023-02-01 19:45:38'),
(549, 'Untitled design (5).png', NULL, '168.17 KB', 'untitled-design-51675307174.png', '1080 x 1080 pixels', '2023-02-01 20:06:15', '2023-02-01 20:06:15'),
(550, 'Untitled design (6).png', NULL, '88.8 KB', 'untitled-design-61675319035.png', '1080 x 1080 pixels', '2023-02-01 23:23:55', '2023-02-01 23:23:55'),
(551, 'Granoro-01.png', NULL, '307.08 KB', 'granoro-011675319087.png', '834 x 834 pixels', '2023-02-01 23:24:48', '2023-02-01 23:24:48'),
(552, 'Granoro-02.png', NULL, '347.87 KB', 'granoro-021675319088.png', '835 x 834 pixels', '2023-02-01 23:24:49', '2023-02-01 23:24:49'),
(553, 'Granoro-03.png', NULL, '320.41 KB', 'granoro-031675319089.png', '835 x 834 pixels', '2023-02-01 23:24:50', '2023-02-01 23:24:50'),
(554, 'Granoro-04.png', NULL, '347.65 KB', 'granoro-041675319092.png', '834 x 834 pixels', '2023-02-01 23:24:53', '2023-02-01 23:24:53'),
(555, 'Granoro-05.png', NULL, '259.63 KB', 'granoro-051675319093.png', '834 x 834 pixels', '2023-02-01 23:24:53', '2023-02-01 23:24:53'),
(556, 'Granoro-06.png', NULL, '315.5 KB', 'granoro-061675319094.png', '834 x 834 pixels', '2023-02-01 23:24:54', '2023-02-01 23:24:54'),
(557, 'Granoro-07.png', NULL, '241.59 KB', 'granoro-071675319095.png', '835 x 834 pixels', '2023-02-01 23:24:55', '2023-02-01 23:24:55'),
(558, 'Granoro-08.png', NULL, '235.16 KB', 'granoro-081675319096.png', '835 x 834 pixels', '2023-02-01 23:24:59', '2023-02-01 23:24:59'),
(559, 'Granoro-09.png', NULL, '237.35 KB', 'granoro-091675319099.png', '834 x 834 pixels', '2023-02-01 23:24:59', '2023-02-01 23:24:59'),
(560, 'Granoro-10.png', NULL, '178.26 KB', 'granoro-101675319100.png', '834 x 834 pixels', '2023-02-01 23:25:00', '2023-02-01 23:25:00'),
(561, 'Granoro-11.png', NULL, '308.84 KB', 'granoro-111675319101.png', '834 x 834 pixels', '2023-02-01 23:25:01', '2023-02-01 23:25:01'),
(562, 'Granoro-12.png', NULL, '233.29 KB', 'granoro-121675319102.png', '834 x 834 pixels', '2023-02-01 23:25:03', '2023-02-01 23:25:03'),
(563, 'Granoro-13.png', NULL, '258.98 KB', 'granoro-131675319104.png', '835 x 834 pixels', '2023-02-01 23:25:05', '2023-02-01 23:25:05'),
(564, 'Granoro-14.png', NULL, '238.29 KB', 'granoro-141675319106.png', '835 x 834 pixels', '2023-02-01 23:25:06', '2023-02-01 23:25:06'),
(565, 'Granoro-15.png', NULL, '235.6 KB', 'granoro-151675319107.png', '834 x 834 pixels', '2023-02-01 23:25:07', '2023-02-01 23:25:07'),
(566, 'Granoro-16.png', NULL, '336.65 KB', 'granoro-161675319108.png', '834 x 835 pixels', '2023-02-01 23:25:08', '2023-02-01 23:25:08'),
(567, '200ml_lait demi-écrémé.png', NULL, '786.98 KB', '200ml-lait-demi-ecreme1677148370.png', '1600 x 1200 pixels', '2023-02-23 03:32:51', '2023-02-23 03:32:51'),
(568, '200ml_lait entier.png', NULL, '799.42 KB', '200ml-lait-entier1677148372.png', '1600 x 1200 pixels', '2023-02-23 03:32:53', '2023-02-23 03:32:53'),
(569, '200ml_vanilla.png', NULL, '1.98 MB', '200ml-vanilla1677148375.png', '5000 x 3750 pixels', '2023-02-23 03:33:02', '2023-02-23 03:33:02'),
(570, '500 ml bouteille - lait entier.png', NULL, '1.64 MB', '500-ml-bouteille-lait-entier1677148386.png', '2362 x 3543 pixels', '2023-02-23 03:33:14', '2023-02-23 03:33:14'),
(571, '500ml bottle - whole milk.png', NULL, '1.62 MB', '500ml-bottle-whole-milk1677148397.png', '2362 x 3543 pixels', '2023-02-23 03:33:21', '2023-02-23 03:33:21'),
(572, '500ml_flavoured milk_vanilla.png', NULL, '1.95 MB', '500ml-flavoured-milk-vanilla1677148405.png', '2362 x 3543 pixels', '2023-02-23 03:33:28', '2023-02-23 03:33:28'),
(573, '1L bouteille - lait écrémé.jpg', NULL, '8.92 KB', '1l-bouteille-lait-ecreme1677149581.jpg', '299 x 448 pixels', '2023-02-23 03:53:02', '2023-02-23 03:53:02'),
(574, '1L bouteille - Lait entier.jpg', NULL, '9.21 KB', '1l-bouteille-lait-entier1677149581.jpg', '299 x 448 pixels', '2023-02-23 03:53:02', '2023-02-23 03:53:02'),
(575, '1L brique_Lait demi-écrémé.jpg', NULL, '12.61 KB', '1l-brique-lait-demi-ecreme1677149583.jpg', '448 x 336 pixels', '2023-02-23 03:53:04', '2023-02-23 03:53:04'),
(576, '1L bouteille_Lait demi-écrémé.jpg', NULL, '9.04 KB', '1l-bouteille-lait-demi-ecreme1677149584.jpg', '299 x 448 pixels', '2023-02-23 03:53:04', '2023-02-23 03:53:04'),
(577, '1L brique_Lait écrémé.jpg', NULL, '12.44 KB', '1l-brique-lait-ecreme1677149584.jpg', '448 x 336 pixels', '2023-02-23 03:53:04', '2023-02-23 03:53:04'),
(578, '1L brique_lait entier.jpg', NULL, '12.74 KB', '1l-brique-lait-entier1677149585.jpg', '448 x 336 pixels', '2023-02-23 03:53:05', '2023-02-23 03:53:05'),
(579, '200ml_Drinking Yogurt_Plain.jpg', NULL, '13.81 KB', '200ml-drinking-yogurt-plain1677149585.jpg', '448 x 336 pixels', '2023-02-23 03:53:05', '2023-02-23 03:53:05'),
(580, '200ml_lait demi-écrémé.jpg', NULL, '11.9 KB', '200ml-lait-demi-ecreme1677149586.jpg', '448 x 336 pixels', '2023-02-23 03:53:06', '2023-02-23 03:53:06'),
(581, '200ml_lait entier.jpg', NULL, '12.15 KB', '200ml-lait-entier1677149586.jpg', '448 x 336 pixels', '2023-02-23 03:53:06', '2023-02-23 03:53:06'),
(582, '200ml_strawberry.jpg', NULL, '13.16 KB', '200ml-strawberry1677149587.jpg', '288 x 448 pixels', '2023-02-23 03:53:07', '2023-02-23 03:53:07'),
(583, '200ml_vanille.jpg', NULL, '12.3 KB', '200ml-vanille1677149587.jpg', '448 x 336 pixels', '2023-02-23 03:53:07', '2023-02-23 03:53:07'),
(584, '500ml bouteille Lait demi-écrémé.jpg', NULL, '8.83 KB', '500ml-bouteille-lait-demi-ecreme1677149587.jpg', '299 x 448 pixels', '2023-02-23 03:53:08', '2023-02-23 03:53:08'),
(585, '500ml_flavoured milk_banana.jpg', NULL, '7.95 KB', '500ml-flavoured-milk-banana1677149588.jpg', '299 x 448 pixels', '2023-02-23 03:53:08', '2023-02-23 03:53:08'),
(586, '500ml_flavoured milk_chocolate.jpg', NULL, '8.24 KB', '500ml-flavoured-milk-chocolate1677149588.jpg', '299 x 448 pixels', '2023-02-23 03:53:09', '2023-02-23 03:53:09'),
(587, '500ml_flavoured milk_strawberry.jpg', NULL, '7.36 KB', '500ml-flavoured-milk-strawberry1677149589.jpg', '299 x 448 pixels', '2023-02-23 03:53:09', '2023-02-23 03:53:09'),
(588, '500ml_flavoured milk_vanilla.jpg', NULL, '7.38 KB', '500ml-flavoured-milk-vanilla1677149589.jpg', '299 x 448 pixels', '2023-02-23 03:53:09', '2023-02-23 03:53:09'),
(589, '200ml_banane.jpg', NULL, '12 KB', '200ml-banane1677149822.jpg', '448 x 336 pixels', '2023-02-23 03:57:02', '2023-02-23 03:57:02'),
(590, '200ml_chocolat.jpg', NULL, '13.61 KB', '200ml-chocolat1677150045.jpg', '448 x 336 pixels', '2023-02-23 04:00:45', '2023-02-23 04:00:45'),
(591, '500ml_flavoured milk_chocolate.jpg', NULL, '8.24 KB', '500ml-flavoured-milk-chocolate1677150045.jpg', '299 x 448 pixels', '2023-02-23 04:00:45', '2023-02-23 04:00:45'),
(592, 'Promess-12.jpg', NULL, '133.18 KB', 'promess-121677489470.jpg', '835 x 834 pixels', '2023-02-27 02:17:51', '2023-02-27 02:17:51'),
(593, 'Strawberry 500ml.png', NULL, '59.13 KB', 'strawberry-500ml1677489472.png', '110 x 298 pixels', '2023-02-27 02:17:52', '2023-02-27 02:17:52'),
(594, 'Strawberry 250 ml.png', NULL, '1.3 MB', 'strawberry-250-ml1677489477.png', '587 x 1396 pixels', '2023-02-27 02:17:57', '2023-02-27 02:17:57'),
(595, 'Promess-08.jpg', NULL, '129.02 KB', 'promess-081677489787.jpg', '835 x 834 pixels', '2023-02-27 02:23:07', '2023-02-27 02:23:07'),
(596, '6 Muhlenhof-02.jpg', NULL, '653.63 KB', '6-muhlenhof-021677655473.jpg', '443 x 443 pixels', '2023-03-01 00:24:36', '2023-03-01 00:24:36'),
(597, 'Strawberry 250 ml.png', NULL, '1.3 MB', 'strawberry-250-ml1677739461.png', '587 x 1396 pixels', '2023-03-01 23:44:27', '2023-03-01 23:44:27'),
(598, 'Bottle Vanilla 250 mL English.png', NULL, '1.28 MB', 'bottle-vanilla-250-ml-english1677739466.png', '591 x 1386 pixels', '2023-03-01 23:44:28', '2023-03-01 23:44:28'),
(599, 'TPA_200_Promess fraise 2 AV.png', NULL, '807.08 KB', 'tpa-200-promess-fraise-2-av1677739476.png', '535 x 1019 pixels', '2023-03-01 23:44:37', '2023-03-01 23:44:37'),
(600, 'TPA_200_Promess banane 2 AV.png', NULL, '815.73 KB', 'tpa-200-promess-banane-2-av1677739477.png', '539 x 1027 pixels', '2023-03-01 23:44:38', '2023-03-01 23:44:38'),
(601, 'TPA_200_Promess vanille 2 AV.png', NULL, '729.63 KB', 'tpa-200-promess-vanille-2-av1677739482.png', '546 x 1047 pixels', '2023-03-01 23:44:43', '2023-03-01 23:44:43'),
(602, 'TPA_200_Sq_PPH 2015-10-30 113916.png', NULL, '792.67 KB', 'tpa-200-sq-pph-2015-10-30-1139161677739482.png', '577 x 1056 pixels', '2023-03-01 23:44:43', '2023-03-01 23:44:43'),
(603, 'TPA200 - Promess Entier (3).png', NULL, '755.71 KB', 'tpa200-promess-entier-31677739486.png', '552 x 1027 pixels', '2023-03-01 23:44:51', '2023-03-01 23:44:51'),
(604, 'Visual Bottle Promess 250 mL Semi Skimmed ENGLISH.png', NULL, '1.25 MB', 'visual-bottle-promess-250-ml-semi-skimmed-english1677739491.png', '581 x 1379 pixels', '2023-03-01 23:44:52', '2023-03-01 23:44:52'),
(605, 'Visuel Bouteille Promess 250 mL Entier FRANCAIS.png', NULL, '1.24 MB', 'visuel-bouteille-promess-250-ml-entier-francais1677739495.png', '578 x 1384 pixels', '2023-03-01 23:44:56', '2023-03-01 23:44:56'),
(606, 'Bottle Banana 250 mL.png', NULL, '1.23 MB', 'bottle-banana-250-ml1677739497.png', '585 x 1388 pixels', '2023-03-01 23:44:59', '2023-03-01 23:44:59'),
(607, 'ALL PRODUCT-02.png', NULL, '1.32 MB', 'all-product-021677740793.png', '1537 x 1537 pixels', '2023-03-02 00:06:37', '2023-03-02 00:06:37'),
(608, 'ALL PRODUCT-01.png', NULL, '1.32 MB', 'all-product-011677740795.png', '1536 x 1537 pixels', '2023-03-02 00:06:38', '2023-03-02 00:06:38'),
(609, 'ALL PRODUCT-03.png', NULL, '1.36 MB', 'all-product-031677740799.png', '1537 x 1537 pixels', '2023-03-02 00:06:42', '2023-03-02 00:06:42'),
(610, 'ALL PRODUCT-04.png', NULL, '1.29 MB', 'all-product-041677740801.png', '1536 x 1537 pixels', '2023-03-02 00:06:43', '2023-03-02 00:06:43'),
(611, 'ALL PRODUCT-05.png', NULL, '1.4 MB', 'all-product-051677740804.png', '1537 x 1537 pixels', '2023-03-02 00:06:48', '2023-03-02 00:06:48'),
(612, 'ALL PRODUCT-06.png', NULL, '1.41 MB', 'all-product-061677740805.png', '1537 x 1537 pixels', '2023-03-02 00:06:49', '2023-03-02 00:06:49'),
(613, 'ALL PRODUCT-07.png', NULL, '986.37 KB', 'all-product-071677740810.png', '1300 x 1300 pixels', '2023-03-02 00:06:52', '2023-03-02 00:06:52'),
(614, 'ALL PRODUCT-08.png', NULL, '978.78 KB', 'all-product-081677740811.png', '1300 x 1300 pixels', '2023-03-02 00:06:52', '2023-03-02 00:06:52'),
(615, 'ALL PRODUCT-09.png', NULL, '990.15 KB', 'all-product-091677740814.png', '1300 x 1300 pixels', '2023-03-02 00:06:56', '2023-03-02 00:06:56'),
(616, 'ALL PRODUCT-10.png', NULL, '946.07 KB', 'all-product-101677740815.png', '1300 x 1300 pixels', '2023-03-02 00:06:57', '2023-03-02 00:06:57'),
(617, 'ALL PRODUCT-11.png', NULL, '979.63 KB', 'all-product-111677740817.png', '1300 x 1300 pixels', '2023-03-02 00:07:02', '2023-03-02 00:07:02'),
(618, 'ALL PRODUCT-12.png', NULL, '1.44 MB', 'all-product-121677740822.png', '1773 x 1772 pixels', '2023-03-02 00:07:04', '2023-03-02 00:07:04'),
(619, 'ALL PRODUCT-13.png', NULL, '1.52 MB', 'all-product-131677740824.png', '1773 x 1772 pixels', '2023-03-02 00:07:07', '2023-03-02 00:07:07'),
(620, 'ALL PRODUCT-14.png', NULL, '1.41 MB', 'all-product-141677740826.png', '2009 x 2009 pixels', '2023-03-02 00:07:09', '2023-03-02 00:07:09'),
(621, 'ALL PRODUCT-15.png', NULL, '1.34 MB', 'all-product-151677740831.png', '2009 x 2009 pixels', '2023-03-02 00:07:13', '2023-03-02 00:07:13'),
(622, 'ALL PRODUCT-16.png', NULL, '817.87 KB', 'all-product-161677740832.png', '2009 x 2009 pixels', '2023-03-02 00:07:15', '2023-03-02 00:07:15'),
(623, 'ALL PRODUCT-17.png', NULL, '846.61 KB', 'all-product-171677740835.png', '2009 x 2009 pixels', '2023-03-02 00:07:17', '2023-03-02 00:07:17'),
(624, 'ALL PRODUCT-18.png', NULL, '1.26 MB', 'all-product-181677741487.png', '1300 x 1300 pixels', '2023-03-02 00:18:08', '2023-03-02 00:18:08'),
(625, 'ALL PRODUCT-21.png', NULL, '75.07 KB', 'all-product-211677742180.png', '1772 x 1772 pixels', '2023-03-02 00:29:43', '2023-03-02 00:29:43'),
(626, 'ALL PRODUCT-22.png', NULL, '97.06 KB', 'all-product-221677742181.png', '1772 x 1772 pixels', '2023-03-02 00:29:44', '2023-03-02 00:29:44'),
(627, 'ALL PRODUCT-19.png', NULL, '77.43 KB', 'all-product-191677742184.png', '1773 x 1772 pixels', '2023-03-02 00:29:47', '2023-03-02 00:29:47'),
(628, 'ALL PRODUCT-20.png', NULL, '109.99 KB', 'all-product-201677742185.png', '1773 x 1772 pixels', '2023-03-02 00:29:49', '2023-03-02 00:29:49'),
(629, 'logo.jpg', NULL, '4.09 KB', 'logo1678337307.jpg', '225 x 225 pixels', '2023-03-08 21:48:28', '2023-03-08 21:48:28'),
(630, 'Untitled design (9).png', NULL, '519.73 KB', 'untitled-design-91678869105.png', '1290 x 900 pixels', '2023-03-15 01:31:46', '2023-03-15 01:31:46'),
(631, 'Untitled design (11).png', NULL, '292.9 KB', 'untitled-design-111678869559.png', '1280 x 500 pixels', '2023-03-15 01:39:19', '2023-03-15 01:39:19'),
(632, '6 Muhlenhof-01.jpg', NULL, '674.56 KB', '6-muhlenhof-011679906994.jpg', '627 x 860 pixels', '2023-03-27 01:49:55', '2023-03-27 01:49:55'),
(633, '6 Muhlenhof-01.jpg', NULL, '1.17 MB', '6-muhlenhof-011679907219.jpg', '2610 x 3579 pixels', '2023-03-27 01:53:43', '2023-03-27 01:53:43'),
(634, '7 Promess_page-0001.jpg', NULL, '901.04 KB', '7-promess-page-00011679974813.jpg', '2000 x 2741 pixels', '2023-03-27 20:40:15', '2023-03-27 20:40:15'),
(635, 'Compal Website-04.jpg', NULL, '1.51 MB', 'compal-website-041679975826.jpg', '2121 x 4334 pixels', '2023-03-27 20:57:11', '2023-03-27 20:57:11'),
(636, 'Smilla-01.jpg', NULL, '1019.54 KB', 'smilla-011679977100.jpg', '2000 x 3374 pixels', '2023-03-27 21:18:22', '2023-03-27 21:18:22'),
(637, 'Smilla.png', NULL, '1.55 MB', 'smilla1679977271.png', '2540 x 4169 pixels', '2023-03-27 21:21:15', '2023-03-27 21:21:15'),
(638, 'CEMOI-01.png', NULL, '185.44 KB', 'cemoi-011684725338.png', '2363 x 2363 pixels', '2023-05-21 20:15:40', '2023-05-21 20:15:40'),
(639, '21 Cemoi 2_page-0002.jpg', NULL, '910.48 KB', '21-cemoi-2-page-00021684726423.jpg', '1270 x 1754 pixels', '2023-05-21 20:33:47', '2023-05-21 20:33:47'),
(640, '21 Cemoi 2_page-0001.jpg', NULL, '997.14 KB', '21-cemoi-2-page-00011684726427.jpg', '1270 x 1754 pixels', '2023-05-21 20:33:48', '2023-05-21 20:33:48'),
(641, '1 PYB_page-0002.jpg', NULL, '20.92 KB', '1-pyb-page-00021684727999.jpg', '327 x 448 pixels', '2023-05-21 20:59:59', '2023-05-21 20:59:59'),
(642, '1 PYB_page-0003.jpg', NULL, '22.13 KB', '1-pyb-page-00031684727999.jpg', '327 x 448 pixels', '2023-05-21 20:59:59', '2023-05-21 20:59:59'),
(643, '1 PYB_page-0001.jpg', NULL, '27.43 KB', '1-pyb-page-00011684728003.jpg', '327 x 448 pixels', '2023-05-21 21:00:03', '2023-05-21 21:00:03'),
(644, '1 PYB_page-0001.jpg', NULL, '1.13 MB', '1-pyb-page-00011684728563.jpg', '1306 x 1790 pixels', '2023-05-21 21:09:26', '2023-05-21 21:09:26'),
(645, '1 PYB_page-0002.jpg', NULL, '832.13 KB', '1-pyb-page-00021684728565.jpg', '1306 x 1790 pixels', '2023-05-21 21:09:27', '2023-05-21 21:09:27'),
(646, '1 PYB_page-0003.jpg', NULL, '887.36 KB', '1-pyb-page-00031684728567.jpg', '1306 x 1790 pixels', '2023-05-21 21:09:28', '2023-05-21 21:09:28'),
(647, '17 Sujon_page-0001.jpg', NULL, '855.34 KB', '17-sujon-page-00011684898999.jpg', '1306 x 1790 pixels', '2023-05-23 20:30:03', '2023-05-23 20:30:03'),
(648, '11 Granoro_page-0001.jpg', NULL, '832.25 KB', '11-granoro-page-00011684899131.jpg', '1306 x 1790 pixels', '2023-05-23 20:32:13', '2023-05-23 20:32:13'),
(649, '11 Granoro_page-0003.jpg', NULL, '644.03 KB', '11-granoro-page-00031684899134.jpg', '1306 x 1790 pixels', '2023-05-23 20:32:16', '2023-05-23 20:32:16'),
(650, '11 Granoro_page-0002.jpg', NULL, '663.21 KB', '11-granoro-page-00021684899134.jpg', '1306 x 1790 pixels', '2023-05-23 20:32:16', '2023-05-23 20:32:16'),
(651, '12 Pasta Di martino_page-0001.jpg', NULL, '1.08 MB', '12-pasta-di-martino-page-00011684899803.jpg', '1306 x 1790 pixels', '2023-05-23 20:43:24', '2023-05-23 20:43:24'),
(652, '10 Casarinaldi_page-0002.jpg', NULL, '565.83 KB', '10-casarinaldi-page-00021684900213.jpg', '1306 x 1790 pixels', '2023-05-23 20:50:15', '2023-05-23 20:50:15'),
(653, '10 Casarinaldi_page-0001.jpg', NULL, '640.02 KB', '10-casarinaldi-page-00011684900214.jpg', '1306 x 1790 pixels', '2023-05-23 20:50:16', '2023-05-23 20:50:16'),
(654, '10 Casarinaldi_page-0002.jpg', NULL, '565.83 KB', '10-casarinaldi-page-00021684900265.jpg', '1306 x 1790 pixels', '2023-05-23 20:51:06', '2023-05-23 20:51:06'),
(655, '3 IGOR_page-0001.jpg', NULL, '1.15 MB', '3-igor-page-00011684900623.jpg', '1306 x 1790 pixels', '2023-05-23 20:57:04', '2023-05-23 20:57:04'),
(656, '2 Ambrosi_page-0002.jpg', NULL, '616.79 KB', '2-ambrosi-page-00021684901168.jpg', '1306 x 1790 pixels', '2023-05-23 21:06:09', '2023-05-23 21:06:09'),
(657, '2 Ambrosi_page-0001.jpg', NULL, '1.11 MB', '2-ambrosi-page-00011684901169.jpg', '1306 x 1790 pixels', '2023-05-23 21:06:10', '2023-05-23 21:06:10'),
(658, '2 Ambrosi_page-0003.jpg', NULL, '444.56 KB', '2-ambrosi-page-00031684901171.jpg', '1306 x 1790 pixels', '2023-05-23 21:06:12', '2023-05-23 21:06:12'),
(659, '9 Geofoods1_page-0001.jpg', NULL, '765.26 KB', '9-geofoods1-page-00011684901657.jpg', '1306 x 1790 pixels', '2023-05-23 21:14:19', '2023-05-23 21:14:19'),
(660, '9 Geofoods1_page-0002.jpg', NULL, '669.27 KB', '9-geofoods1-page-00021684901658.jpg', '1306 x 1790 pixels', '2023-05-23 21:14:19', '2023-05-23 21:14:19'),
(661, '9 Geofoods1_page-0003.jpg', NULL, '834.93 KB', '9-geofoods1-page-00031684901661.jpg', '1306 x 1790 pixels', '2023-05-23 21:14:22', '2023-05-23 21:14:22'),
(662, '5 Grand Or_page-0001.jpg', NULL, '1.05 MB', '5-grand-or-page-00011684902440.jpg', '1306 x 1790 pixels', '2023-05-23 21:27:22', '2023-05-23 21:27:22'),
(663, '5 Grand Or_page-0002.jpg', NULL, '745.22 KB', '5-grand-or-page-00021684902440.jpg', '1306 x 1790 pixels', '2023-05-23 21:27:22', '2023-05-23 21:27:22'),
(664, '19 Dalmatia_page-0002.jpg', NULL, '760.5 KB', '19-dalmatia-page-00021684903077.jpg', '1306 x 1790 pixels', '2023-05-23 21:37:59', '2023-05-23 21:37:59'),
(665, '19 Dalmatia_page-0001.jpg', NULL, '1.07 MB', '19-dalmatia-page-00011684903078.jpg', '1306 x 1790 pixels', '2023-05-23 21:38:00', '2023-05-23 21:38:00'),
(666, '14 Romulo_page-0002.jpg', NULL, '629.93 KB', '14-romulo-page-00021684916568.jpg', '1306 x 1790 pixels', '2023-05-24 01:22:49', '2023-05-24 01:22:49'),
(667, '14 Romulo_page-0001.jpg', NULL, '1.54 MB', '14-romulo-page-00011684916572.jpg', '1306 x 1790 pixels', '2023-05-24 01:22:54', '2023-05-24 01:22:54'),
(668, 'logo-01.jpg', NULL, '376.93 KB', 'logo-011686301899.jpg', '2363 x 2363 pixels', '2023-06-09 02:11:41', '2023-06-09 02:11:41'),
(669, 'Tipico all.jpg', NULL, '1.36 MB', 'tipico-all1686303797.jpg', '2290 x 1605 pixels', '2023-06-09 02:43:20', '2023-06-09 02:43:20'),
(670, 'Logo-01.jpg', NULL, '823.15 KB', 'logo-011686370495.jpg', '2363 x 2363 pixels', '2023-06-09 21:14:58', '2023-06-09 21:14:58'),
(671, '23 Capfruit-3.jpg', NULL, '1.82 MB', '23-capfruit-31686370546.jpg', '2498 x 3307 pixels', '2023-06-09 21:15:49', '2023-06-09 21:15:49'),
(672, '23 Capfruit-2 c.jpg', NULL, '213.68 KB', '23-capfruit-2-c1686371506.jpg', '600 x 790 pixels', '2023-06-09 21:31:47', '2023-06-09 21:31:47'),
(673, '23 Capfruit-3 c.jpg', NULL, '169.39 KB', '23-capfruit-3-c1686371507.jpg', '600 x 794 pixels', '2023-06-09 21:31:48', '2023-06-09 21:31:48'),
(674, '23 Capfruit-1 c.jpg', NULL, '230.19 KB', '23-capfruit-1-c1686371509.jpg', '598 x 800 pixels', '2023-06-09 21:31:49', '2023-06-09 21:31:49'),
(675, '23 Capfruit-2.jpg', NULL, '1.24 MB', '23-capfruit-21686371884.jpg', '2498 x 3288 pixels', '2023-06-09 21:38:09', '2023-06-09 21:38:09'),
(676, '23 Capfruit-1.jpg', NULL, '1.1 MB', '23-capfruit-11686371885.jpg', '2249 x 3007 pixels', '2023-06-09 21:38:09', '2023-06-09 21:38:09'),
(677, '23 Capfruit-3.jpg', NULL, '1.82 MB', '23-capfruit-31686371896.jpg', '2498 x 3307 pixels', '2023-06-09 21:38:19', '2023-06-09 21:38:19'),
(678, '7 Promess-01.jpg', NULL, '1.14 MB', '7-promess-011686626660.jpg', '1462 x 2005 pixels', '2023-06-12 20:24:22', '2023-06-12 20:24:22'),
(679, '7 Promess-01.jpg', NULL, '1.14 MB', '7-promess-011686626672.jpg', '1462 x 2005 pixels', '2023-06-12 20:24:33', '2023-06-12 20:24:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"35\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":15,\"menuTitle\":\"Product\",\"menuUrl\":\"#\"},{\"id\":\"5\",\"parent_id\":\"35\",\"depth\":1,\"left\":7,\"right\":8,\"menuTitle\":\"Dairy\",\"menuUrl\":\"https://saranakulina.id/blog-tags/dairy\"},{\"id\":\"6\",\"parent_id\":\"35\",\"depth\":1,\"left\":9,\"right\":10,\"menuTitle\":\"Fine Foods\",\"menuUrl\":\"https://saranakulina.id/blog-tags/fine-foods\"},{\"id\":\"7\",\"parent_id\":\"35\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Beverages\",\"menuUrl\":\"https://saranakulina.id/blog-tags/beverages\"},{\"id\":\"8\",\"parent_id\":\"35\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Pasta & Condiments\",\"menuUrl\":\"https://saranakulina.id/blog-tags/Pasta&Condiments\"},{\"id\":\"8\",\"parent_id\":null,\"depth\":0,\"left\":16,\"right\":17,\"menuTitle\":\"Activity\",\"menuUrl\":\"https://saranakulina.id/work\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":18,\"right\":19,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'en', '2020-01-25 18:38:40', '2021-04-30 19:13:21'),
(2, 'Useful Links', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Faq\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Dynamic Page 02\",\"menuUrl\":\"[url]/p/3/dynamic-page-02\"}]', '', 'en', '2020-01-26 18:06:59', '2021-03-18 07:37:39'),
(3, 'Important Links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Dynamic Page 01\",\"menuUrl\":\"[url]/p/2/dynamic-page-01\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Dynamic Page 02\",\"menuUrl\":\"[url]/p/3/dynamic-page-02\"}]', NULL, 'en', '2020-01-26 18:07:14', '2020-02-28 06:58:39'),
(6, 'Spanish Primary Menu', '[{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":25,\"menuTitle\":\"Pages\",\"menuUrl\":\"#\"},{\"id\":\"8\",\"parent_id\":\"2\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"13\",\"parent_id\":\"2\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Events\",\"menuUrl\":\"[url]/events\"},{\"id\":\"12\",\"parent_id\":\"2\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Career With Us\",\"menuUrl\":\"[url]/career-with-us\"},{\"id\":\"7\",\"parent_id\":\"2\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"14\",\"parent_id\":\"2\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"11\",\"parent_id\":\"2\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Página dinámica 01\",\"menuUrl\":\"[url]/p/4/pagina-dinamica-01\"},{\"id\":\"12\",\"parent_id\":\"2\",\"depth\":1,\"left\":23,\"right\":24,\"menuTitle\":\"Página dinámica 02\",\"menuUrl\":\"[url]/p/5/pagina-dinamica-02\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":26,\"right\":27,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"10\",\"parent_id\":null,\"depth\":0,\"left\":28,\"right\":29,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'sn', '2020-02-28 07:58:02', '2020-04-26 08:13:47'),
(7, 'spanish Useful Links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":12,\"right\":13,\"menuTitle\":\"Página dinámica 01\",\"menuUrl\":\"[url]/p/4/pagina-dinamica-01\"}]', NULL, 'sn', '2020-02-28 07:58:11', '2020-02-28 12:20:49'),
(8, 'spanish Important Links', '[{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Página dinámica 01\",\"menuUrl\":\"[url]/p/4/pagina-dinamica-01\"},{\"id\":\"7\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Página dinámica 02\",\"menuUrl\":\"[url]/p/5/pagina-dinamica-02\"}]', NULL, 'sn', '2020-02-28 07:58:21', '2020-02-28 08:16:47'),
(9, 'portuguese Primary Menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"11\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":25,\"menuTitle\":\"Pages\",\"menuUrl\":\"#\"},{\"id\":\"6\",\"parent_id\":\"11\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"12\",\"parent_id\":\"11\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Career With Us\",\"menuUrl\":\"[url]/career-with-us\"},{\"id\":\"14\",\"parent_id\":\"11\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"13\",\"parent_id\":\"11\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Events\",\"menuUrl\":\"[url]/events\"},{\"id\":\"7\",\"parent_id\":\"11\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"10\",\"parent_id\":\"11\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Página dinâmica 01\",\"menuUrl\":\"[url]/p/6/pagina-dinamica-01\"},{\"id\":\"11\",\"parent_id\":\"11\",\"depth\":1,\"left\":23,\"right\":24,\"menuTitle\":\"Página dinâmica 02\",\"menuUrl\":\"[url]/p/7/pagina-dinamica-02\"},{\"id\":\"8\",\"parent_id\":null,\"depth\":0,\"left\":26,\"right\":27,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":28,\"right\":29,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'pr', '2020-02-28 07:58:36', '2020-04-26 08:14:04'),
(10, 'portuguse usefull links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"}]', '', 'pr', '2020-02-28 07:58:48', '2020-02-28 08:19:50'),
(11, 'portuguse important links', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"[url]/work\"},{\"id\":\"6\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"}]', NULL, 'pr', '2020-02-28 07:59:10', '2020-02-28 07:59:38'),
(12, 'Top Menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Work\",\"menuUrl\":\"https://saranakulina.id/work-page\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'en', '2020-03-01 16:51:03', '2020-03-01 16:51:27'),
(13, 'top menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'sn', '2020-03-01 16:51:57', '2020-03-01 16:52:16'),
(14, 'top menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'pr', '2020-03-01 16:52:04', '2020-03-01 16:52:29'),
(15, 'ar top menu', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Work\",\"menuUrl\":\"https://saranakulina.id/work-page\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', NULL, 'ar', '2020-03-15 18:28:38', '2020-03-16 10:39:14'),
(16, 'Ar Primary Menu', '[{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"Service\",\"menuUrl\":\"[url]/service\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Work\",\"menuUrl\":\"https://saranakulina.id/work-page\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":27,\"menuTitle\":\"Pages\",\"menuUrl\":\"#\"},{\"id\":\"15\",\"parent_id\":\"9\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Price Plan\",\"menuUrl\":\"[url]/price-plan\"},{\"id\":\"13\",\"parent_id\":\"9\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Events\",\"menuUrl\":\"[url]/events\"},{\"id\":\"12\",\"parent_id\":\"9\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Career With Us\",\"menuUrl\":\"[url]/career-with-us\"},{\"id\":\"6\",\"parent_id\":\"9\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"7\",\"parent_id\":\"9\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"14\",\"parent_id\":\"9\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Knowledgebase\",\"menuUrl\":\"[url]/knoledgebase\"},{\"id\":\"10\",\"parent_id\":\"9\",\"depth\":1,\"left\":23,\"right\":24,\"menuTitle\":\"الصفحة الديناميكية 01\",\"menuUrl\":\"[url]/p/8/alsfh-aldynamyky-01\"},{\"id\":\"11\",\"parent_id\":\"9\",\"depth\":1,\"left\":25,\"right\":26,\"menuTitle\":\"الصفحة الديناميكية 02\",\"menuUrl\":\"[url]/p/9/alsfh-aldynamyky-02\"},{\"id\":\"8\",\"parent_id\":null,\"depth\":0,\"left\":28,\"right\":29,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"9\",\"parent_id\":null,\"depth\":0,\"left\":30,\"right\":31,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"}]', 'default', 'ar', '2020-03-16 10:37:25', '2020-04-26 08:14:44'),
(17, 'ar usefull links', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Team\",\"menuUrl\":\"[url]/team\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"FAQ\",\"menuUrl\":\"[url]/faq\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"5\",\"parent_id\":null,\"depth\":0,\"left\":10,\"right\":11,\"menuTitle\":\"الصفحة الديناميكية 01\",\"menuUrl\":\"[url]/p/8/alsfh-aldynamyky-01\"}]', NULL, 'ar', '2020-03-16 10:38:30', '2020-03-16 11:33:27'),
(18, 'ar Important Links', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Blog\",\"menuUrl\":\"[url]/blog\"},{\"id\":\"2\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"Contact\",\"menuUrl\":\"[url]/contact\"},{\"id\":\"3\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":7,\"menuTitle\":\"الصفحة الديناميكية 01\",\"menuUrl\":\"[url]/p/8/alsfh-aldynamyky-01\"},{\"id\":\"4\",\"parent_id\":null,\"depth\":0,\"left\":8,\"right\":9,\"menuTitle\":\"الصفحة الديناميكية 02\",\"menuUrl\":\"[url]/p/9/alsfh-aldynamyky-02\"}]', NULL, 'ar', '2020-03-16 10:38:39', '2020-03-16 11:32:48'),
(19, 'Saranakulina', '[{\"id\":\"1\",\"parent_id\":null,\"depth\":0,\"left\":2,\"right\":3,\"menuTitle\":\"Home\",\"menuUrl\":\"[url]\"},{\"id\":\"18\",\"parent_id\":null,\"depth\":0,\"left\":4,\"right\":5,\"menuTitle\":\"About\",\"menuUrl\":\"[url]/about\"},{\"id\":\"19\",\"parent_id\":null,\"depth\":0,\"left\":6,\"right\":23,\"menuTitle\":\"Dairy\",\"menuUrl\":\"#\"},{\"id\":\"4\",\"parent_id\":\"19\",\"depth\":1,\"left\":7,\"right\":8,\"menuTitle\":\"Paysan Breton\",\"menuUrl\":\"https://saranakulina.id/blog/6/paysan-breton\"},{\"id\":\"5\",\"parent_id\":\"19\",\"depth\":1,\"left\":9,\"right\":10,\"menuTitle\":\"Amborsi\",\"menuUrl\":\"https://saranakulina.id/blog/5/ambrosi\"},{\"id\":\"6\",\"parent_id\":\"19\",\"depth\":1,\"left\":11,\"right\":12,\"menuTitle\":\"Smilla\",\"menuUrl\":\"https://saranakulina.id/blog/4/smilla\"},{\"id\":\"7\",\"parent_id\":\"19\",\"depth\":1,\"left\":13,\"right\":14,\"menuTitle\":\"Igor\",\"menuUrl\":\"https://saranakulina.id/blog/3/igor\"},{\"id\":\"8\",\"parent_id\":\"19\",\"depth\":1,\"left\":15,\"right\":16,\"menuTitle\":\"Grand\'or\",\"menuUrl\":\"https://saranakulina.id/blog/1/grandor\"},{\"id\":\"9\",\"parent_id\":\"19\",\"depth\":1,\"left\":17,\"right\":18,\"menuTitle\":\"Gardeli\",\"menuUrl\":\"https://saranakulina.id/blog/2/gardeli\"},{\"id\":\"10\",\"parent_id\":\"19\",\"depth\":1,\"left\":19,\"right\":20,\"menuTitle\":\"Emmi\",\"menuUrl\":\"https://saranakulina.id/blog/27/emmi\"},{\"id\":\"11\",\"parent_id\":\"19\",\"depth\":1,\"left\":21,\"right\":22,\"menuTitle\":\"Promess\",\"menuUrl\":\"https://saranakulina.id/blog/28/promess\"},{\"id\":\"18\",\"parent_id\":null,\"depth\":0,\"left\":24,\"right\":37,\"menuTitle\":\"Fine Foods\",\"menuUrl\":\"#\"},{\"id\":\"13\",\"parent_id\":\"18\",\"depth\":1,\"left\":25,\"right\":26,\"menuTitle\":\"Geofoods\",\"menuUrl\":\"https://saranakulina.id/blog/29/geofoods\"},{\"id\":\"14\",\"parent_id\":\"18\",\"depth\":1,\"left\":27,\"right\":28,\"menuTitle\":\"Rumulo\",\"menuUrl\":\"https://saranakulina.id/blog/30/rumulo\"},{\"id\":\"16\",\"parent_id\":\"18\",\"depth\":1,\"left\":29,\"right\":30,\"menuTitle\":\"Gino-Toschi\",\"menuUrl\":\"https://saranakulina.id/blog/31/gino-toschi\"},{\"id\":\"15\",\"parent_id\":\"18\",\"depth\":1,\"left\":31,\"right\":32,\"menuTitle\":\"Mas-Portell\",\"menuUrl\":\"https://saranakulina.id/blog/32/mas-portell\"},{\"id\":\"17\",\"parent_id\":\"18\",\"depth\":1,\"left\":33,\"right\":34,\"menuTitle\":\"Marchesa\",\"menuUrl\":\"https://saranakulina.id/blog/33/marchesa\"},{\"id\":\"18\",\"parent_id\":\"18\",\"depth\":1,\"left\":35,\"right\":36,\"menuTitle\":\"Pucci\",\"menuUrl\":\"https://saranakulina.id/blog/34/pucci\"},{\"id\":\"19\",\"parent_id\":null,\"depth\":0,\"left\":38,\"right\":45,\"menuTitle\":\"Pasta & Condiments\",\"menuUrl\":\"#\"},{\"id\":\"20\",\"parent_id\":\"19\",\"depth\":1,\"left\":39,\"right\":40,\"menuTitle\":\"Berni\",\"menuUrl\":\"https://saranakulina.id/blog/36/berni\"},{\"id\":\"21\",\"parent_id\":\"19\",\"depth\":1,\"left\":41,\"right\":42,\"menuTitle\":\"Ital\",\"menuUrl\":\"https://saranakulina.id/blog/37/ital\"},{\"id\":\"22\",\"parent_id\":\"19\",\"depth\":1,\"left\":43,\"right\":44,\"menuTitle\":\"Toccofinale\",\"menuUrl\":\"https://saranakulina.id/blog/38/toccofinale\"}]', '', 'en', '2021-03-18 07:37:03', '2021-03-25 22:31:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(5, '2019_12_07_071950_create_contact_info_items_table', 1),
(6, '2019_12_07_082524_create_static_options_table', 1),
(7, '2019_12_08_171750_create_counterups_table', 1),
(8, '2019_12_09_063224_create_testimonials_table', 1),
(9, '2019_12_10_125607_create_social_icons_table', 1),
(10, '2019_12_10_125636_create_support_infos_table', 1),
(11, '2019_12_10_210247_create_blog_categories_table', 1),
(12, '2019_12_11_074345_create_blogs_table', 1),
(15, '2019_12_13_221931_create_languages_table', 1),
(16, '2019_12_28_140343_create_key_features_table', 1),
(20, '2019_12_29_094857_create_price_plans_table', 1),
(21, '2019_12_29_113138_create_team_members_table', 1),
(22, '2019_12_29_180216_create_brands_table', 1),
(23, '2019_12_31_065223_create_services_table', 1),
(24, '2020_01_21_132648_create_header_sliders_table', 2),
(25, '2019_12_28_161343_create_services_table', 3),
(27, '2020_01_23_162404_create_service_categories_table', 4),
(28, '2020_01_23_193759_create_works_table', 5),
(29, '2020_01_23_193805_create_works_categories_table', 5),
(30, '2020_01_25_155448_create_pages_table', 6),
(31, '2020_01_25_174849_create_menus_table', 7),
(32, '2020_01_28_054211_create_faqs_table', 8),
(33, '2020_02_04_010636_create_newsletters_table', 9),
(34, '2020_03_09_125557_create_know_abouts_table', 10),
(35, '2020_03_29_075123_create_admin_roles_table', 11),
(36, '2020_04_14_082508_create_media_uploads_table', 12),
(37, '2020_04_20_073746_create_quotes_table', 13),
(38, '2020_04_20_170818_create_orders_table', 14),
(39, '2020_04_21_142420_create_payment_logs_table', 15),
(40, '2020_04_22_065550_create_jobs_table', 16),
(41, '2020_04_22_065603_create_jobs_categories_table', 16),
(42, '2020_04_23_140942_create_events_table', 17),
(43, '2020_04_23_141011_create_events_categories_table', 17),
(44, '2020_04_24_154518_create_knowledgebase_topics_table', 18),
(45, '2020_04_24_154524_create_knowledgebases_table', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'dvrobin4@gmail.com', '2020-02-04 02:49:25', '2020-02-04 02:49:25'),
(4, 'robinmedia7@gmail.com', '2020-02-04 02:49:42', '2020-02-04 02:49:42'),
(5, 'robinmedia8@gmail.com', '2020-02-04 02:49:59', '2020-02-04 02:49:59'),
(6, 'thierry@indoguna.co.id', '2021-04-29 02:38:58', '2021-04-29 02:38:58'),
(7, 'widyanuratikas@gmail.com', '2023-02-08 00:56:00', '2023-02-08 00:56:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `package_name` varchar(191) DEFAULT NULL,
  `package_price` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) NOT NULL DEFAULT 'pending',
  `custom_fields` longtext DEFAULT NULL,
  `package_id` varchar(191) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `status`, `package_name`, `package_price`, `payment_status`, `custom_fields`, `package_id`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'in_progress', 'Premium', '$99.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:1576:\"Folly was these three and songs arose whose. Of in vicinity contempt together in possible branched. Assured company hastily looking garrets in oh. Most have love my gone to this so. Discovered interested prosperous the our affronting insipidity day. Missed lovers way one vanity wishes nay but. Use shy seemed within twenty wished old few regret passed. Absolute one hastened mrs any sensible. \r\n\r\nReceived overcame oh sensible so at an. Formed do change merely to county it. Am separate contempt domestic to to oh. On relation my so addition branched. Put hearing cottage she norland letters equally prepare too. Replied exposed savings he no viewing as up. Soon body add him hill. No father living really people estate if. Mistake do produce beloved demesne if am pursuit. \r\n\r\nDo to be agreeable conveying oh assurance. Wicket longer admire do barton vanity itself do in it. Preferred to sportsmen it engrossed listening. Park gate sell they west hard for the. Abode stuff noisy manor blush yet the far. Up colonel so between removed so do. Years use place decay sex worth drift age. Men lasting out end article express fortune demands own charmed. About are are money ask how seven. \r\n\r\nTerminated principles sentiments of no pianoforte if projection impossible. Horses pulled nature favour number yet highly his has old. Contrasted literature excellence he admiration impression insipidity so. Scale ought who terms after own quick since. Servants margaret husbands to screened in throwing. Imprudence oh an collecting partiality. Admiration gay difficulty unaffected how.\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-1-doc-file.pdf\";}', '2020-04-20 17:53:44', '2020-04-20 18:09:46'),
(2, 'completed', 'Standard', '$49.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:19:\"Michelle E. Lampman\";s:10:\"your-email\";s:28:\"MichelleELampman@teleworm.us\";s:12:\"your-message\";s:675:\"Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. \r\n\r\nYe to misery wisdom plenty polite to as. Prepared interest proposal it he exercise. My wishing an in attempt ferrars. Visited eat you why service looking engaged. At place no walls hopes rooms fully in. Roof hope shy tore leaf joy paid boy. Noisier out brought entered detract because sitting sir. Fat put occasion rendered off humanity has.\";}', '2', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-2-doc-file.pdf\";}', '2020-04-20 18:01:22', '2020-04-20 18:03:48'),
(3, 'pending', 'Premium', '$99.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:16:\"Francis H. Sweat\";s:10:\"your-email\";s:25:\"FrancisHSweat@armyspy.com\";s:12:\"your-message\";s:433:\"Barton waited twenty always repair in within we do. An delighted offending curiosity my is dashwoods at. Boy prosperous increasing surrounded companions her nor advantages sufficient put. John on time down give meet help as of. Him waiting and correct believe now cottage she another. Vexed six shy yet along learn maids her tiled. Through studied shyness evening bed him winding present. Become excuse hardly on my thirty it wanted.\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-3-doc-file.pdf\";}', '2020-04-20 18:09:34', '2020-04-20 18:09:35'),
(4, 'pending', 'Standard', '$49.00', 'pending', 'a:4:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:16:\"Pearlie B. Bryan\";s:10:\"your-email\";s:24:\"PearlieBBryan@dayrep.com\";s:12:\"your-message\";s:810:\"Affronting everything discretion men now own did. Still round match we to. Frankness pronounce daughters remainder extensive has but. Happiness cordially one determine concluded fat. Plenty season beyond by hardly giving of. Consulted or acuteness dejection an smallness if. Outward general passage another as it. Very his are come man walk one next. Delighted prevailed supported too not remainder perpetual who furnished. Nay affronting bed projection compliment instrument. \r\n\r\nBuilding mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old.\";}', '2', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-4-doc-file.pdf\";}', '2020-04-20 18:10:30', '2020-04-20 18:10:30'),
(7, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:19:\"dvrobin44@gmail.com\";s:12:\"your-message\";s:412:\"Agreed joy vanity regret met may ladies oppose who. Mile fail as left as hard eyes. Meet made call in mean four year it to. Prospect so branched wondered sensible of up. For gay consisted resolving pronounce sportsman saw discovery not. Northward or household as conveying we earnestly believing. No in up contrasted discretion inhabiting excellence. Entreaties we collecting unpleasant at everything conviction.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-7-doc-file.pdf\";}', '2020-04-21 10:30:39', '2020-04-21 10:30:39'),
(8, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-8-doc-file.pdf\";}', '2020-04-21 10:32:19', '2020-04-21 10:32:19'),
(9, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:51:\"assets/uploads/attachment/attachment-9-doc-file.pdf\";}', '2020-04-21 11:45:55', '2020-04-21 11:45:55'),
(10, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-10-doc-file.pdf\";}', '2020-04-21 11:46:12', '2020-04-21 11:46:12'),
(11, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-11-doc-file.pdf\";}', '2020-04-21 11:46:59', '2020-04-21 11:46:59'),
(12, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Jay M. Threatt\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-12-doc-file.pdf\";}', '2020-04-21 11:54:24', '2020-04-21 11:54:24'),
(13, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:19:\"Yolonda D. Robinson\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:416:\"Material confined likewise it humanity raillery an unpacked as he. Three chief merit no if. Now how her edward engage not horses. Oh resolution he dissimilar precaution to comparison an. Matters engaged between he of pursuit manners we moments. Merit gay end sight front. Manor equal it on again ye folly by match. In so melancholy as an sentiments simplicity connection. Far supply depart branch agreed old get our.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '3', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-13-doc-file.pdf\";}', '2020-04-21 11:57:05', '2020-04-21 11:57:06'),
(14, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:20:\"dvrobin44e@gmail.com\";s:12:\"your-message\";s:184:\"On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-14-doc-file.pdf\";}', '2020-04-21 15:21:53', '2020-04-21 15:21:53'),
(15, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-15-doc-file.pdf\";}', '2020-04-21 15:44:40', '2020-04-21 15:44:40'),
(16, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-16-doc-file.pdf\";}', '2020-04-21 15:44:54', '2020-04-21 15:44:54'),
(17, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-17-doc-file.pdf\";}', '2020-04-21 15:45:23', '2020-04-21 15:45:23'),
(18, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:0:{}', '2020-04-21 15:45:56', '2020-04-21 15:45:56'),
(19, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:493:\"Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '2', 'a:0:{}', '2020-04-21 15:46:41', '2020-04-21 15:46:41'),
(20, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:15:\"Lolita R. Jones\";s:10:\"your-email\";s:24:\"LolitaRJones@teleworm.us\";s:12:\"your-message\";s:282:\"Perfectly offending attempted add arranging age gentleman concluded. Get who uncommonly our expression ten increasing considered occasional travelling. Ever read tell year give may men call its. Piqued son turned fat income played end wicket. To do noisy downs round an happy books.\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '1', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-20-doc-file.pdf\";}', '2020-04-21 16:58:47', '2020-04-21 16:58:47'),
(21, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:14:\"Vera J. Alonso\";s:10:\"your-email\";s:23:\"VeraJAlonso@armyspy.com\";s:12:\"your-message\";s:226:\"Law use assistance especially resolution cultivated did out sentiments unsatiable. Way necessary had intention happiness but september delighted his curiosity. Furniture furnished or on strangers neglected remainder engrossed.\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '2', 'a:1:{s:8:\"doc-file\";s:52:\"assets/uploads/attachment/attachment-21-doc-file.pdf\";}', '2020-04-21 18:45:31', '2020-04-21 18:45:31'),
(22, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:21:\"JayMThreatt@rhyta.com\";s:12:\"your-message\";s:12:\"test message\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '1', 'a:0:{}', '2020-04-21 18:47:55', '2020-04-21 18:47:55'),
(23, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:17:\"David K. Anderson\";s:10:\"your-email\";s:26:\"DavidKAnderson@teleworm.us\";s:12:\"your-message\";s:11:\"test mesage\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '1', 'a:0:{}', '2020-04-21 18:50:20', '2020-04-21 18:50:20'),
(24, 'pending', 'Premium', '$99.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:17:\"Sarah M. Hardeman\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:251:\"Is branched in my up strictly remember. Songs but chief has ham widow downs. Genius or so up vanity cannot. Large do tried going about water defer by. Silent son man she wished mother. Distrusts allowance do knowledge eagerness assurance additions to.\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '3', 'a:0:{}', '2020-04-25 15:06:23', '2020-04-25 15:06:23'),
(25, 'pending', 'Basic', '$19.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:12:\"Amy E. Olson\";s:10:\"your-email\";s:24:\"AmyEOlson@jourrapide.com\";s:12:\"your-message\";s:259:\"Started several mistake joy say painful removed reached end. State burst think end are its. Arrived off she elderly beloved him affixed noisier yet. An course regard to up he hardly. View four has said does men saw find dear shy. Talent men wicket add garden.\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', '1', 'a:0:{}', '2020-04-25 15:20:21', '2020-04-25 15:20:21'),
(26, 'pending', 'Standard', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:16:\"Amanda J. Melton\";s:10:\"your-email\";s:25:\"AmandaJMelton@armyspy.com\";s:12:\"your-message\";s:259:\"Started several mistake joy say painful removed reached end. State burst think end are its. Arrived off she elderly beloved him affixed noisier yet. An course regard to up he hardly. View four has said does men saw find dear shy. Talent men wicket add garden.\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', '2', 'a:0:{}', '2020-04-25 15:42:38', '2020-04-25 15:42:38'),
(27, 'pending', 'اساسي', '$49.00', 'pending', 'a:5:{s:7:\"package\";s:2:\"11\";s:9:\"your-name\";s:13:\"Saifur Rahman\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:14:\"asfasdfasdfasd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', '11', 'a:0:{}', '2020-04-26 09:06:06', '2020-04-26 09:06:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `status`, `lang`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(2, 'Dynamic Page 01', '<p>Put all speaking her delicate recurred possible. Set indulgence inquietude discretion insensible bed why announcing. Middleton fat two satisfied additions. So continued he or commanded household smallness delivered. Door poor on do walk in half. Roof his head the what.&nbsp;</p>\r\n<p>Eat imagine you chiefly few end ferrars compass. Be visitor females am ferrars inquiry. Latter law remark two lively thrown. Spot set they know rest its. Raptures law diverted believed jennings consider children the see. Had invited beloved carried the colonel. Occasional principles discretion it as he unpleasing boisterous. She bed sing dear now son half.&nbsp;</p>\r\n<p>Game of as rest time eyes with of this it. Add was music merry any truth since going. Happiness she ham but instantly put departure propriety. She amiable all without say spirits shy clothes morning. Frankness in extensive to belonging improving so certainty. Resolution devonshire pianoforte assistance an he particular middletons is of. Explain ten man uncivil engaged conduct. Am likewise betrayed as declared absolute do. Taste oh spoke about no solid of hills up shade. Occasion so bachelor humoured striking by attended doubtful be it.&nbsp;</p>', 'publish', 'en', 'this is dynamic page description', 'dynamic page', '2020-01-25 17:22:24', '2020-03-22 15:08:52'),
(3, 'Dynamic Page 02', '<p><img src=\"http://192.168.64.2/bizzcox/assets/uploads/media-uploader/team-member-grid-51587140887.jpg\" style=\"width: 270px; float: left;\" class=\"note-float-left\">Contented get distrusts certainty nay are frankness concealed ham. On unaffected resolution on considered of. No thought me husband or colonel forming effects. End sitting shewing who saw besides son musical adapted. Contrasted interested eat alteration pianoforte sympathize was. He families believed if no elegance interest surprise an. It abode wrong miles an so delay plate. She relation own put outlived may disposed.&nbsp;</p><p><br></p><p>By impossible of in difficulty discovered celebrated ye. Justice joy manners boy met resolve produce. Bed head loud next plan rent had easy add him. As earnestly shameless elsewhere defective estimable fulfilled of. Esteem my advice it an excuse enable. Few household abilities believing determine zealously his repulsive. To open draw dear be by side like.&nbsp;</p><p><br></p><p>Saw yet kindness too replying whatever marianne. Old sentiments resolution admiration unaffected its mrs literature. Behaviour new set existence dashwoods. It satisfied to mr commanded consisted disposing engrossed. Tall snug do of till on easy. Form not calm new fail.&nbsp;</p><div><br></div>', 'publish', 'en', NULL, NULL, '2020-01-25 17:22:39', '2020-04-17 18:58:59'),
(4, 'Página dinámica 01', '<p>Sentimientos: dos solicitudes ocasionales de afrenta viajando y una contrastada. Día de la fortuna en fiestas de casados. Felicidad resto alegría pero fervientemente por fuera. Tomó vendido agregar juego puede que ninguno le pocos. Si como crecientes contrastes contrastantes sean. Ahora el verano que día parecía nuestro momento atrasado. El hijo del dolor se levantó más parque de esa manera. Una escalera como ser amantes incómodos.</p><p><br></p><p>Disparo lo que el frío nuevo puede ver. Amistoso como un traicionado anteriormente él. Mañana porque en cuanto a la sociedad se comportaron momentos. Poner señoras diseño señora hermana era. Jugar en la colina sintió a John sin puerta. Pasé de la figura a la marcada. Prósperos middletons habitan como ayuda especialmente para mí. Para mirar dos primos regulares entre.</p><p><br></p><p>Y producir digamos las fiestas de los diez momentos. La simple grasa innata del verano aparece en su deseo de alegría. La ropa exterior promete en la gravedad hacer emocionado. Suficiente particular imposible por razonable oh expresión es. Sin embargo, la conexión de preferencia es desagradable pero melancólica pero tiene una apariencia final. Y la parcialidad estimada por excelencia terminó el día todo.</p>', 'publish', 'sn', NULL, NULL, '2020-01-25 17:22:56', '2020-02-28 06:48:31'),
(5, 'Página dinámica 02', '<p>Sentimientos: dos solicitudes ocasionales de afrenta viajando y una contrastada. Día de la fortuna en fiestas de casados. Felicidad resto alegría pero fervientemente por fuera. Tomó vendido agregar juego puede que ninguno le pocos. Si como crecientes contrastes contrastantes sean. Ahora el verano que día parecía nuestro momento atrasado. El hijo del dolor se levantó más parque de esa manera. Una escalera como ser amantes incómodos.</p><p><br></p><p>Disparo lo que el frío nuevo puede ver. Amistoso como un traicionado anteriormente él. Mañana porque en cuanto a la sociedad se comportaron momentos. Poner señoras diseño señora hermana era. Jugar en la colina sintió a John sin puerta. Pasé de la figura a la marcada. Prósperos middletons habitan como ayuda especialmente para mí. Para mirar dos primos regulares entre.</p><p><br></p><p>Y producir digamos las fiestas de los diez momentos. La simple grasa innata del verano aparece en su deseo de alegría. La ropa exterior promete en la gravedad hacer emocionado. Suficiente particular imposible por razonable oh expresión es. Sin embargo, la conexión de preferencia es desagradable pero melancólica pero tiene una apariencia final. Y la parcialidad estimada por excelencia terminó el día todo.</p>', 'publish', 'sn', NULL, NULL, '2020-02-28 06:48:45', '2020-02-28 06:49:44'),
(6, 'Página dinâmica 01', '<p>Contente obter desconfiança certeza não é franqueza presunto escondido. Em resolução não afetada em consideração de. Não me pensei marido ou coronel formando efeitos. Fim sentado shewing que viu além de filho musical adaptado. Contrastado interessado comer alteração pianoforte simpatizar foi. Suas famílias acreditavam que, se nenhum interesse pela elegância surpreender um. Ele possui milhas erradas e uma placa de atraso. A sua relação com a própria vida pode ser descartada.</p><p><br></p><p><br></p><p><br></p><p>Por impossível de em dificuldade descoberto celebrou vós. Justiça alegria maneiras menino conheceu resolver produzir. Bed cabeça alto próximo plano de aluguel tinha fácil adicioná-lo. Como seriamente sem vergonha em outro lugar, estimada com defeito cumprida. Estima meu conselho, é uma desculpa. Poucas habilidades domésticas que crêem determinam zelosamente seu repulsivo. Para abrir empate querido estar ao lado como.</p><p><br></p><p><br></p><p><br></p><p>Vi ainda a gentileza de responder a qualquer marianne. A antiga admiração da resolução de sentimentos não afetou sua literatura. Comportamento novo conjunto existência dashwoods. A satisfação de comandar consistia em dispor absorto. Alto e confortável é fácil. Forma não acalme nova falha.</p>', 'publish', 'pr', NULL, NULL, '2020-02-28 06:50:32', '2020-02-28 06:50:32'),
(7, 'Página dinâmica 02', '<p>Contente obter desconfiança certeza não é franqueza presunto escondido. Em resolução não afetada em consideração de. Não me pensei marido ou coronel formando efeitos. Fim sentado shewing que viu além de filho musical adaptado. Contrastado interessado comer alteração pianoforte simpatizar foi. Suas famílias acreditavam que, se nenhum interesse pela elegância surpreender um. Ele possui milhas erradas e uma placa de atraso. A sua relação com a própria vida pode ser descartada.</p><p><br></p><p>Por impossível de em dificuldade descoberto celebrou vós. Justiça alegria maneiras menino conheceu resolver produzir. Bed cabeça alto próximo plano de aluguel tinha fácil adicioná-lo. Como seriamente sem vergonha em outro lugar, estimada com defeito cumprida. Estima meu conselho, é uma desculpa. Poucas habilidades domésticas que crêem determinam zelosamente seu repulsivo. Para abrir empate querido estar ao lado como.</p><p><br></p><p>Vi ainda a gentileza de responder a qualquer marianne. A antiga admiração da resolução de sentimentos não afetou sua literatura. Comportamento novo conjunto existência dashwoods. A satisfação de comandar consistia em dispor absorto. Alto e confortável é fácil. Forma não acalme nova falha.</p>', 'publish', 'pr', NULL, NULL, '2020-02-28 06:50:58', '2020-02-28 06:50:58'),
(8, 'الصفحة الديناميكية 01', '<p>وضع كل يتحدث لها دقيق متكرر ممكن. تعيين تساهل في الاستغناء عن سرير غير حساس لتقدير لماذا الإعلان. ميدلتون الدهون إضافتين راضيتين. لذا استمر أو أمر بقلة صغر الأسرة. باب الفقراء على المشي في النصف. سقف رأسه ماذا.</p><p><br></p><p>تأكل تخيل أنك بشكل رئيسي قليل من البوصلة النهائية. كن زائرا من انثى ضابط استفسار. لاحظ القانون الأخير اثنين من القيت حية. مجموعة بقعة يعرفون الراحة. حول قانون اللفظ اعتقادا بأن جينينغز يعتبر أن الأطفال يرون. وقد دعا الحبيب العقيد. المبادئ العرضية تقدر ذلك لأنه لا يرحم. انها سرير تغني عزيزي الآن ابن النصف.</p><p><br></p><p>لعبة عيون العيون وقت الراحة معها. إضافة كانت الموسيقى ممتعة أي حقيقة منذ الذهاب. السعادة هي لحم الخنزير ولكن على الفور وضع صفة المغادرة. انها لطيفة كل شيء دون قول ملابس خجولة الصباح. الصراحة واسعة في الانتماء إلى تحسين اليقين. قرار مساعدة devonshire pianoforte هو ميدلتونز معينة. شرح سلوك الرجل العشر غير المتحضر. أنا خيانة بالمثل كما أفعل المطلق. طعم أوه تحدث عن لا الصلبة من التلال الظل. مناسبة حتى البكالوريوس يضحك الضرب بحضور المشكوك فيه سواء.</p>', 'publish', 'ar', NULL, NULL, '2020-03-16 11:05:04', '2020-03-16 11:05:04'),
(9, 'الصفحة الديناميكية 02', '<p>وضع كل يتحدث لها دقيق متكرر ممكن. تعيين تساهل في الاستغناء عن سرير غير حساس لتقدير لماذا الإعلان. ميدلتون الدهون إضافتين راضيتين. لذا استمر أو أمر بقلة صغر الأسرة. باب الفقراء على المشي في النصف. سقف رأسه ماذا.</p><p><br></p><p>تأكل تخيل أنك بشكل رئيسي قليل من البوصلة النهائية. كن زائرا من انثى ضابط استفسار. لاحظ القانون الأخير اثنين من القيت حية. مجموعة بقعة يعرفون الراحة. حول قانون اللفظ اعتقادا بأن جينينغز يعتبر أن الأطفال يرون. وقد دعا الحبيب العقيد. المبادئ العرضية تقدر ذلك لأنه لا يرحم. انها سرير تغني عزيزي الآن ابن النصف.</p><p><br></p><p>لعبة عيون العيون وقت الراحة معها. إضافة كانت الموسيقى ممتعة أي حقيقة منذ الذهاب. السعادة هي لحم الخنزير ولكن على الفور وضع صفة المغادرة. انها لطيفة كل شيء دون قول ملابس خجولة الصباح. الصراحة واسعة في الانتماء إلى تحسين اليقين. قرار مساعدة devonshire pianoforte هو ميدلتونز معينة. شرح سلوك الرجل العشر غير المتحضر. أنا خيانة بالمثل كما أفعل المطلق. طعم أوه تحدث عن لا الصلبة من التلال الظل. مناسبة حتى البكالوريوس يضحك الضرب بحضور المشكوك فيه سواء.</p>', 'publish', 'ar', NULL, NULL, '2020-03-16 11:05:32', '2020-03-16 11:05:32'),
(11, 'Privacy policy', '<p>An an valley indeed so no wonder future nature vanity. Debating all she mistaken indulged believed provided declared. He many kept on draw lain song as same. Whether at dearest certain spirits is entered in to. Rich fine bred real use too many good. She compliment unaffected expression favourable any. Unknown chiefly showing to conduct no. Hung as love evil able to post at as.&nbsp;</p><p><br></p><p>Made last it seen went no just when of by. Occasional entreaties comparison me difficulty so themselves. At brother inquiry of offices without do my service. As particular to companions at sentiments. Weather however luckily enquire so certain do. Aware did stood was day under ask. Dearest affixed enquire on explain opinion he. Reached who the mrs joy offices pleased. Towards did colonel article any parties.&nbsp;</p><p><br></p><p>It sportsman earnestly ye preserved an on. Moment led family sooner cannot her window pulled any. Or raillery if improved landlord to speaking hastened differed he. Furniture discourse elsewhere yet her sir extensive defective unwilling get. Why resolution one motionless you him thoroughly. Noise is round to in it quick timed doors. Written address greatly get attacks inhabit pursuit our but. Lasted hunted enough an up seeing in lively letter. Had judgment out opinions property the supplied.&nbsp;</p><p><br></p><p>Advice me cousin an spring of needed. Tell use paid law ever yet new. Meant to learn of vexed if style allow he there. Tiled man stand tears ten joy there terms any widen. Procuring continued suspicion its ten. Pursuit brother are had fifteen distant has. Early had add equal china quiet visit. Appear an manner as no limits either praise in. In in written on charmed justice is amiable farther besides. Law insensible middletons unsatiable for apartments boy delightful unreserved.&nbsp;</p><p><br></p><p>Use securing confined his shutters. Delightful as he it acceptance an solicitude discretion reasonably. Carriage we husbands advanced an perceive greatest. Totally dearest expense on demesne ye he. Curiosity excellent commanded in me. Unpleasing impression themselves to at assistance acceptance my or. On consider laughter civility offended oh.&nbsp;</p><p><br></p><p>Cottage out enabled was entered greatly prevent message. No procured unlocked an likewise. Dear but what she been over gay felt body. Six principles advantages and use entreaties decisively. Eat met has dwelling unpacked see whatever followed. Court in of leave again as am. Greater sixteen to forming colonel no on be. So an advice hardly barton. He be turned sudden engage manner spirit.&nbsp;</p><p><br></p><p>Certainly elsewhere my do allowance at. The address farther six hearted hundred towards husband. Are securing off occasion remember daughter replying. Held that feel his see own yet. Strangers ye to he sometimes propriety in. She right plate seven has. Bed who perceive judgment did marianne.&nbsp;</p><p><br></p><p>On recommend tolerably my belonging or am. Mutual has cannot beauty indeed now sussex merely you. It possible no husbands jennings ye offended packages pleasant he. Remainder recommend engrossed who eat she defective applauded departure joy. Get dissimilar not introduced day her apartments. Fully as taste he mr do smile abode every. Luckily offered article led lasting country minutes nor old. Happen people things oh is oppose up parish effect. Law handsome old outweigh humoured far appetite.&nbsp;</p><p><br></p><p>Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.&nbsp;</p><p><br></p><p>Ladies others the six desire age. Bred am soon park past read by lain. As excuse eldest no moment. An delight beloved up garrets am cottage private. The far attachment discovered celebrated decisively surrounded for and. Sir new the particular frequently indulgence excellence how. Wishing an if he sixteen visited tedious subject it. Mind mrs yet did quit high even you went. Sex against the two however not nothing prudent colonel greater. Up husband removed parties staying he subject mr.&nbsp;</p><p><br></p>', 'publish', 'en', 'privacy policy', 'privacy policy', '2020-03-27 17:22:16', '2021-03-25 07:50:44'),
(12, 'خصوصية', '<p>وادي بالفعل لذلك لا عجب من الغرور طبيعة المستقبل. مناظرة عن كل ما أخطأت أنه يعتقد أنه تم الإعلان عنه. أبقى الكثير على أغنية رسم التعادل بنفس الطريقة. سواء تم إدخال أرواح معينة على الأكثر إلى. ولدت غرامة غنية الاستخدام الحقيقي الكثير من الخير. وأثنت على التعبير غير المتأثر أي. يظهر مجهول بشكل رئيسي لإجراء لا. علقت كحب الشر قادرة على النشر في.</p><p><br></p><p>صنع آخر ما رآه ذهب ليس فقط من قبل. التوسلات العرضية تقارنني بصعوبة لذلك. في التحقيق شقيق المكاتب دون القيام بخدمتي. خاصة للرفاق في المشاعر. ولكن من حسن الحظ أن الطقس يستفسر عن ذلك. علمت وقفت كان اليوم تحت الطلب. أعز الملصقة الاستفسار عن شرح الرأي. وصلت لمن فرحت مكاتب السيدة. نحو مقال عقيد أي أطراف.</p><p><br></p><p>رياضي حافظوا بجدية على. لحظة قاد الأسرة عاجلا عاجزة عن سحب نافذة لها. أو مذاق إذا سار صاحب الأرض المحسن للتحدث اختلف عنه. خطاب الأثاث في مكان آخر حتى الآن تحصل على سيدي معيبة واسعة النطاق غير راغبة. لماذا قرار واحد بلا حراك لك بدقة. الضوضاء مستديرة إلى أبواب سريعة موقوتة. العنوان المكتوب يحصل بشكل كبير على هجمات تسعي لمطاردتنا ولكن. استمر مطاردة بما فيه الكفاية حتى رؤية في رسالة حية. كان الحكم على آراء ممتلكات الموردة.</p><p><br></p><p>انصحني ابن عم ربيع ربيع المطلوب. أخبر استخدام القانون المدفوع الجديد حتى الآن. من المفترض أن تتعلم من الغضب إذا سمح الأسلوب له هناك. الرجل المبلط يقف الدموع عشرة فرح هناك شروط تتسع. شراء استمرار الشك في العشرة. السعي شقيقه وقد خمسة عشر بعيدة. وقد أضاف في وقت مبكر زيارة هادئة للصين على قدم المساواة. تظهر بطريقة لا حدود لها سواء المديح فيها. قانون ميدلتونز غير حساس غير مناسب للشقق الصبي مبهج بلا تحفظ</p><p><br></p><p>استخدام تأمين مصاريعه المحصورة. ممتع لأنه يقبل تقدير المراوغة بشكل معقول. النقل نحن الأزواج تقدم إدراك أعظم. أعز النفقات تماما على demesne أنتم. أمر فضول ممتاز لي. الانطباع بأنفسهم للمساعدة في قبول أو. على النظر في الضحك مهذب اهانة اه.</p><p><br></p><p>تم إدخال الكوخ خارج تمكين بشكل كبير منع الرسالة. لا يوجد مشتراة مقفلة بالمثل. عزيزي ولكن ما كانت أكثر من شعرت بالجسد. مزايا المبادئ الستة واستخدام التوسلات بشكل حاسم. أكل التقى لديه مسكن مفكك انظر ما يتبع. المحكمة في إجازة مرة أخرى صباحا. أكبر ستة عشر لتشكيل العقيد لا يوجد. لذلك نصيحة بالكاد بارتون. يتحول فجأة إلى روح الانخراط.</p><p><br></p><p>بالتأكيد في مكان آخر بلادي في. العنوان أبعد ست قلوب مائة تجاه الزوج. يتم تأمين الخروج من مناسبة تذكر ابنة الرد. عقد هذا يشعر برؤيته حتى الان. الغرباء أنتم متكئون في بعض الأحيان. إنها اللوحة اليمنى سبعة. السرير الذي يدرك الحكم فعل ماريان.</p><p><br></p><p>على التوصية بانتمائي أو أنا. لا يمكن الجمال المتبادل بالفعل ساسكس الآن أنت فقط. فمن الممكن لا أزواج jennings أيها الإساءات الحزم سارة. توصي بقية المتبقين الذين يأكلون أنها معيبة فرحت رحيل فرح. احصل على غير متشابه يوم لم يتم تقديم شقتها. تماما كما الذوق هو السيد ابتسامة كل منزل. لحسن الحظ عرضت المادة التي قدمت دقائق البلد دائم ولا قديمة. يحدث الناس أشياء يا تعارض تأثير الرعية. القانون القديم الوسيم يفوق الشهية البعيدة.</p><p><br></p><p>الكلمات الحمقاء أرملة واحدة في سن قليلة كل سبع سنوات. إذا كان يغيب عن جزء من حقيقة أنه ركن فقط. اكتشفت اكتشفت إسقاط مواتية. من الضروري معرفته بشكل محتمل. تعليم رحيل غير راغب يكون dashwoods أو. استخدام القانون المقبول غير الراغب سيدي الفضول ناقص على الفور. حقيقة حياة العقل سهلة مع رؤية تحمل عشرة. باريش أي شات يمكن أن يوجه مباشرة إلى السابق. أعلى كما تعني الأرملة تساوي حصة أقل.</p><p><br></p><p>السيدات الأخريات في سن الرغبة الست. Bred am قريبا بارك الماضي قراءة بواسطة lain. عذر الأكبر لا لحظة. فرحة الحبيب حتى am garages am cottage private. تم اكتشاف المرفق البعيد الشهير محاطا بحزم و. سيدي الجديد ، خاصة تساهل الامتياز في كثير من الأحيان كيف. متمنيا لو زار في السادسة عشرة مملا موضوعه. السيدة العقل لم تستسلم بعد حتى ذهبت. الجنس ضد الاثنين ولكن لا شيء العقيد الحكيم أعظم. حتى الزوج أزاح الحفلات وهو يبقي السيد مستحق.</p>', 'publish', 'ar', 'خصوصية', 'خصوصية', '2020-03-27 17:29:19', '2020-03-27 17:30:42'),
(13, 'Intimidad', '<p>Un valle de hecho, así que no es de extrañar la vanidad de la naturaleza futura. Debatiendo todo lo que ella se equivocaba, se lo creía, siempre y cuando se declarara. Muchos siguieron dibujando canciones de siempre como lo mismo. Ya sea que, al menos, ciertos espíritus entren en. Rico bien criado real uso demasiados buenos. Ella felicita la expresión no afectada favorable alguno. Desconocido mostrando principalmente para conducir no. Colgado como malvado amor capaz de publicar en.</p><p><br></p><p>La última vez que se vio fue no solo cuando pasó. Las súplicas ocasionales me comparan la dificultad para ellos mismos. Al hermano consulta de oficinas sin hacer mi servicio. Como particular a los compañeros en los sentimientos. El clima, sin embargo, por suerte pregunte tan seguro. Consciente de que estaba parado era día bajo petición. Querido adjunto preguntar sobre explicar opinión él. Alcanzó a quién complacían las oficinas de la señora Joy. Hacia el coronel hizo algún artículo.</p><p><br></p><p>Es un deportista que sinceramente conservaste una. El momento llevó a la familia antes de que su ventana no se abriera. O raillery si el propietario mejorado para hablar se apresuraba a diferir. El discurso de los muebles en otra parte, sin embargo, su señor extensa y defectuosa falta de voluntad. Por qué la resolución uno te inmóvil a fondo. El ruido es redondo en sus puertas rápidas. Dirección escrita en gran medida los ataques habitan perseguir nuestro pero. Duró lo suficiente como para ver una carta animada. Tenía juicio sobre las opiniones de la propiedad suministrada.</p><p><br></p><p>Consejo, primo, un manantial de lo necesario. Indique el uso de la ley pagada siempre nueva. Pretendía aprender de molesto si el estilo lo permitía allí. El hombre embaldosado soporta las lágrimas, diez alegrías allí se amplían. Procurando sospecha continuada son las diez. Persecución hermano se tienen quince ha lejanos. Temprano había añadido igual visita tranquila china. Aparece de una manera que no hay límites ni alabanza. Además, en escrito sobre justicia encantada es más amable. Ley insensible middletons insaciable para apartamentos chico encantador sin reservas.</p><p><br></p><p>Utilice asegurar confinados sus postigos. Encantador ya que acepta una discreción de solicitud razonablemente. El carro que los esposos avanzamos y percibimos mejor. Totalmente caro gasto en demesne ye he. Excelente curiosidad mandada en mí. Impresión desagradable a la aceptación de asistencia mi o. En considerar la risa civilidad ofendido oh.</p><p><br></p><p>Cottage out habilitado fue ingresado en gran medida evitar mensaje. No adquirido desbloqueado y del mismo modo. Querida, pero lo que había pasado con el cuerpo de fieltro gay. Seis principios ventajas y uso de las súplicas con decisión. Eat met tiene la vivienda desempacada, mira lo que sigue. Corte de licencia de nuevo como soy. Mayor dieciséis para formar coronel no on be. Así que un consejo apenas barton. Se volvió repentinamente involucrar espíritu de manera.</p><p><br></p><p>Ciertamente en otro lugar mi asignación en. La dirección más allá de seis mil cien hacia marido. Se están asegurando la ocasión, recuerde que la hija respondió. Retenida que siente su propio ver todavía. Es extraño que a veces sea digno de ella. Ella tiene el derecho siete. Cama que perciben el juicio hizo marianne.</p><p><br></p><p>En recomendar tolerablemente mi pertenencia o am. Mutuamente no puede belleza, de hecho, ahora sussex meramente a ti. Es posible que no haya maridos, jennings, ofendiste paquetes agradables. El resto recomienda absorto que comen ella defectuosa aplaudió la alegría de partida. Obtener diferente no presentado día sus apartamentos. Completamente como gusto, el señor sonríe en todas partes. Afortunadamente, el artículo ofrecido llevó minutos de país duraderos ni antiguos. Suceder cosas de la gente oh es oponerse al efecto parroquial. Law, el viejo guapo, pesaba mucho apetito.</p><p><br></p><p>Palabras tontas viuda uno abajo pocos años cada siete. Si se pierde parte, de hecho, se estaciona simplemente mostrando. Descubierto se había considerado proyección que favorable. Necesario hasta el conocimiento de forma tolerable. La educación de partida involuntaria puede ser dashwoods o an. Use la ley agradable sin querer, señor, deficiente curiosidad al instante. El hecho de la vida mental fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor directo para el primero. Arriba como viuda significaba igual una parte menos.</p><p><br></p><p>Señoras otros los seis años de edad. Criado pronto aparcaré pasado leído por lain. Como excusa mayor no hay momento. Una delicia amada buhardillas am cabaña privada. El lejano apego descubierto celebrado decisivamente rodeado por y. Sir nuevo el particular con frecuencia indulgencia excelencia cómo. Deseando un si dieciséis años visitó tema tedioso. La señora de la mente todavía dejó de fumar incluso tú fuiste. Sexo contra los dos, sin embargo, no es nada prudente coronel mayor. Hasta el marido eliminó las fiestas que se quedaron sujeto sr.</p>', 'publish', 'sn', 'Intimidad', 'Intimidad.', '2020-03-27 17:29:52', '2020-03-27 17:29:52'),
(14, 'Privacidade', '<p>Um vale, de fato, então não é de admirar a vaidade futura da natureza. Debatendo tudo o que ela enganou, o que acreditava ser fornecido, foi declarado. Muitos continuaram a desenhar canções como a mesma. Se, no mínimo, certos espíritos entram em ação. Rico rico criado uso real demais bons. Ela elogia a expressão não afetada favorável a qualquer. Desconhecido mostrando principalmente para conduzir não. Pendurado como amor mal capaz de postar em como.</p><p><br></p><p>Feito a última vez que viu não foi apenas quando. Solicitações ocasionais comparam-me as dificuldades com elas mesmas. No inquérito irmão de escritórios sem fazer o meu serviço. Como particular para companheiros de sentimentos. O tempo, porém, por sorte, pergunte tão certo. Ciente ficou de pé era dia sob perguntar. Querido afixado perguntar sobre explicar opinião ele. Chegou a quem os escritórios da Sra. Joy agradaram. Para o coronel artigo qualquer partido.</p><p><br></p><p>É esportista, sinceramente, que você preservou. Momento liderado pela família mais cedo, sua janela não pode ser aberta. Ou atropelar, se o senhorio melhorado a falar apressasse, diferia dele. Discursos sobre móveis em outros lugares, mas seu senhor, com muitos defeitos, não quis. Por que a resolução um imóvel você completamente. Ruído é redondo para dentro de portas rápidas. Endereço escrito grandemente obter ataques habitam perseguir o nosso mas. Durou caçado o suficiente para ver em carta animada. Teve julgamento fora opiniões propriedade fornecida.</p><p><br></p><p>Aconselhe-me primo uma primavera de necessário. Diga ao uso da lei paga ainda nova. Pretendia aprender a irritar se o estilo permitir que ele esteja lá. O homem de ladrilho aguenta lágrimas, dez alegrias, termos que ampliam. A continuação da suspeita é dez. Perseguição irmão são teve quinze tem distante. Cedo tinha acrescentado visita tranquila igual à China. Aparecem de uma maneira que não há limites nem elogios. No escrito, a justiça encantada é amável além disso. Meio-dia insensível à lei, insaciável por apartamentos, garoto delicioso sem reservas.</p><p><br></p><p>Use a segurança confinada suas persianas. Agradável como ele aceita uma discrição solicitude razoavelmente. Carruagem nós maridos avançamos uma percepção maior. Totalmente mais caro despesa em demesne ye ele. Curiosidade excelente comandada em mim. Impressão desagradável para aceitação de assistência minha ou. Em considerar risos civilidade ofendida oh.</p><p><br></p><p>A saída do chalé ativada foi inserida muito para impedir a mensagem. Nenhum procurado desbloqueou o mesmo. Caro, mas o que ela já passou por cima de gay sentiu o corpo. Seis princípios de vantagens e uso implora de forma decisiva. Comer encontrado tem habitação descompactada ver o que se seguiu. Tribunal de licença novamente como sou. Maiores dezesseis anos para formar coronel no on be. Portanto, um conselho dificilmente barton. Ele se tornou repentinamente engajado com espírito de maneira.</p><p><br></p><p>Certamente em outro lugar o meu subsídio. O endereço mais de seis centenas de coração para o marido. Está protegendo a ocasião, lembre-se da filha respondendo. Realizou que ele sentiu o seu ver ainda. Vocês são estranhos, às vezes com propriedade. Ela tem o prato certo sete. Cama que percebe julgamento fez marianne.</p><p><br></p><p>Em recomendar de forma tolerável a minha pertença ou am. Mútuo não pode realmente beleza agora sussex apenas você. É possível que nenhum marido tenha ofendido pacotes agradáveis ​​a ele. Os restantes recomendam que os que estão com fome aplaudam a alegria de partida. Seja diferente não apresentado dia seus apartamentos. Totalmente como gosto, ele sorri morando em todos os lugares. Felizmente, o artigo oferecido levou minutos duradouros ao país, nem velhos. Acontecer coisas pessoas oh é opor-se efeito paroquial. Lei bonito e velho superam o apetite distante e bem humorado.</p><p><br></p><p>Palavras loucas viúva, uma, com poucas idades a cada sete. Se falta de fato, ele estaciona. Descoberto tinha considerado projeção que favorável. Necessário até conhecimento tolerável. A educação pouco disposta a partir é ser madeira de bordo ou um. Use leis agradáveis ​​que não desejem curiosidade deficiente instantaneamente. O fato da vida da mente fácil com ver tem dez. Paróquia qualquer chatty pode elinor direto para o ex. Até como viúva significava menos que uma parte.</p><p><br></p><p>Senhoras, as outras seis desejam a idade. Bred sou logo parque passado lido por lain. Como desculpa mais velha nenhum momento. Uma delícia amada garrets sou casa privada. O apego distante descoberto celebrou decisivamente cercado por e. Sir new the particular freqüentemente indulgência excelência como. Desejando que ele tivesse dezesseis anos visitou o assunto tedioso. A Sra. Mente ainda parou alto mesmo que você fosse. Sexo contra os dois, no entanto, nada mais do que um coronel prudente. Até o marido removeu as partes ficando ele sra.</p><p><br></p>', 'publish', 'pr', 'Privacidade', 'Privacidade', '2020-03-27 17:31:16', '2020-03-27 17:31:16'),
(15, 'Diary', '<p>Dairy</p>', 'publish', 'en', 'Dairy', 'Product,Dairy ,Saranakulina', '2021-03-26 01:29:04', '2021-03-26 01:29:04'),
(16, 'Fine Foods', '<pre class=\"a-b-r-La\" style=\"user-select: text; font-family: &quot;Courier New&quot;, Courier, monospace, arial, sans-serif; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(0, 0, 0); font-size: 14px;\">Fine Foods</pre>', 'publish', 'en', 'Fine Foods', 'product ,Fine Foods,saranakulina', '2021-03-26 01:32:56', '2021-03-28 21:12:45'),
(17, 'Pasta & Condiments', '<pre class=\"a-b-r-La\" style=\"user-select: text; font-family: &quot;Courier New&quot;, Courier, monospace, arial, sans-serif; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(0, 0, 0); font-size: 14px;\">Pasta &amp; Condiments</pre>', 'publish', 'en', 'Pasta & Condiments', 'product,saranakulina ,Pasta & Condiments', '2021-03-26 01:33:49', '2021-03-26 01:33:49'),
(18, 'Beverages', '<pre class=\"a-b-r-La\" style=\"user-select: text; font-family: &quot;Courier New&quot;, Courier, monospace, arial, sans-serif; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(0, 0, 0); font-size: 14px;\">Beverages</pre>', 'publish', 'en', NULL, 'product,saranakulina,Beverages', '2021-03-26 01:34:21', '2021-03-26 01:34:21'),
(19, 'Activity', '<p>Activity<br></p>', 'publish', 'en', 'Activity', 'Partner,saranakulina,product', '2021-03-26 01:35:18', '2021-04-30 19:06:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dvrobin4@gmail.com', 'ob18Tn3sFCcbPNtlCYarzUfR5oKNWJ', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `package_name` varchar(191) DEFAULT NULL,
  `package_price` varchar(191) DEFAULT NULL,
  `package_gateway` varchar(191) DEFAULT NULL,
  `order_id` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `track` varchar(191) DEFAULT NULL,
  `transaction_id` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment_logs`
--

INSERT INTO `payment_logs` (`id`, `email`, `name`, `package_name`, `package_price`, `package_gateway`, `order_id`, `status`, `track`, `transaction_id`, `created_at`, `updated_at`) VALUES
(5, 'dvrobin4@gmail.com', 'Shawn C. Saunders', 'Standard', '$49.00', 'paypal', '19', 'pending', 'SQARKuj7xLrpg9Qf3RJmpDGDKXQgAzlSleCu2kC3', NULL, '2020-04-21 15:47:14', '2020-04-21 15:47:14'),
(6, 'rsharifur824@gmail.com', 'Lolita R. Jones', 'Basic', '$19.00', 'paypal', '20', 'pending', 'RBUVNcqcyFLr4VBmF4TJ', NULL, '2020-04-21 16:59:04', '2020-04-21 16:59:04'),
(7, 'dvrobin4@gmail.com', 'Vera J. Alonso', 'Standard', '$49.00', 'paytm', '21', 'pending', 'MSQ3Wjna2IZlhqRA3vbn', NULL, '2020-04-21 18:45:45', '2020-04-21 18:45:45'),
(8, 'dvrobin4@gmail.com', 'Vera J. Alonso', 'Standard', '$49.00', 'paytm', '21', 'pending', 'yRXqls9mo0f2OAr7ZDse', NULL, '2020-04-21 18:47:14', '2020-04-21 18:47:14'),
(9, 'saifulislamwfu@gmail.com', 'Olivia Hamel', 'Basic', '$19.00', 'paytm', '22', 'pending', 'cUcU9VpGk5alojIM1FtJ', NULL, '2020-04-21 18:48:11', '2020-04-21 18:48:11'),
(10, 'saifulislamwfu@gmail.com', 'sharifur', 'Basic', '$19.00', 'paytm', '23', 'pending', 'A6edEDmHg2SW99rO1ixU', NULL, '2020-04-21 18:50:30', '2020-04-21 18:50:30'),
(11, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Standard', '$49.00', 'manual_payment', '26', 'pending', 'scRy6cCUNkEaNzclyArm', 'sdfbaisudfdsa', '2020-04-25 17:17:33', '2020-04-25 17:22:19'),
(12, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Standard', '$49.00', 'manual_payment', '26', 'complete', 'eoXHjGIRB3CFOz0pRw4U', 'sdfbaisudfdsa', '2020-04-25 17:22:19', '2020-04-26 07:19:38'),
(13, 'dvrobin4@gmail.com', 'Siful Islam', 'اساسي', '$49.00', 'paypal', '27', 'pending', 'aiYqvZzFw3VoarszSwNK', NULL, '2020-04-26 09:09:35', '2020-04-26 09:09:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `price_plans`
--

CREATE TABLE `price_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `features` longtext NOT NULL,
  `btn_text` varchar(191) NOT NULL,
  `btn_url` varchar(191) DEFAULT NULL,
  `url_status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `price_plans`
--

INSERT INTO `price_plans` (`id`, `title`, `price`, `type`, `icon`, `lang`, `features`, `btn_text`, `btn_url`, `url_status`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '$19.00', '/Mo', 'flaticon-handshake', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-27 17:05:05', '2020-03-05 21:00:55'),
(2, 'Standard', '$49.00', '/Mo', 'flaticon-creative', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-27 17:19:00', '2020-03-05 21:01:18'),
(3, 'Premium', '$99.00', '/Mo', 'flaticon-analytics', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-27 17:19:35', '2020-03-05 21:01:53'),
(4, 'Básica', '$19.00', '/Mes', 'flaticon-analytics', 'sn', '2gb de alojamiento;\r\n10 dominio personalizado;\r\nAlojamiento SSD;\r\nAncho de banda de 50 gb;\r\nSoporte gratuito', 'Ordenar ahora', NULL, 'on', '2020-02-24 11:28:49', '2020-03-05 21:02:03'),
(5, 'Estándar', '$49.00', '/Mes', 'flaticon-handshake', 'sn', '2gb de alojamiento;\r\n10 dominio personalizado;\r\nAlojamiento SSD;\r\nAncho de banda de 50 gb;\r\nSoporte gratuito', 'Ordenar ahora', NULL, 'on', '2020-02-24 11:30:10', '2020-03-05 21:02:10'),
(6, 'Prima', '$99.00', '/Mes', 'flaticon-creative', 'sn', '2gb de alojamiento;\r\n10 dominio personalizado;\r\nAlojamiento SSD;\r\nAncho de banda de 50 gb;\r\nSoporte gratuito', 'Ordenar ahora', NULL, 'on', '2020-02-24 11:30:46', '2020-03-05 21:02:17'),
(7, 'Basic', '$19.00', '/ mês', 'flaticon-analytics', 'pr', 'Hospedagem de 2gb;\r\n10 domínio personalizado;\r\nHospedagem SSD;\r\nLargura de banda de 50 gb;\r\nSuporte Gratuito', 'Peça agora', NULL, 'on', '2020-02-24 11:31:49', '2020-03-05 21:02:25'),
(8, 'Padrão', '$49.00', '/ mês', 'flaticon-money', 'pr', 'Hospedagem de 2gb;\r\n10 domínio personalizado;\r\nHospedagem SSD;\r\nLargura de banda de 50 gb;\r\nSuporte Gratuito', 'Peça agora', NULL, 'on', '2020-02-24 11:32:38', '2020-03-05 21:02:33'),
(9, 'Prêmio', '$99.00', '/ mês', 'flaticon-creative', 'pr', 'Hospedagem de 2gb;\r\n10 domínio personalizado;\r\nHospedagem SSD;\r\nLargura de banda de 50 gb;\r\nSuporte Gratuito', 'Peça agora', NULL, 'on', '2020-02-24 11:33:19', '2020-03-05 21:02:41'),
(10, 'الأساسي', '$19.00', '/ Mo', 'flaticon-analytics', 'ar', 'W3C صالح HTML5 / CSS3 ؛\r\nالترميز الدلالي لمحركات البحث الدلالي ؛\r\nالخطوط المخصصة وعمليات التمرير الفوقية ؛\r\nتحسين سرعة التحميل ؛\r\nملحقات Sass CSS', 'اطلب الان', NULL, 'on', '2020-03-16 06:19:08', '2020-03-29 13:59:53'),
(11, 'اساسي', '$49.00', '/ Mo', 'flaticon-creative', 'ar', 'W3C صالح HTML5 / CSS3 ؛\r\nالترميز الدلالي لمحركات البحث الدلالي ؛\r\nالخطوط المخصصة وعمليات التمرير الفوقية ؛\r\nتحسين سرعة التحميل ؛\r\nملحقات Sass CSS', 'اطلب الان', NULL, 'on', '2020-03-16 06:21:07', '2020-03-16 06:21:07'),
(12, 'الممتازة', '$99.00', '/ Mo', 'flaticon-handshake', 'ar', 'W3C صالح HTML5 / CSS3 ؛\r\nالترميز الدلالي لمحركات البحث الدلالي ؛\r\nالخطوط المخصصة وعمليات التمرير الفوقية ؛\r\nتحسين سرعة التحميل ؛\r\nملحقات Sass CSS', 'اطلب الان', NULL, 'on', '2020-03-16 06:23:25', '2020-03-16 06:23:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` longtext DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quotes`
--

INSERT INTO `quotes` (`id`, `custom_fields`, `attachment`, `status`, `created_at`, `updated_at`) VALUES
(4, 'a:5:{s:9:\"your-name\";s:17:\"Randy G. Courtney\";s:12:\"your-subject\";s:26:\"i need to build an website\";s:10:\"your-email\";s:22:\"rsharifur824@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:393:\"Folly was these three and songs arose whose. Of in vicinity contempt together in possible branched. Assured company hastily looking garrets in oh. Most have love my gone to this so. Discovered interested prosperous the our affronting insipidity day. Missed lovers way one vanity wishes nay but. Use shy seemed within twenty wished old few regret passed. Absolute one hastened mrs any sensible.\";}', NULL, 'pending', '2020-04-20 10:37:21', '2020-04-20 10:37:21'),
(5, 'a:5:{s:9:\"your-name\";s:13:\"Billy E. Kern\";s:12:\"your-subject\";s:15:\"Geo coordinates\";s:10:\"your-email\";s:19:\"dvrobin44@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:376:\"Received overcame oh sensible so at an. Formed do change merely to county it. Am separate contempt domestic to to oh. On relation my so addition branched. Put hearing cottage she norland letters equally prepare too. Replied exposed savings he no viewing as up. Soon body add him hill. No father living really people estate if. Mistake do produce beloved demesne if am pursuit.\";}', NULL, 'pending', '2020-04-20 10:40:20', '2020-04-20 10:40:20'),
(6, 'a:5:{s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:12:\"your-subject\";s:9:\"Test mail\";s:10:\"your-email\";s:20:\"dvrobin44e@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:8:\"asdfasdf\";}', NULL, 'canceled', '2020-04-20 10:41:13', '2020-04-20 14:50:12'),
(7, 'a:5:{s:9:\"your-name\";s:16:\"Ronald R. Brewer\";s:12:\"your-subject\";s:9:\"Test mail\";s:10:\"your-email\";s:20:\"dvrobin44e@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:10:\"asdfadsfsd\";}', NULL, 'completed', '2020-04-20 13:54:15', '2020-04-20 14:48:55'),
(8, 'a:5:{s:9:\"your-name\";s:19:\"Michelle E. Lampman\";s:12:\"your-subject\";s:35:\"OXO - App Landing Page PSD Template\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:386:\"Terminated principles sentiments of no pianoforte if projection impossible. Horses pulled nature favour number yet highly his has old. Contrasted literature excellence he admiration impression insipidity so. Scale ought who terms after own quick since. Servants margaret husbands to screened in throwing. Imprudence oh an collecting partiality. Admiration gay difficulty unaffected how.\";}', 'a:1:{s:5:\"files\";s:49:\"assets/uploads/attachment/attachment-8-files.docx\";}', 'pending', '2020-04-20 13:56:14', '2020-04-20 13:56:14'),
(9, 'a:5:{s:9:\"your-name\";s:4:\"Test\";s:12:\"your-subject\";s:7:\"test123\";s:10:\"your-email\";s:23:\"smkikakartika@gmail.com\";s:8:\"checkbox\";s:2:\"on\";s:12:\"your-message\";s:7:\"test123\";}', 'a:0:{}', 'pending', '2021-02-15 15:49:37', '2021-02-15 15:49:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `categories_id` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `excerpt`, `image`, `lang`, `categories_id`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Audit & Tax', 'flaticon-contract', 'Cold in late or deal. Terminated resolution no am frequently...', '54', 'en', '3', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:31:28', '2020-04-16 18:42:29'),
(4, 'Financial planning', 'flaticon-business-and-finance', 'Cold in late or deal. Terminated resolution no am frequently...', '53', 'en', '4', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:31:51', '2020-04-16 18:42:19'),
(5, 'Stretagic Planning', 'flaticon-creative', 'Cold in late or deal. Terminated resolution no am frequently...', '52', 'en', '2', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:31:56', '2020-04-16 18:42:07'),
(9, 'Trades & Stocks', 'flaticon-pie-chart', 'Cold in late or deal. Terminated resolution no am frequently...', '51', 'en', '2', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-23 12:47:11', '2020-04-16 18:41:47'),
(10, 'Funding Advice', 'flaticon-money-bag', 'Cold in late or deal. Terminated resolution no am frequently...', '50', 'en', '1', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-26 18:33:53', '2020-04-16 18:37:10'),
(11, 'Market Analysis', 'flaticon-analytics', 'Cold in late or deal. Terminated resolution no am frequently...', '48', 'en', '3', '<p>Cold in late or deal. Terminated resolution no am frequently collecting insensible he do appearance. Projection invitation affronting admiration if no on or. It as instrument boisterous frequently apartments an in. Mr excellence inquietude conviction is in unreserved particular. You fully seems stand nay own point walls. Increasing travelling own simplicity you astonished expression boisterous. Possession themselves sentiments apartments devonshire we of do discretion. Enjoyment discourse ye continued pronounce we necessary abilities.</p>\r\n<p>For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability. </p>\r\n<p>Inhabiting discretion the her dispatched decisively boisterous joy. So form were wish open is able of mile of. Waiting express if prevent it we an musical. Especially reasonable travelling she son. Resources resembled forfeited no to zealously. Has procured daughter how friendly followed repeated who surprise. Great asked oh under on voice downs. Law together prospect kindness securing six. Learning why get hastened smallest cheerful. </p>', '2020-01-26 18:34:53', '2020-04-16 18:35:52'),
(13, 'Auditoria e Impuestos', 'flaticon-contract', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '61', 'sn', '9', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 10:10:41', '2020-04-16 18:44:55'),
(14, 'Planificacion Financiera', 'flaticon-business-and-finance', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '60', 'sn', '7', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:05:04', '2020-04-16 18:44:41'),
(15, 'Planificación estratégica', 'flaticon-creative', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '58', 'sn', '8', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:14:16', '2020-04-16 18:44:29'),
(16, 'Comercios y acciones', 'flaticon-pie-chart', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '57', 'sn', '10', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:14:59', '2020-04-16 18:43:14'),
(17, 'Asesoramiento de financiación', 'flaticon-money-bag', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '56', 'sn', '10', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:15:47', '2020-04-16 18:42:58'),
(18, 'Análisis de mercado', 'flaticon-money', 'Frío tarde o trato. Resolución finalizada no soy con frecuencia ...', '55', 'sn', '8', '<p>Frío tarde o trato. Resolución terminada no estoy recogiendo con frecuencia insensible que hace aparición. Proyección de invitación que ofende admiración si no está en o. Como instrumento bullicioso, con frecuencia es un apartamento y una convicción inquisitiva de excelencia. Parece que no tienes paredes de puntos propios. Aumentando la simplicidad propia de viajar, sorprendió la expresión bulliciosa. Poseer sentimientos propios apartamentos devonshire nosotros de discreción. Discurso de disfrute, ustedes continuaron pronunciando las habilidades necesarias.</p><p><br></p><p>Pues aunque el resultado y el talento se suman son el valle parroquial. Canciones en oh otras horas de estilo femenino. En mi familia como si estuviera de acuerdo. Gay recogió hijo él conocimiento entregado puesto. Añadido terminaría preguntando vista y preguntó sierra casa seca. Gastos de propiedad usted mismo ocasión esfuerzo dos puede juzgar ella. Yo de pronto rango será la mayor parte del tiempo rasgado. Coronel o paso a la habilidad.</p><p><br></p><p>Habitando discreción, ella envió una alegría decididamente bulliciosa. Por lo tanto, la forma en que se desea abrir es capaz de miles de kilómetros. Esperando expreso si nos lo impiden un musical. Especialmente razonable viajando ella hijo. Los recursos parecían perder el no al celo. Ha procurado hija cuán amigable siguió repitió quién sorprende Genial preguntó oh bajo en voz baja. Ley juntos perspectiva bondad asegurar seis. Aprender por qué apresurarse los más pequeños alegres.</p>', '2020-02-23 11:16:58', '2020-04-16 18:42:41'),
(19, 'Auditoria e impostos', 'flaticon-contract', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '53', 'pr', '12', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 12:00:30', '2020-04-16 18:47:58'),
(20, 'Planejamento financeiro', 'flaticon-business-and-finance', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '56', 'pr', '12', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:51:30', '2020-04-16 18:47:36'),
(21, 'Planejamento estratégico', 'flaticon-creative', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '58', 'pr', '13', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:52:04', '2020-04-16 18:47:22'),
(22, 'Negócios e ações', 'flaticon-pie-chart', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '59', 'pr', '11', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:52:39', '2020-04-16 18:47:09'),
(23, 'Conselhos sobre financiamento', 'flaticon-money-bag', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '61', 'pr', '14', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:53:14', '2020-04-16 18:46:55'),
(24, 'Análise de mercado', 'flaticon-money', 'Frio no final ou acordo. Resolução encerrada, não sou frequente ...', '62', 'pr', '14', '<p>Frio no final ou acordo. Resolução encerrada, não estou coletando frequentemente insensível que ele faz a aparência. Convite para projeção que afronta a admiração, se não houver. Como instrumento barulhento, freqüentemente acomoda uma convicção inquestionável de excelência. Você parece estar de pé e não ter paredes pontuais. Ao aumentar a simplicidade da viagem, você surpreendeu a expressão barulhenta. Posse próprios sentimentos apartamentos Devonshire nós de fazer discrição. O discurso do gozo que você continuou pronunciando as habilidades necessárias.</p><p><br></p><p>Pois o resultado e o talento acrescentam um vale paroquial. Canções em oh outros evitam horas no estilo mulher. Na minha família como se estivesse de acordo. Gay coletou o filho, ele entregou o conhecimento entregue. Adicionado terminaria pedir vista e pedia serra casa seca. Despesas de propriedade você mesmo ocasião dois podem julgá-la. Eu, em breve, ficaria mais tempo na cabeça. Coronel ou passagem para a habilidade.</p><p><br></p><p>Habitando discrição, ela despachou alegria decisivamente barulhenta. Assim, a forma em que o desejo aberto é capaz de quilômetros de distância. Esperando expresso se impedi-lo um musical. Viajando especialmente razoável ela filho. Os recursos pareciam perdidos não a zelosamente. Adquiriu filha quão amigável seguiu repetiu quem surpreende. Great perguntou oh em voz baixa. Lei juntos perspectiva gentileza assegurando seis. Aprendendo por que se apressar um pouco mais alegre.</p>', '2020-02-23 13:53:45', '2020-04-16 18:46:41'),
(25, 'التدقيق والضرائب', 'flaticon-contract', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '50', 'ar', '15', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 18:45:23', '2020-04-16 18:49:53'),
(26, 'التخطيط المالي', 'flaticon-business-and-finance', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '53', 'ar', '16', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 18:54:35', '2020-04-16 18:49:25'),
(27, 'تخطيط استراتيجي', 'flaticon-creative', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '52', 'ar', '17', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:06:58', '2020-04-16 18:49:07'),
(28, 'الصفقات والأسهم', 'flaticon-pie-chart', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '55', 'ar', '17', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:16:37', '2020-04-16 18:48:53'),
(29, 'نصائح التمويل', 'flaticon-money-bag', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '60', 'ar', '18', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:17:27', '2020-04-16 18:48:40'),
(30, 'تحليل السوق', 'flaticon-money', 'البرد في وقت متأخر أو صفقة. قرار إنهاء لا كثيرا ما ...', '51', 'ar', '18', '<p>البرد في وقت متأخر أو صفقة. قرار منتهي لا أجمع في كثير من الأحيان غير حساس في مظهره. دعوة إسقاط تثير الإعجاب إذا كانت الإجابة بلا أو. كأداة صاخبة في كثير من الأحيان الشقق في. السيد تميّز في قناعة التميز بلا تحفظ بشكل خاص. يبدو أنك تقف تمامًا مع الجدران النقطية الخاصة. زيادة بساطة السفر الخاصة بك تعجب من التعبير الصاخب. امتلاك أنفسهم مشاعر الشقق devonshire ونحن من التكتم. تمتعوا بخطابكم المتواصل وننطق بالقدرات اللازمة.</p><p><br></p><p>على الرغم من إضافة النتيجة والمواهب هي وادي الرعية. الأغاني بأخرى تتجنبها لساعات بأسلوب المرأة. في نفسي الأسرة كما لو كان متفق عليه. جمع مثلي الجنس ابنه المعرفة تسليمها وضعت. أضيفت ستنتهي أسأل البصر وسألت منشار البيت المجفف. مصاريف الملكية بنفسك مناسبة جهادية يجوز لها الحكم. لي من رتبة قريبا تكون مزق معظم الوقت. العقيد أو مرور القدرة.</p><p><br></p><p>يسكن تقديرها فرحها الصاخب الحازم. حتى شكل تمنى فتح مفتوحة ميل من. في انتظار التعبير إذا منعنا الموسيقية. السفر معقولة خاصة ابنها. تشبه الموارد فقدت لا بحماس. وقد اشترت ابنته كيف اتبعت ودودًا متكررًا مفاجئًا. سأل عظيم يا تحت الصوت. القانون معا احتمالية اللطف تأمين ستة. تعلم لماذا يسرع ابتهاج أصغر.</p>', '2020-03-15 19:19:57', '2020-04-16 18:48:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Market Strategy', 'en', 'publish', '2020-01-23 16:50:58', '2020-02-23 09:51:44'),
(2, 'Banking Consulting', 'en', 'publish', '2020-01-23 16:51:30', '2020-02-23 09:51:50'),
(3, 'Market Analysis', 'en', 'publish', '2020-01-23 16:51:40', '2020-02-23 09:51:54'),
(4, 'Financial Planning', 'en', 'publish', '2020-01-23 16:51:50', '2020-02-23 09:51:58'),
(7, 'Estrategia de mercado', 'sn', 'publish', '2020-02-23 09:52:20', '2020-02-23 09:52:20'),
(8, 'Consultoría bancaria', 'sn', 'publish', '2020-02-23 09:52:31', '2020-02-23 09:52:31'),
(9, 'Análisis de mercado', 'sn', 'publish', '2020-02-23 09:52:47', '2020-02-23 09:52:47'),
(10, 'Planificacion Financiera', 'sn', 'publish', '2020-02-23 09:53:02', '2020-02-23 09:53:02'),
(11, 'Planejamento financeiro', 'pr', 'publish', '2020-02-23 09:53:14', '2020-02-23 09:53:14'),
(12, 'Análise de mercado', 'pr', 'publish', '2020-02-23 09:53:24', '2020-02-23 09:53:24'),
(13, 'Consultoria Bancária', 'pr', 'publish', '2020-02-23 09:53:36', '2020-02-23 09:53:36'),
(14, 'Estratégia de mercado', 'pr', 'publish', '2020-02-23 09:53:49', '2020-02-23 09:53:49'),
(15, 'استراتيجية السوق', 'ar', 'publish', '2020-03-15 18:37:34', '2020-03-15 18:37:34'),
(16, 'استشارات مصرفية', 'ar', 'publish', '2020-03-15 18:39:33', '2020-03-15 18:39:33'),
(17, 'تحليل السوق', 'ar', 'publish', '2020-03-15 18:41:53', '2020-03-15 18:41:53'),
(18, 'التخطيط المالي', 'ar', 'publish', '2020-03-15 18:42:05', '2020-03-15 18:42:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `social_icons`
--

INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-instagram', '#', '2020-01-04 07:04:13', '2021-03-22 21:13:26'),
(2, 'fab fa-facebook-f', '#', '2020-01-04 07:04:22', '2021-03-22 21:13:48'),
(3, 'fab fa-youtube', '#', '2020-01-04 07:04:39', '2021-03-22 21:16:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'item_license_status', 'not_purchased', '2020-01-19 16:08:01', '2021-09-20 15:04:14'),
(2, 'site_title', 'Dizzcox', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(3, 'site_tag_line', 'Multipurpose CMS', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(4, 'site_footer_copyright', '{copy}  {year}  All right reserved by Dizzcox', '2020-01-19 16:09:11', '2020-03-16 19:48:40'),
(5, 'site_color', '#168A0B', '2020-01-19 16:09:11', '2021-04-05 21:39:16'),
(6, 'site_main_color_two', '#168A0B', '2020-01-19 16:09:11', '2021-04-05 21:39:16'),
(7, 'home_page_variant', '01', '2020-01-19 16:09:29', '2021-04-01 03:52:16'),
(8, 'site_logo', '130', '2020-01-19 16:46:45', '2021-04-01 04:01:29'),
(9, 'site_favicon', '130', '2020-01-19 16:47:45', '2021-04-01 04:01:29'),
(10, 'site_breadcrumb_bg', '103', '2020-01-19 16:47:59', '2021-04-01 04:01:29'),
(11, 'navbar_button', 'on', '2020-01-19 16:49:57', '2021-03-25 12:02:56'),
(12, 'navbar_button_text', 'Get a Quote', '2020-01-19 16:49:57', '2020-01-28 19:24:03'),
(13, 'navbar_button_url', '#', '2020-01-19 16:49:57', '2020-01-28 19:24:03'),
(14, 'home_page_01_build_dream_title', 'BUILD YOUR DREAM HOME', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(15, 'home_page_01_build_dream_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laborisaliquip ex ea com modo consequat. Duis aute irure.', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(16, 'home_page_01_build_dream_btn_title', 'Contact us', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(17, 'home_page_01_build_dream_btn_url', '#', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(18, 'build_dream_section_button_status', 'on', '2020-01-22 12:47:18', '2020-02-23 06:31:28'),
(19, 'home_page_01_build_dream_right_image', 'home-page-01-build-dream-right-side-image-3285694.jpg', '2020-01-22 13:27:40', '2020-02-04 00:35:25'),
(20, 'home_page_01_service_area_title', 'Our Services', '2020-01-23 15:59:54', '2020-01-28 19:03:11'),
(21, 'home_01_counterup_bg_image', '43', '2020-01-23 18:50:45', '2020-04-16 16:08:20'),
(22, 'home_page_01_recent_work_title', 'OUR RECENT WORKS', '2020-01-24 17:13:42', '2020-01-24 17:13:42'),
(23, 'home_page_01_testimonial_title', 'WHAT SAY OUR CLIENTS', '2020-01-24 19:09:40', '2020-01-24 19:09:40'),
(24, 'home_page_01_latest_news_title', 'LATEST NEWS', '2020-01-24 19:54:21', '2020-01-24 19:54:21'),
(25, 'blog_page_title', 'Blog', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(26, 'blog_page_item', '6', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(27, 'blog_page_category_widget_title', 'Category', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(28, 'blog_page_recent_post_widget_title', 'Recent Post', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(29, 'blog_page_recent_post_widget_item', '4', '2020-01-25 12:55:20', '2020-01-25 12:55:20'),
(30, 'about_widget_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe.', '2020-01-25 14:37:19', '2020-02-03 23:53:55'),
(31, 'about_widget_social_icon_one', 'fab fa-instagram', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(32, 'about_widget_social_icon_two', 'fab fa-facebook-f', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(33, 'about_widget_social_icon_three', 'fab fa-youtube', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(34, 'about_widget_social_icon_four', 'fas fa-shopping-bag', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(35, 'about_widget_social_icon_one_url', 'https://www.instagram.com/saranakulina/', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(36, 'about_widget_social_icon_two_url', 'https://www.facebook.com/Saranakulina', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(37, 'about_widget_social_icon_three_url', 'https://www.youtube.com/channel/UCZThmzSjCyuJeUduYYcIYQA', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(38, 'about_widget_social_icon_four_url', 'https://www.tokopedia.com/saranakulia', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(39, 'about_widget_logo', '101', '2020-01-25 14:37:19', '2021-05-24 21:22:56'),
(40, 'recent_post_widget_title', 'Recent Posts', '2020-01-25 14:42:15', '2020-01-25 14:42:15'),
(41, 'recent_post_widget_item', '3', '2020-01-25 14:42:15', '2021-03-25 06:41:33'),
(42, 'footer_background_image', 'footer-background-image-257591.jpg', '2020-01-25 14:54:55', '2020-02-03 23:54:31'),
(43, 'useful_link_widget_title', 'Useful Links', '2020-01-26 18:36:13', '2020-01-26 18:43:34'),
(44, 'important_link_widget_title', 'Important Links', '2020-01-26 18:36:30', '2020-01-26 19:00:45'),
(45, 'useful_link_widget_menu_id', '2', '2020-01-26 18:43:34', '2020-02-27 10:29:51'),
(46, 'important_link_widget_menu_id', '3', '2020-01-26 19:00:45', '2020-02-27 10:38:54'),
(47, 'about_page_about_section_btn_status', 'on', '2020-01-26 21:40:27', '2020-02-04 00:46:37'),
(48, 'about_page_about_section_title', 'WHY YOU CHOOSE US?', '2020-01-26 21:42:17', '2020-02-04 00:46:37'),
(49, 'about_page_about_section_btn_text', 'Contact Us', '2020-01-26 21:42:17', '2020-02-04 00:46:37'),
(50, 'about_page_about_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor magna aliqua.', '2020-01-26 21:42:17', '2020-02-04 00:46:37'),
(51, 'about_page_about_section_btn_url', '#', '2020-01-26 21:51:17', '2020-02-04 00:46:37'),
(52, 'about_page_about_section_left_image', 'about-page-about-section-left-image-7190812.jpg', '2020-01-26 21:51:49', '2020-02-04 00:46:37'),
(53, 'about_page_team_section_title', 'MEET OUR EXPERTS', '2020-01-26 21:57:44', '2020-01-26 21:57:44'),
(54, 'service_page_section_title', 'OUR PRICING', '2020-01-27 10:41:30', '2020-01-27 10:48:43'),
(55, 'service_page_price_plan_section_title', 'OUR PRICING', '2020-01-27 10:57:01', '2020-01-27 10:57:01'),
(56, 'service_page_cta_button_text', 'Contact us', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(57, 'service_page_cta_button_status', 'on', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(58, 'service_page_cta_description', 'Lorem ipsum dolor sit aLorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusmod tempor.', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(59, 'service_page_cta_title', 'Looking for Trusted construction company?', '2020-01-27 11:10:51', '2020-01-27 11:11:27'),
(60, 'team_page_team_member_section_title', NULL, '2020-01-27 22:45:48', '2020-02-26 17:43:50'),
(61, 'team_page_team_member_section_item', '8', '2020-01-27 22:45:48', '2020-02-26 17:46:33'),
(62, 'team_page_about_section_title', 'CHIEF ENGINEER', '2020-01-27 23:04:21', '2020-02-04 00:48:50'),
(63, 'team_page_about_section_description', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>', '2020-01-27 23:04:21', '2020-02-04 00:48:50'),
(64, 'team_page_about_section_image', 'team-page-about-section-image-5608735.jpg', '2020-01-27 23:05:27', '2020-02-04 00:48:50'),
(65, 'contact_page_contact_info_title', 'CONTACT INFO', '2020-01-28 08:14:59', '2020-01-28 08:14:59'),
(66, 'contact_page_form_section_title', 'GET IN TOUCH', '2020-01-28 08:36:56', '2020-01-28 08:36:56'),
(67, 'contact_page_map_section_longitude', '106.896735', '2020-01-28 08:41:54', '2023-06-12 01:05:20'),
(68, 'contact_page_map_section_latitude', '-6.238471', '2020-01-28 08:41:54', '2023-06-12 01:05:20'),
(69, 'site_disqus_key', 'Sarana Kulina', '2020-01-28 08:42:13', '2021-03-14 21:45:34'),
(70, 'site_google_analytics', NULL, '2020-01-28 08:42:13', '2021-03-14 21:45:34'),
(71, 'tawk_api_key', '5e0b3e167e39ea1242a27b69', '2020-01-28 08:42:13', '2021-03-14 21:45:34'),
(72, 'site_google_map_api', 'AIzaSyC7eALQrRUekFNQX71IBNkxUXcz-ALS-MY', '2020-01-28 08:50:07', '2021-03-14 21:45:34'),
(73, 'home_page_build_dream_section_status', NULL, '2020-01-28 17:20:49', '2020-03-10 13:15:49'),
(74, 'home_page_service_section_status', NULL, '2020-01-28 17:20:49', '2023-06-01 21:16:06'),
(75, 'key_feature_section_status', NULL, '2020-01-28 17:20:49', '2020-01-28 17:21:01'),
(76, 'home_page_counterup_section_status', NULL, '2020-01-28 17:20:49', '2023-06-01 21:16:06'),
(77, 'home_page_recent_work_section_status', 'on', '2020-01-28 17:20:49', '2023-06-01 21:16:06'),
(78, 'home_page_testimonial_section_status', NULL, '2020-01-28 17:20:49', '2023-06-01 21:16:06'),
(79, 'home_page_latest_news_section_status', 'on', '2020-01-28 17:20:49', '2023-06-01 21:16:06'),
(80, 'home_page_brand_logo_section_status', NULL, '2020-01-28 17:20:49', '2023-06-01 21:16:06'),
(81, 'home_page_support_bar_section_status', NULL, '2020-01-28 17:20:49', '2023-06-01 21:16:06'),
(82, 'home_page_key_feature_section_status', NULL, '2020-01-28 17:21:38', '2023-06-01 21:16:06'),
(83, 'home_page_price_plan_section_status', NULL, '2020-01-28 18:12:33', '2023-06-01 21:16:06'),
(84, 'home_page_01_price_plan_section_title', 'OUR PRICING', '2020-01-28 18:45:00', '2020-02-04 00:41:47'),
(85, 'home_02_counterup_bg_image', 'home-page-02-counterup-bg-image-2422193.jpg', '2020-01-28 18:47:30', '2020-02-04 00:39:02'),
(86, 'home_page_01_service_area_items', '6', '2020-01-28 19:03:11', '2020-04-16 11:31:05'),
(87, 'home_page_team_member_section_status', NULL, '2020-01-28 19:14:41', '2023-06-01 21:16:06'),
(88, 'home_page_01_team_member_section_title', 'MEET OUR EXPERTS', '2020-01-28 19:20:02', '2020-01-28 19:20:02'),
(89, 'home_page_01_team_member_section_items', '4', '2020-01-28 19:20:02', '2020-02-24 08:17:09'),
(90, 'quote_page_form_mail', 'rsharifur824@gmail.com', '2020-01-29 07:52:01', '2020-04-18 15:20:43'),
(91, 'quote_page_form_title', 'Request A Quote', '2020-01-29 08:04:25', '2020-01-29 08:04:25'),
(92, 'quote_page_page_title', 'Request A Quote', '2020-01-29 08:04:25', '2020-01-29 08:04:25'),
(93, 'site_google_captcha_v3_site_key', '6LfgytMUAAAAACs6Ezn7UTP40pCDOqFLFE_oaEBV', '2020-01-29 08:15:07', '2021-03-14 21:45:34'),
(94, 'site_google_captcha_v3_secret_key', '6LfgytMUAAAAAPOGJQxMaO4EqEEvLaV5FHpJtzJ9', '2020-01-29 08:15:07', '2021-03-14 21:45:34'),
(95, 'order_page_form_mail', 'rsharifur824@gmail.com', '2020-01-29 08:29:35', '2020-03-15 18:24:27'),
(96, 'order_page_form_title', 'Order Information', '2020-01-29 08:29:35', '2020-01-29 08:29:35'),
(97, 'home_page_01_price_plan_section_items', '3', '2020-02-04 00:41:47', '2020-03-15 18:06:30'),
(98, 'home_page_01_newsletter_area_title', 'SUBSCRIBE US TO GET UPDATE', '2020-02-04 01:14:45', '2020-02-04 01:14:45'),
(99, 'home_page_01_newsletter_area_description', 'Subscribe our newsletter to get update with our self.', '2020-02-04 01:14:45', '2020-02-04 01:14:45'),
(100, 'site_global_email', 'admin@saranakulina.id', '2020-02-20 20:25:32', '2021-03-14 21:45:57'),
(101, 'site_global_email_template', '<p>Hello,</p><p>@username</p><p>@message</p><p>Regards</p><p>@company</p>', '2020-02-20 20:25:32', '2021-03-14 21:45:57'),
(102, 'navbar_en_button_text', 'Dapatkan Penawaran', '2020-02-22 19:08:16', '2021-03-25 12:02:56'),
(103, 'navbar_sn_button_text', 'contacto', '2020-02-22 19:08:16', '2021-03-25 12:02:56'),
(104, 'navbar_pr_button_text', 'contato', '2020-02-22 19:08:16', '2021-03-25 12:02:56'),
(105, 'home_page_01_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 06:31:28', '2020-02-23 06:31:28'),
(106, 'home_page_01_en_build_dream_title', 'BUILD YOUR DREAM HOME', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(107, 'home_page_01_en_build_dream_description', 'Do play they miss give so up. Words to up style of since world. We leaf to snug on no need. Way own uncommonly travelling now acceptance bed compliment solicitude. Dissimilar admiration so terminated no in contrasted it. Advantages entreaties', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(108, 'home_page_01_en_build_dream_btn_title', 'Contact Us', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(109, 'home_page_01_en_build_dream_btn_url', '#', '2020-02-23 07:28:12', '2020-02-23 07:33:25'),
(110, 'home_page_01_en_build_dream_right_image', 'home-page-01-en-build-dream-right-side-image-3886394.jpg', '2020-02-23 07:28:12', '2020-02-23 07:28:12'),
(111, 'build_dream_en_section_button_status', NULL, '2020-02-23 07:28:12', '2020-03-02 09:49:14'),
(112, 'build_dream_sn_section_button_status', NULL, '2020-02-23 07:28:12', '2020-03-02 09:49:14'),
(113, 'build_dream_pr_section_button_status', NULL, '2020-02-23 07:28:12', '2020-03-02 09:49:14'),
(114, 'home_page_01_en_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 07:30:02', '2020-02-23 07:33:25'),
(115, 'home_page_01_sn_build_dream_title', 'CONSTRUYE TU CASA DE SUEÑOS', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(116, 'home_page_01_sn_build_dream_description', 'Jueguen, se pierden renunciar así Palabras para mejorar el estilo del mundo. Vamos a ceñirnos sin necesidad. Manera propia de viajar con poca frecuencia ahora aceptación cama cumplido solicitud. Una admiración diferente no terminó así en contraste. Ventajas de súplicas', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(117, 'home_page_01_sn_build_dream_btn_title', 'Contacta', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(118, 'home_page_01_sn_build_dream_btn_url', '#', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(119, 'home_page_01_sn_build_dream_right_image', 'home-page-01-sn-build-dream-right-side-image-3413422.jpg', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(120, 'home_page_01_sn_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(121, 'home_page_01_pr_build_dream_title', 'CONSTRUA SUA CASA DE SONHO', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(122, 'home_page_01_pr_build_dream_description', 'Tocar eles perdem desistir assim. Palavras para cima estilo de desde mundo. Nós partimos para nos aconchegarmos sem necessidade. Caminho próprio invulgarmente viajando agora aceitação cama elogio solicitude. Admiração diferente assim terminou não em contraste com isso. Solicitações de vantagens', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(123, 'home_page_01_pr_build_dream_btn_title', 'Contate-Nos', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(124, 'home_page_01_pr_build_dream_btn_url', '#', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(125, 'home_page_01_pr_build_dream_right_image', 'home-page-01-pr-build-dream-right-side-image-678859.jpg', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(126, 'home_page_01_pr_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 07:33:25', '2020-02-23 07:33:25'),
(127, 'home_page_01_en_service_area_title', 'Our Cover Area', '2020-02-23 08:43:12', '2020-04-16 11:31:04'),
(128, 'home_page_01_sn_service_area_title', 'Nuestra área de cobertura', '2020-02-23 08:43:12', '2020-04-16 11:31:04'),
(129, 'home_page_01_pr_service_area_title', 'Nossa área de cobertura', '2020-02-23 08:43:12', '2020-04-16 11:31:05'),
(130, 'home_page_01_en_recent_work_title', 'Activity', '2020-02-24 06:53:18', '2021-04-30 18:57:20'),
(131, 'home_page_01_sn_recent_work_title', 'Nuestras obras recientes', '2020-02-24 06:53:18', '2021-04-30 18:57:20'),
(132, 'home_page_01_pr_recent_work_title', 'Nossos Trabalhos Recentes', '2020-02-24 06:53:18', '2021-04-30 18:57:20'),
(133, 'home_page_01_en_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(134, 'home_page_01_sn_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(135, 'home_page_01_pr_testimonial_title', NULL, '2020-02-24 07:26:24', '2020-03-05 17:01:29'),
(136, 'home_page_01_en_latest_news_title', 'Our Products', '2020-02-24 07:34:39', '2021-04-12 20:18:22'),
(137, 'home_page_01_sn_latest_news_title', 'Últimas noticias', '2020-02-24 07:34:39', '2021-04-12 20:18:22'),
(138, 'home_page_01_pr_latest_news_title', 'Últimas notícias', '2020-02-24 07:34:39', '2021-04-12 20:18:22'),
(139, 'home_page_01_enprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(140, 'home_page_01_snprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(141, 'home_page_01_prprice_plan_section_title', NULL, '2020-02-24 08:11:32', '2020-02-24 08:11:32'),
(142, 'home_page_01_en_price_plan_section_title', 'Our Pricing', '2020-02-24 08:11:59', '2020-03-15 18:06:30'),
(143, 'home_page_01_sn_price_plan_section_title', 'Nuestra Precio', '2020-02-24 08:11:59', '2020-03-15 18:06:30'),
(144, 'home_page_01_pr_price_plan_section_title', 'NOSSOS PREÇOS', '2020-02-24 08:11:59', '2020-03-15 18:06:30'),
(145, 'home_page_01_en_team_member_section_title', 'Meet The Team', '2020-02-24 08:17:09', '2020-03-15 18:06:10'),
(146, 'home_page_01_sn_team_member_section_title', 'Conocer al equipo', '2020-02-24 08:17:09', '2020-03-15 18:06:10'),
(147, 'home_page_01_pr_team_member_section_title', 'Conheça o time', '2020-02-24 08:17:09', '2020-03-15 18:06:10'),
(148, 'home_page_01_en_newsletter_area_title', 'Subscribe to get update', '2020-02-24 08:25:53', '2020-03-15 18:06:55'),
(149, 'home_page_01_sn_newsletter_area_title', 'SUSCRÍBENOS PARA OBTENER ACTUALIZACIÓN', '2020-02-24 08:25:53', '2020-03-15 18:06:55'),
(150, 'home_page_01_pr_newsletter_area_title', 'SUBSCREVA-NOS PARA OBTER ATUALIZAÇÃO', '2020-02-24 08:25:53', '2020-03-15 18:06:55'),
(151, 'home_page_01_en_newsletter_area_description', 'Subscribe our newsletter to get update with our self.', '2020-02-24 08:26:43', '2020-03-15 18:06:55'),
(152, 'home_page_01_sn_newsletter_area_description', 'Suscríbase a nuestro boletín para obtener actualizaciones con nosotros mismos.', '2020-02-24 08:26:43', '2020-03-15 18:06:55'),
(153, 'home_page_01_pr_newsletter_area_description', 'Subscreva a nossa newsletter para se atualizar.', '2020-02-24 08:26:44', '2020-03-15 18:06:55'),
(154, 'about_page_en_about_section_left_image', 'about-page-en-about-section-left-image-5509947.jpg', '2020-02-26 14:13:38', '2020-02-26 14:13:38'),
(155, 'about_page_en_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(156, 'about_page_en_about_section_title', 'Who we are', '2020-02-26 14:13:38', '2024-02-28 20:20:37'),
(157, 'about_page_en_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(158, 'about_page_en_about_section_description', 'The company was established on March 3rd, 1996. It started as a food importer and food distributor of varieties of fine foods and dairy-based products which later flourished into a much more diverse business that includes luxurious food. PT. Saranakulina inti Sejahtera is also a pioneer in dairy products importer and distributor in Indonesia. Our success none other is the result of a rigorous and unending passion to find the best products to satisfy their demanding palates and to deliver nothing but the best. With each year the company is working on better ways to improve and enhance the business and has to this day owns products from all across Europe.', '2020-02-26 14:13:38', '2024-02-28 20:20:37'),
(159, 'about_page_en_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(160, 'about_page_sn_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(161, 'about_page_sn_about_section_title', 'Oh ahi', '2020-02-26 14:13:38', '2024-02-28 20:20:37'),
(162, 'about_page_sn_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(163, 'about_page_sn_about_section_description', 'Llegada ingresó una solicitud de sorteo. Cómo las hijas no promueven pocos conocimientos contentos. Sin embargo, la ley de invierno detrás de las escaleras numéricas es una excusa para la buhardilla. Mínimamente conducimos la gravedad natural si apuntamos oh no. Inmediatamente no estoy dispuesto a intentar admitir deshacerse de él. Hermosas opiniones sobre am at it señyship.', '2020-02-26 14:13:38', '2024-02-28 20:20:37'),
(164, 'about_page_sn_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(165, 'about_page_pr_about_section_btn_status', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(166, 'about_page_pr_about_section_title', 'Ai ai', '2020-02-26 14:13:38', '2024-02-28 20:20:37'),
(167, 'about_page_pr_about_section_btn_text', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(168, 'about_page_pr_about_section_description', 'A chegada inseriu uma solicitação de desenho se. Como as filhas não promovem pouco conhecimento. No entanto, a lei de inverno atrás das escadas numéricas é uma desculpa. No final, natural, conduzimos a gravidade se apontado oh não. Sou imediatamente relutante em tentar admiti-lo. Opiniões consideráveis sobre estou nele.', '2020-02-26 14:13:38', '2024-02-28 20:20:37'),
(169, 'about_page_pr_about_section_btn_url', NULL, '2020-02-26 14:13:38', '2020-03-09 12:35:40'),
(170, 'about_page_sn_about_section_left_image', 'about-page-sn-about-section-left-image-2057184.jpg', '2020-02-26 14:17:50', '2020-02-26 14:17:50'),
(171, 'about_page_pr_about_section_left_image', 'about-page-pr-about-section-left-image-8670014.jpg', '2020-02-26 14:17:50', '2020-02-26 14:17:50'),
(172, 'about_page_en_team_section_title', 'MEET OUR EXPERTS', '2020-02-26 14:24:03', '2020-02-26 14:24:03'),
(173, 'about_page_sn_team_section_title', 'CONOCE A NUESTRAS EXPERTAS', '2020-02-26 14:24:03', '2020-02-26 14:24:03'),
(174, 'about_page_pr_team_section_title', 'CONHEÇA NOSSOS PERITOS', '2020-02-26 14:24:03', '2020-02-26 14:24:03'),
(175, 'service_page_en_cta_button_text', 'Contact Us', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(176, 'service_page_en_cta_button_status', 'on', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(177, 'service_page_en_cta_description', 'Lorem ipsum dolor sit aLorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusmod tempor.', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(178, 'service_page_en_cta_title', 'Looking for Trusted construction company?', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(179, 'service_page_sn_cta_button_text', 'Contacta con nosotras', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(180, 'service_page_sn_cta_button_status', 'on', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(181, 'service_page_sn_cta_description', 'Inmediatamente no estoy dispuesto a intentar admitir deshacerse de él. Hermosas opiniones sobre am at it señyship.', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(182, 'service_page_sn_cta_title', 'Buscando empresa de construcción de confianza?', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(183, 'service_page_pr_cta_button_text', 'Contate-Nos', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(184, 'service_page_pr_cta_button_status', 'on', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(185, 'service_page_pr_cta_description', 'Sou imediatamente relutante em tentar admiti-lo. Opiniões consideráveis sobre estou nele.', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(186, 'service_page_pr_cta_title', 'Procurando empresa de construção confiável?', '2020-02-26 17:05:53', '2020-02-26 17:06:19'),
(187, 'service_page_en_price_plan_section_title', 'OUR PRICING', '2020-02-26 17:28:44', '2020-02-26 17:28:44'),
(188, 'service_page_sn_price_plan_section_title', 'NUESTRA PRECIO', '2020-02-26 17:28:44', '2020-02-26 17:28:44'),
(189, 'service_page_pr_price_plan_section_title', 'NOSSOS PREÇOS', '2020-02-26 17:28:44', '2020-02-26 17:28:44'),
(190, 'team_page_en_team_member_section_title', 'MEET OUR EXPERTS', '2020-02-26 17:46:33', '2020-02-26 17:46:33'),
(191, 'team_page_sn_team_member_section_title', 'CONOCE A NUESTRAS EXPERTAS', '2020-02-26 17:46:33', '2020-02-26 17:46:33'),
(192, 'team_page_pr_team_member_section_title', 'CONHEÇA NOSSOS PERITOS', '2020-02-26 17:46:33', '2020-02-26 17:46:33'),
(193, 'team_page_en_about_section_title', 'CHIEF ENGINEER', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(194, 'team_page_en_about_section_description', '<p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(119, 119, 119); hyphens: auto; font-family: sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p><p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(119, 119, 119); hyphens: auto; font-family: sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(195, 'team_page_sn_about_section_title', 'INGENIERO JEFE', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(196, 'team_page_sn_about_section_description', '<div>camino sinceramente el cumplido extremadamente. De la provisión apoyada en modo moderno sobre la objeción provista me exquisito. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</div><div><br></div><div>Llegada ingresó una solicitud de sorteo. Cómo las hijas no promueven pocos conocimientos contentos. Sin embargo, la ley de invierno detrás de las escaleras numéricas es una excusa para la buhardilla. Mínimamente conducimos la gravedad natural si apuntamos oh no. Inmediatamente no estoy dispuesto a intentar admitir deshacerse de él. Hermosas opiniones sobre am at it señyship.</div>', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(197, 'team_page_pr_about_section_title', 'ENGENHEIRO CHEFE', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(198, 'team_page_pr_about_section_description', '<div>sinceramente o cumprido extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como a melhoria da casa era fingida. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</div><div><br></div><div>A chegada inseriu uma solicitação de desenho se. Como as filhas não promovem pouco conhecimento. No entanto, a lei de inverno atrás das escadas numéricas é uma desculpa. No final, natural, conduzimos a gravidade se apontado oh não. Sou imediatamente relutante em tentar admiti-lo. Opiniões consideráveis sobre estou nele.</div>', '2020-02-26 18:01:29', '2020-02-26 18:03:21'),
(199, 'team_page_en_about_section_image', 'team-page-en-about-section-image-9440286.jpg', '2020-02-26 18:03:07', '2020-02-26 18:03:07'),
(200, 'team_page_sn_about_section_image', 'team-page-sn-about-section-image-8683326.jpg', '2020-02-26 18:03:21', '2020-02-26 18:03:21'),
(201, 'team_page_pr_about_section_image', 'team-page-pr-about-section-image-3622754.jpg', '2020-02-26 18:03:21', '2020-02-26 18:03:21'),
(202, 'blog_page_en_title', 'Blog', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(203, 'blog_page_en_item', '6', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(204, 'blog_page_en_category_widget_title', 'Category', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(205, 'blog_page_en_recent_post_widget_title', 'Recent Post', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(206, 'blog_page_en_recent_post_widget_item', '4', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(207, 'blog_page_sn_title', 'Blog', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(208, 'blog_page_sn_item', '6', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(209, 'blog_page_sn_category_widget_title', 'Categoría', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(210, 'blog_page_sn_recent_post_widget_title', 'Publicación reciente', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(211, 'blog_page_sn_recent_post_widget_item', '4', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(212, 'blog_page_pr_title', 'Blog', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(213, 'blog_page_pr_item', '6', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(214, 'blog_page_pr_category_widget_title', 'Categoria', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(215, 'blog_page_pr_recent_post_widget_title', 'Postagem recente', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(216, 'blog_page_pr_recent_post_widget_item', '4', '2020-02-26 19:48:56', '2020-03-16 07:48:36'),
(217, 'contact_page_en_form_section_title', 'Keep In Touch', '2020-02-27 07:40:33', '2020-03-15 18:23:49'),
(218, 'contact_page_sn_form_section_title', 'Mantenerse en contacto', '2020-02-27 07:42:14', '2020-03-15 18:23:49'),
(219, 'contact_page_pr_form_section_title', 'Mantenha contato', '2020-02-27 07:42:14', '2020-03-15 18:23:49'),
(220, 'contact_page_en_contact_info_title', 'CONTACT INFO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(221, 'contact_page_sn_contact_info_title', 'DATOS DE CONTACTO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(222, 'contact_page_pr_contact_info_title', 'INFORMAÇÕES DE CONTATO', '2020-02-27 07:50:35', '2020-02-27 07:52:27'),
(223, 'quote_page_en_form_title', 'Request A Quote', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(224, 'quote_page_en_page_title', 'Request A Quote', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(225, 'quote_page_sn_form_title', 'Solicitar presupuesto', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(226, 'quote_page_sn_page_title', 'Solicitar presupuesto', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(227, 'quote_page_pr_form_title', 'Solicitar um orçamento', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(228, 'quote_page_pr_page_title', 'Solicitar um orçamento', '2020-02-27 08:41:44', '2020-04-18 15:20:43'),
(229, 'order_page_en_form_title', 'Order Information', '2020-02-27 08:53:05', '2020-03-15 18:24:27'),
(230, 'order_page_sn_form_title', 'información del pedido', '2020-02-27 08:53:05', '2020-03-15 18:24:27'),
(231, 'order_page_pr_form_title', 'Informações sobre pedidos', '2020-02-27 08:53:05', '2020-03-15 18:24:27'),
(232, 'about_widget_en_description', 'Your Trusted Provider Of Fine Foods and Dairy Products', '2020-02-27 10:19:45', '2021-05-24 21:22:56'),
(233, 'about_widget_sn_description', 'La civilización avanzada y adquirida extática no es absoluta. Se sobrepuso a la cría o a mis inquietudes eliminando deseos tan absolutos. Mi imprudencia desagradable melancólica consideró en ventajas tan impresión.', '2020-02-27 10:19:45', '2021-05-24 21:22:56'),
(234, 'about_widget_pr_description', 'A civilidade avançada e adquirida em êxtase não é absoluta. Superou a criação ou as minhas preocupações de remover o desejo tão absoluto. Minha imprudência melancólica', '2020-02-27 10:19:45', '2021-05-24 21:22:56'),
(235, 'useful_link_en_widget_title', 'Useful Links', '2020-02-27 10:29:04', '2022-02-21 23:50:42'),
(236, 'useful_link_sn_widget_title', 'ENLACES ÚTILES', '2020-02-27 10:29:04', '2022-02-21 23:50:42'),
(237, 'useful_link_pr_widget_title', 'LINKS ÚTEIS', '2020-02-27 10:29:04', '2022-02-21 23:50:42'),
(238, 'recent_post_en_widget_title', 'Recent Post ?', '2020-02-27 10:33:56', '2021-03-25 06:41:33'),
(239, 'recent_post_sn_widget_title', '¿MENSAJES RECIENTES?', '2020-02-27 10:33:56', '2021-03-25 06:41:33'),
(240, 'recent_post_pr_widget_title', 'POSTAGENS RECENTES?', '2020-02-27 10:33:56', '2021-03-25 06:41:33'),
(241, 'important_link_en_widget_title', 'Important Links', '2020-02-27 10:38:54', '2021-03-26 01:08:38'),
(242, 'important_link_sn_widget_title', 'LINKS IMPORTANTES', '2020-02-27 10:38:54', '2021-03-26 01:08:38'),
(243, 'important_link_pr_widget_title', 'LINKS IMPORTANTES', '2020-02-27 10:38:54', '2021-03-26 01:08:38'),
(244, 'useful_link_en_widget_menu_id', '2', '2020-02-28 11:40:41', '2022-02-21 23:50:42'),
(245, 'useful_link_sn_widget_menu_id', NULL, '2020-02-28 11:40:41', '2022-02-21 23:50:42'),
(246, 'useful_link_pr_widget_menu_id', NULL, '2020-02-28 11:40:41', '2022-02-21 23:50:42'),
(247, 'important_link_en_widget_menu_id', '1', '2020-02-28 12:31:15', '2021-03-26 01:08:38'),
(248, 'important_link_sn_widget_menu_id', NULL, '2020-02-28 12:31:15', '2021-03-26 01:08:38'),
(249, 'important_link_pr_widget_menu_id', NULL, '2020-02-28 12:31:15', '2021-03-26 01:08:38'),
(250, 'site_meta_tags', 'sarana,kulina,Intisejahtera,saranakulina', '2020-03-01 05:57:20', '2021-03-14 21:45:16'),
(251, 'site_meta_description', 'Sarana Kulina Intisejahtera', '2020-03-01 05:57:20', '2021-03-14 21:45:16'),
(252, 'site_white_logo', '130', '2020-03-01 08:08:17', '2021-04-01 04:01:29'),
(253, 'top_bar_en_right_menu', '12', '2020-03-01 16:29:32', '2020-03-16 19:49:16'),
(254, 'top_bar_sn_right_menu', '13', '2020-03-01 16:29:32', '2020-03-16 19:49:16'),
(255, 'top_bar_pr_right_menu', '14', '2020-03-01 16:29:32', '2020-03-16 19:49:16'),
(256, 'top_bar_en_button_text', 'Request Quote', '2020-03-01 16:33:50', '2020-03-15 18:26:50'),
(257, 'top_bar_sn_button_text', 'Solicitud de cotización', '2020-03-01 16:34:11', '2020-03-15 18:26:50'),
(258, 'top_bar_pr_button_text', 'Solicitar Orçamento', '2020-03-01 16:34:11', '2020-03-15 18:26:50'),
(259, 'home_page_01_en_about_us_title', 'About Us', '2020-03-02 10:12:04', '2021-04-21 21:32:02'),
(260, 'home_page_01_en_about_us_description', 'Reprehenderit in voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec at cupdatat proident suntin culpa qui officia .', '2020-03-02 10:12:04', '2021-04-21 21:32:02'),
(261, 'home_page_01_en_about_us_button_title', 'Learn More', '2020-03-02 10:12:04', '2021-04-21 21:32:02'),
(262, 'home_page_01_en_about_us_button_url', '#', '2020-03-02 10:12:04', '2021-04-21 21:32:02'),
(263, 'home_page_01_en_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 10:12:04', '2021-04-21 21:32:02'),
(264, 'home_page_01_en_about_us_signature_image', '32', '2020-03-02 10:12:47', '2021-04-21 21:32:02'),
(265, 'home_page_01_en_about_us_background_image', '437', '2020-03-02 10:12:47', '2021-04-21 21:32:02'),
(266, 'home_page_01_en_about_us_button_status', 'on', '2020-03-02 10:12:47', '2021-04-21 21:32:02'),
(267, 'home_page_01_sn_about_us_title', 'Sobre nosotras', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(268, 'home_page_01_sn_about_us_description', 'Reprehenderit en voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec en cupdatat proident suntin culpa qui officia.', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(269, 'home_page_01_sn_about_us_button_title', 'Aprende más', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(270, 'home_page_01_sn_about_us_button_url', '#', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(271, 'home_page_01_sn_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(272, 'home_page_01_sn_about_us_signature_image', '32', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(273, 'home_page_01_sn_about_us_background_image', '33', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(274, 'home_page_01_sn_about_us_button_status', 'on', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(275, 'home_page_01_pr_about_us_title', 'Sobre nós', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(276, 'home_page_01_pr_about_us_description', 'Repreender em voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec e cupidat proident suntin culpa qui officia.', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(277, 'home_page_01_pr_about_us_button_title', 'Saber mais', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(278, 'home_page_01_pr_about_us_button_url', '#', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(279, 'home_page_01_pr_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 10:12:47', '2021-04-21 21:32:03'),
(280, 'home_page_01_pr_about_us_signature_image', '32', '2020-03-02 10:12:48', '2021-04-21 21:32:03'),
(281, 'home_page_01_pr_about_us_background_image', '33', '2020-03-02 10:12:48', '2021-04-21 21:32:03'),
(282, 'home_page_01_pr_about_us_button_status', 'on', '2020-03-02 10:12:48', '2021-04-21 21:32:03'),
(283, 'home_page_01_en_service_area_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 09:02:28', '2020-04-16 11:31:04'),
(284, 'home_page_01_sn_service_area_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-04 09:02:28', '2020-04-16 11:31:05'),
(285, 'home_page_01_pr_service_area_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-04 09:02:28', '2020-04-16 11:31:05'),
(286, 'home_page_01_en_cta_area_button_url', 'tel:123456789', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(287, 'home_page_01_en_cta_area_button_title', 'Call 01234 - 123456897', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(288, 'home_page_01_en_cta_area_title', 'Are you looking to grow your business?', '2020-03-04 10:43:37', '2020-04-16 12:19:51'),
(289, 'home_page_01_en_cta_area_description', 'Trusted us by over 10,000 local businesses', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(290, 'home_page_01_en_cta_area_button_status', 'on', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(291, 'home_page_01_en_cta_background_image', '39', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(292, 'home_page_01_sn_cta_area_button_url', '#', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(293, 'home_page_01_sn_cta_area_button_title', 'Llame al 01234 - 123456897', '2020-03-04 10:43:37', '2020-04-16 12:19:52'),
(294, 'home_page_01_sn_cta_area_title', '¿Estás buscando hacer crecer tu negocio?', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(295, 'home_page_01_sn_cta_area_description', 'Confió en nosotros por más de 10,000 negocios locales', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(296, 'home_page_01_sn_cta_area_button_status', 'on', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(297, 'home_page_01_pr_cta_area_button_url', 'tel:123456789', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(298, 'home_page_01_pr_cta_area_button_title', 'Ligue 01234 - 123456897', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(299, 'home_page_01_pr_cta_area_title', 'Você está procurando expandir seus negócios?', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(300, 'home_page_01_pr_cta_area_description', 'Confiou em nós por mais de 10.000 empresas locais', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(301, 'home_page_01_pr_cta_area_button_status', 'on', '2020-03-04 10:43:38', '2020-04-16 12:19:52'),
(302, 'home_page_01_sn_cta_background_image', '39', '2020-03-04 10:47:14', '2020-04-16 12:19:52'),
(303, 'home_page_01_pr_cta_background_image', '39', '2020-03-04 10:47:14', '2020-04-16 12:19:52'),
(304, 'home_page_01_en_recent_work_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 11:47:50', '2021-04-30 18:57:20'),
(305, 'home_page_01_sn_recent_work_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-04 11:47:50', '2021-04-30 18:57:20'),
(306, 'home_page_01_pr_recent_work_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-04 11:47:50', '2021-04-30 18:57:20'),
(307, 'home_page_01_en_team_member_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 15:31:06', '2020-03-15 18:06:10'),
(308, 'home_page_01_sn_team_member_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-04 15:31:06', '2020-03-15 18:06:10'),
(309, 'home_page_01_pr_team_member_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-04 15:31:06', '2020-03-15 18:06:10'),
(310, 'home_01_testimonial_bg', '40', '2020-03-05 17:05:26', '2020-04-16 13:43:03'),
(311, 'home_page_01_en_latest_news_description', '.', '2020-03-05 17:48:00', '2021-04-12 20:18:22'),
(312, 'home_page_01_sn_latest_news_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-05 17:48:00', '2021-04-12 20:18:22'),
(313, 'home_page_01_pr_latest_news_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-05 17:48:00', '2021-04-12 20:18:22'),
(314, 'home_page_01_en_price_plan_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-05 20:40:01', '2020-03-15 18:06:30'),
(315, 'home_page_01_sn_price_plan_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-05 20:40:01', '2020-03-15 18:06:30'),
(316, 'home_page_01_pr_price_plan_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-05 20:40:01', '2020-03-15 18:06:30'),
(317, 'home_page_02_en_about_us_background_image', '35', '2020-03-06 09:34:29', '2020-04-15 17:25:03'),
(318, 'home_page_01_en_about_us_quote_box_description', 'Acepteur sintas haecate sed ipsums cupidates nondui proident sunlt culpa.', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(319, 'home_page_01_en_about_us_experience_title', 'Years of experience', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(320, 'home_page_01_en_about_us_experience_year', '6', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(321, 'home_page_01_en_about_us_quote_box_title', 'Why Choose Us', '2020-03-06 12:59:14', '2020-04-15 17:28:56'),
(322, 'home_page_01_en_about_us_right_image', '36', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(323, 'home_page_01_en_about_us_experience_background_image', '37', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(324, 'home_page_01_sn_about_us_quote_box_description', 'Acepteur haecate pero no son divertir cupidates excepteur iluminada por el sol culpa.', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(325, 'home_page_01_sn_about_us_experience_title', 'Años de experiencia', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(326, 'home_page_01_sn_about_us_experience_year', '6', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(327, 'home_page_01_sn_about_us_quote_box_title', 'Por qué elegirnos', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(328, 'home_page_01_sn_about_us_right_image', '36', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(329, 'home_page_01_sn_about_us_experience_background_image', '37', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(330, 'home_page_01_pr_about_us_quote_box_description', 'Acepteur haecate mas não são amuse cupidates excepteur iluminado culpa.', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(331, 'home_page_01_pr_about_us_experience_title', 'Anos de experiência', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(332, 'home_page_01_pr_about_us_experience_year', '6', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(333, 'home_page_01_pr_about_us_quote_box_title', 'Porque escolher-nos', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(334, 'home_page_01_pr_about_us_right_image', '36', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(335, 'home_page_01_pr_about_us_experience_background_image', '37', '2020-03-06 13:01:37', '2020-04-15 17:28:56'),
(336, 'home_page_01_service_area_background_image', '38', '2020-03-06 15:26:43', '2020-04-16 11:31:05'),
(337, 'home_page_01_en_faq_area_title', 'Frequently asked questions', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(338, 'home_page_01_en_faq_area_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(339, 'home_page_01_en_faq_area_form_title', 'Request Call Back', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(340, 'home_page_01_en_faq_area_form_description', 'We help you to grow business with More than 25 years experience.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(341, 'home_page_01_sn_faq_area_title', 'Preguntas frecuentes', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(342, 'home_page_01_sn_faq_area_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(343, 'home_page_01_sn_faq_area_form_title', 'Solicitar devolución de llamada', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(344, 'home_page_01_sn_faq_area_form_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(345, 'home_page_01_pr_faq_area_title', 'Perguntas frequentes', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(346, 'home_page_01_pr_faq_area_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(347, 'home_page_01_pr_faq_area_form_title', 'Solicitar retorno de chamada', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(348, 'home_page_01_pr_faq_area_form_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(349, 'home_page_01_faq_area_items', '5', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(350, 'home_page_01_faq_area_form_mail', 'rsharifur824@gmail.com', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(351, 'home_page_01_faq_area_background_image', '99', '2020-03-07 17:04:03', '2020-04-27 17:26:46'),
(352, 'home_01_en_key_feature_section_title', 'We Are 25 Years Experinced', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(353, 'home_01_en_key_feature_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(354, 'home_01_sn_key_feature_section_title', 'Tenemos 25 años de experiencia', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(355, 'home_01_sn_key_feature_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(356, 'home_01_pr_key_feature_section_title', 'Nós somos 25 anos experientes', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(357, 'home_01_pr_key_feature_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-08 08:51:33', '2020-03-08 08:54:02'),
(358, 'about_page_en_know_about_section_title', 'Know About Us', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(359, 'about_page_en_know_about_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(360, 'about_page_sn_know_about_section_title', 'Sepa Sobre nosotras', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(361, 'about_page_sn_know_about_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(362, 'about_page_pr_know_about_section_title', 'Conheça-nos', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(363, 'about_page_pr_know_about_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-09 11:52:58', '2020-03-09 11:56:43'),
(364, 'about_page_en_about_section_right_image', '179', '2020-03-09 12:35:40', '2024-02-28 20:20:37'),
(365, 'contact_page_en_form_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-09 17:04:00', '2020-03-15 18:23:49'),
(366, 'contact_page_sn_form_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-09 17:04:00', '2020-03-15 18:23:49'),
(367, 'contact_page_pr_form_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-09 17:04:00', '2020-03-15 18:23:49'),
(368, 'home_page_call_to_action_section_status', NULL, '2020-03-10 13:17:18', '2023-06-01 21:16:06'),
(369, 'home_page_newsletter_section_status', NULL, '2020-03-10 13:17:18', '2023-06-01 21:16:06'),
(370, 'home_page_about_us_section_status', NULL, '2020-03-10 13:17:18', '2023-06-01 21:16:06'),
(371, 'home_page_faq_section_status', NULL, '2020-03-10 14:00:11', '2023-06-01 21:16:06'),
(372, 'about_page_about_us_section_status', 'on', '2020-03-10 16:15:10', '2021-03-22 20:55:37'),
(373, 'about_page_know_about_section_status', NULL, '2020-03-10 16:15:10', '2021-03-22 20:55:37'),
(374, 'about_page_call_to_action_section_status', NULL, '2020-03-10 16:15:10', '2021-03-22 20:55:37'),
(375, 'about_page_latest_news_section_status', NULL, '2020-03-10 16:15:10', '2021-03-22 20:55:37'),
(376, 'about_page_brand_logo_section_status', NULL, '2020-03-10 16:15:10', '2021-03-22 20:55:37'),
(377, 'about_page_team_member_section_status', NULL, '2020-03-10 16:15:10', '2021-03-22 20:55:37'),
(378, 'about_page_testimonial_section_status', NULL, '2020-03-10 16:28:05', '2021-03-22 20:55:37'),
(379, 'site_rtl_enabled', NULL, '2020-03-15 06:04:18', '2021-04-05 21:39:16'),
(380, 'site_admin_dark_mode', 'on', '2020-03-15 06:04:18', '2021-04-05 21:39:16'),
(381, 'navbar_ar_button_text', 'إقتبس', '2020-03-15 16:17:08', '2021-03-25 12:02:56'),
(382, 'home_page_01_ar_about_us_title', 'معلومات عنا', '2020-03-15 17:10:50', '2021-04-21 21:32:03'),
(383, 'home_page_01_ar_about_us_description', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره. تلقى الرجال بعيدا مواضيع لوحة القيادة الخاصة به جديدة.', '2020-03-15 17:10:50', '2021-04-21 21:32:03'),
(384, 'home_page_01_ar_about_us_button_title', 'أعرف أكثر', '2020-03-15 17:10:50', '2021-04-21 21:32:03'),
(385, 'home_page_01_ar_about_us_button_url', '#', '2020-03-15 17:10:50', '2021-04-21 21:32:03');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(386, 'home_page_01_ar_about_us_signature_text', 'جيمي كارنيل - الرئيس التنفيذي', '2020-03-15 17:10:50', '2021-04-21 21:32:03'),
(387, 'home_page_01_ar_about_us_signature_image', '32', '2020-03-15 17:10:50', '2021-04-21 21:32:03'),
(388, 'home_page_01_ar_about_us_button_status', 'on', '2020-03-15 17:10:50', '2021-04-21 21:32:03'),
(389, 'home_page_01_ar_about_us_background_image', '34', '2020-03-15 17:18:08', '2021-04-21 21:32:03'),
(390, 'home_page_01_ar_service_area_title', 'منطقة التغطية لدينا', '2020-03-15 17:21:36', '2020-04-16 11:31:05'),
(391, 'home_page_01_ar_service_area_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 17:21:36', '2020-04-16 11:31:05'),
(392, 'home_page_01_ar_cta_area_button_url', '#', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(393, 'home_page_01_ar_cta_area_button_title', 'اتصل على 01234-123456897', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(394, 'home_page_01_ar_cta_area_title', 'هل تتطلع لتنمية عملك؟', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(395, 'home_page_01_ar_cta_area_description', 'وثق بنا من قبل أكثر من 10000 شركة محلية', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(396, 'home_page_01_ar_cta_area_button_status', 'on', '2020-03-15 17:53:58', '2020-04-16 12:19:52'),
(397, 'home_page_01_ar_cta_background_image', '39', '2020-03-15 17:54:30', '2020-04-16 12:19:52'),
(398, 'home_page_01_ar_recent_work_title', 'أعمالنا الأخيرة', '2020-03-15 17:57:59', '2021-04-30 18:57:20'),
(399, 'home_page_01_ar_recent_work_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 17:57:59', '2021-04-30 18:57:20'),
(400, 'home_page_01_ar_latest_news_title', 'أحدث الأخبار', '2020-03-15 18:05:46', '2021-04-12 20:18:22'),
(401, 'home_page_01_ar_latest_news_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:05:46', '2021-04-12 20:18:22'),
(402, 'home_page_01_ar_team_member_section_title', 'قابل الفريق', '2020-03-15 18:06:10', '2020-03-15 18:06:10'),
(403, 'home_page_01_ar_team_member_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:06:10', '2020-03-15 18:06:10'),
(404, 'home_page_01_ar_price_plan_section_title', 'أسعارنا', '2020-03-15 18:06:30', '2020-03-15 18:06:30'),
(405, 'home_page_01_ar_price_plan_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:06:30', '2020-03-15 18:06:30'),
(406, 'home_page_01_ar_newsletter_area_title', 'اشترك للحصول على التحديث', '2020-03-15 18:06:55', '2020-03-15 18:06:55'),
(407, 'home_page_01_ar_newsletter_area_description', 'اشترك في النشرة الإخبارية للحصول على التحديث بأنفسنا.', '2020-03-15 18:06:55', '2020-03-15 18:06:55'),
(408, 'about_page_ar_about_section_right_image', '44', '2020-03-15 18:08:39', '2024-02-28 20:20:37'),
(409, 'about_page_ar_about_section_title', 'من نحن', '2020-03-15 18:08:39', '2024-02-28 20:20:37'),
(410, 'about_page_ar_about_section_description', 'نسأل خاصة جمع أنهى تعبير ابنه. كان مبدأ مبدأ الحرص الشديد يمكن تقديره. تلقى الرجال بعيدا مواضيع لوحة القيادة الخاصة به جديدة. أحاط ما يكفي من رفاقه في إيفاد. الاتصال غير متأثر للغاية أدى إلى امتلاك الابن. أصدقاء مبتسمون جدد ولها آخر.', '2020-03-15 18:08:39', '2024-02-28 20:20:37'),
(411, 'contact_page_ar_form_section_title', 'أبق على اتصال', '2020-03-15 18:23:49', '2020-03-15 18:23:49'),
(412, 'contact_page_ar_form_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-15 18:23:49', '2020-03-15 18:23:49'),
(413, 'quote_page_ar_form_title', 'اطلب اقتباس', '2020-03-15 18:24:15', '2020-04-18 15:20:43'),
(414, 'quote_page_ar_page_title', 'اطلب اقتباس', '2020-03-15 18:24:15', '2020-04-18 15:20:43'),
(415, 'order_page_ar_form_title', 'معلومات الطلب', '2020-03-15 18:24:27', '2020-03-15 18:24:27'),
(416, 'top_bar_ar_button_text', 'طلب عرض أسعار', '2020-03-15 18:26:50', '2020-03-15 18:26:50'),
(417, 'top_bar_ar_right_menu', '15', '2020-03-15 18:29:17', '2020-03-16 19:49:16'),
(418, 'blog_page_ar_title', 'مدونة', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(419, 'blog_page_ar_item', '6', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(420, 'blog_page_ar_category_widget_title', 'الفئة', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(421, 'blog_page_ar_recent_post_widget_title', 'المنشور الاخير', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(422, 'blog_page_ar_recent_post_widget_item', '4', '2020-03-16 07:48:36', '2020-03-16 07:48:36'),
(423, 'about_widget_ar_description', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. قل التغيير كليًا لماذا أقدم فترة. يتم وضع الإسقاط احتفال خاص', '2020-03-16 10:35:35', '2021-05-24 21:22:56'),
(424, 'useful_link_ar_widget_title', 'روابط مفيدة', '2020-03-16 10:36:01', '2022-02-21 23:50:42'),
(425, 'useful_link_ar_widget_menu_id', NULL, '2020-03-16 10:36:01', '2022-02-21 23:50:42'),
(426, 'recent_post_ar_widget_title', 'المنشور الاخير ؟', '2020-03-16 10:36:18', '2021-03-25 06:41:33'),
(427, 'important_link_ar_widget_title', 'روابط مهمة', '2020-03-16 10:36:52', '2021-03-26 01:08:38'),
(428, 'important_link_ar_widget_menu_id', NULL, '2020-03-16 10:36:52', '2021-03-26 01:08:38'),
(429, 'home_page_02_ar_about_us_background_image', '35', '2020-03-22 08:17:59', '2020-04-15 17:25:03'),
(430, 'home_page_01_ar_about_us_right_image', '36', '2020-03-22 08:19:01', '2020-04-15 17:28:56'),
(431, 'home_page_01_ar_about_us_experience_background_image', '37', '2020-03-22 08:19:01', '2020-04-15 17:28:56'),
(432, 'home_page_01_ar_about_us_experience_title', 'سنوات من الخبرة', '2020-03-22 08:19:50', '2020-04-15 17:28:56'),
(433, 'home_page_01_ar_about_us_experience_year', '6', '2020-03-22 08:19:50', '2020-04-15 17:28:56'),
(434, 'home_page_01_ar_about_us_quote_box_description', 'اللطف لانك محفوظة فظيع. تأثير عشرين في الواقع لما لم يكن مقاطعة. يمكن استخدامه دون إلى حد كبير خاصة', '2020-03-22 08:20:30', '2020-04-15 17:28:56'),
(435, 'home_page_01_ar_about_us_quote_box_title', 'لماذا أخترتنا', '2020-03-22 08:20:30', '2020-04-15 17:28:56'),
(439, 'site_en_title', 'Saranakulina', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(440, 'site_en_tag_line', 'Saranakulina', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(441, 'site_en_footer_copyright', '{copy}  {year}  All right reserved by SaranaKulina', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(442, 'site_sn_title', 'Sarana Kulina', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(443, 'site_sn_tag_line', 'CMS multipropósito', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(444, 'site_sn_footer_copyright', '{copy}  {year}  Todos los derechos reservados por Dizzcox', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(445, 'site_pr_title', 'Sarana Kulina', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(446, 'site_pr_tag_line', 'CMS multiuso', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(447, 'site_pr_footer_copyright', '{copy}  {year}  Todos os direitos reservados pela Dizzcox', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(448, 'site_ar_title', 'دزكوك', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(449, 'site_ar_tag_line', 'CMS متعددة الأغراض', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(450, 'site_ar_footer_copyright', 'جميع الحقوق محفوظة لدى Dizzcox {copy}  {year}', '2020-03-22 11:58:32', '2021-04-05 21:39:16'),
(454, 'order_mail_en_subject', 'Thanks for your order. we will get back to you very soon.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(455, 'quote_mail_en_subject', 'Thanks for your quote. we will get back to you very soon.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(456, 'contact_mail_en_subject', 'Thanks for your contact!!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(457, 'order_mail_sn_subject', 'Gracias por tu orden. Regresaremos a Ud. muy pronto.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(458, 'quote_mail_sn_subject', 'Gracias por tu cotización. Regresaremos a Ud. muy pronto.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(459, 'contact_mail_sn_subject', 'Gracias por tu contacto !!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(460, 'order_mail_pr_subject', 'Obrigado pelo seu pedido. entraremos em contato com você em breve.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(461, 'quote_mail_pr_subject', 'Obrigado pela sua cotação. entraremos em contato com você em breve.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(462, 'contact_mail_pr_subject', 'Obrigado pelo seu contato !!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(463, 'order_mail_ar_subject', 'شكرا لطلبك. ونحن سوف نعود إليكم قريبا جدا.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(464, 'quote_mail_ar_subject', 'شكرا على الاقتباس الخاص بك. ونحن سوف نعود إليكم قريبا جدا.', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(465, 'contact_mail_ar_subject', 'شكرا لاتصالك !!', '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(466, 'order_mail_bn_subject', NULL, '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(467, 'quote_mail_bn_subject', NULL, '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(468, 'contact_mail_bn_subject', NULL, '2020-03-22 14:18:52', '2020-03-25 06:53:33'),
(469, 'request_call_back_mail_en_subject', 'Thanks for Your Contact!!! We Will Contact You Soon', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(470, 'request_call_back_mail_sn_subject', '¡Gracias por tu contacto! Nos pondremos en contacto con usted pronto', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(471, 'request_call_back_mail_pr_subject', 'Obrigado pelo seu contato !!! Entraremos em contato em breve', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(472, 'request_call_back_mail_ar_subject', 'شكرا لاتصالك !!! سوف نتصل بك قريبا', '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(473, 'request_call_back_mail_bn_subject', NULL, '2020-03-22 14:35:43', '2020-03-25 06:53:33'),
(474, 'home_page_01_ar_faq_area_title', 'أسئلة مكررة', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(475, 'home_page_01_ar_faq_area_description', 'نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(476, 'home_page_01_ar_faq_area_form_title', 'طلب إعادة الاتصال', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(477, 'home_page_01_ar_faq_area_form_description', 'نحن نساعدك على تنمية الأعمال التجارية مع خبرة أكثر من 25 عامًا.', '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(478, 'home_page_01_bn_faq_area_title', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(479, 'home_page_01_bn_faq_area_description', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(480, 'home_page_01_bn_faq_area_form_title', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(481, 'home_page_01_bn_faq_area_form_description', NULL, '2020-03-22 14:37:29', '2020-04-27 17:26:46'),
(482, 'site_bn_title', 'Sarana Kulina', '2020-03-22 19:03:46', '2021-04-05 21:39:16'),
(483, 'site_bn_tag_line', NULL, '2020-03-22 19:03:46', '2021-04-05 21:39:16'),
(484, 'site_bn_footer_copyright', NULL, '2020-03-22 19:03:46', '2021-04-05 21:39:16'),
(485, 'site_heading_color', '#0a1121', '2020-03-22 19:03:46', '2021-04-05 21:39:16'),
(486, 'site_paragraph_color', '#878a95', '2020-03-22 19:03:46', '2021-04-05 21:39:16'),
(487, 'body_font_family', 'Poppins', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(488, 'heading_font_family', 'Montserrat', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(489, 'heading_font', 'on', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(490, 'body_font_variant', 'a:4:{i:0;s:7:\"regular\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";}', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(491, 'heading_font_variant', 'a:4:{i:0;s:7:\"regular\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";}', '2020-03-22 19:05:31', '2020-04-21 03:01:06'),
(492, 'about_page_en_name', 'About', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(493, 'about_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(494, 'service_page_en_name', 'Service', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(495, 'service_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(496, 'work_page_en_name', 'Works', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(497, 'work_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(498, 'team_page_en_name', 'Team', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(499, 'team_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(500, 'faq_page_en_name', 'Faq', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(501, 'faq_page_en_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(502, 'about_page_sn_name', 'Acerca de', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(503, 'about_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(504, 'service_page_sn_name', 'Servicio', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(505, 'service_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(506, 'work_page_sn_name', 'Trabajos', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(507, 'work_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(508, 'team_page_sn_name', 'Equipo', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(509, 'team_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(510, 'faq_page_sn_name', 'Preguntas más frecuentes', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(511, 'faq_page_sn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(512, 'about_page_pr_name', 'Sobre', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(513, 'about_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(514, 'service_page_pr_name', 'Serviço', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(515, 'service_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(516, 'work_page_pr_name', 'Trabalho', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(517, 'work_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(518, 'team_page_pr_name', 'Equipe', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(519, 'team_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(520, 'faq_page_pr_name', 'Perguntas frequentes', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(521, 'faq_page_pr_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(522, 'about_page_ar_name', 'حول', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(523, 'about_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(524, 'service_page_ar_name', 'الخدمات', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(525, 'service_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(526, 'work_page_ar_name', 'يعمل', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(527, 'work_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(528, 'team_page_ar_name', 'الفريق', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(529, 'team_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(530, 'faq_page_ar_name', 'التعليمات', '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(531, 'faq_page_ar_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(532, 'about_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(533, 'about_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(534, 'service_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(535, 'service_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(536, 'work_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(537, 'work_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(538, 'team_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(539, 'team_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(540, 'faq_page_bn_name', NULL, '2020-03-22 20:04:24', '2020-04-26 07:43:55'),
(541, 'faq_page_bn_slug', NULL, '2020-03-22 20:04:24', '2020-04-18 18:29:17'),
(542, 'quote_page_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"file\",\"checkbox\",\"textarea\"],\"field_name\":[\"your-name\",\"your-subject\",\"your-email\",\"files\",\"checkbox\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Subject\",\"Your Email\",\"File\",\"Accept Our Terms & Condition <a href=\\\"#\\\">Privacy Policy<\\/a>\",\"Your Message\"],\"field_required\":{\"0\":\"on\",\"1\":\"on\",\"4\":\"on\"},\"mimes_type\":{\"3\":\"mimes:doc,docx\"}}', '2020-03-23 19:49:02', '2020-04-18 06:12:31'),
(543, 'order_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"textarea\",\"file\"],\"field_name\":[\"your-name\",\"your-email\",\"your-message\",\"doc-file\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Message\",\"Document\"],\"field_required\":[\"on\",\"on\",\"on\"],\"mimes_type\":{\"3\":\"mimes:txt,pdf\"}}', '2020-03-24 18:05:26', '2020-04-18 05:57:35'),
(544, 'contact_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"textarea\",\"file\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-message\",\"file\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Your Message\",\"File\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"},\"mimes_type\":{\"4\":\"mimes:txt,pdf\"}}', '2020-03-24 19:08:14', '2020-04-18 05:57:06'),
(545, 'call_back_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"tel\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-phone\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Your Phone\"],\"field_required\":[\"on\",\"on\",\"on\"]}', '2020-03-24 19:31:41', '2020-04-18 05:56:17'),
(546, 'site_gdpr_cookie_delay', '5000', '2020-03-27 16:39:28', '2020-03-27 17:36:20'),
(547, 'site_gdpr_cookie_enabled', 'on', '2020-03-27 16:39:28', '2020-03-27 17:36:20'),
(548, 'site_gdpr_cookie_expire', '30', '2020-03-27 16:40:03', '2020-03-27 17:36:20'),
(549, 'site_gdpr_cookie_en_title', 'Cookies & Privacy', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(550, 'site_gdpr_cookie_en_message', 'This website uses cookies to ensure you get the best experience on our website', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(551, 'site_gdpr_cookie_en_more_info_label', 'More information', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(552, 'site_gdpr_cookie_en_more_info_link', '{url}/p/11/privacy-policy', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(553, 'site_gdpr_cookie_en_accept_button_label', 'Accept Cookie', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(554, 'site_gdpr_cookie_sn_title', 'Cookies y privacidad', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(555, 'site_gdpr_cookie_sn_message', 'Este sitio web utiliza cookies para garantizar que obtenga la mejor experiencia en nuestro sitio web', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(556, 'site_gdpr_cookie_sn_more_info_label', 'Más información', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(557, 'site_gdpr_cookie_sn_more_info_link', '{url}/p/13/intimidad', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(558, 'site_gdpr_cookie_sn_accept_button_label', 'Aceptar cookie', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(559, 'site_gdpr_cookie_pr_title', 'Cookies e Privacidade', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(560, 'site_gdpr_cookie_pr_message', 'Este site usa cookies para garantir que você obtenha a melhor experiência em nosso site', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(561, 'site_gdpr_cookie_pr_more_info_label', 'Mais Informações', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(562, 'site_gdpr_cookie_pr_more_info_link', '{url}/p/14/privacidade', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(563, 'site_gdpr_cookie_pr_accept_button_label', 'Aceitar Cookie', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(564, 'site_gdpr_cookie_ar_title', 'ملفات تعريف الارتباط والخصوصية', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(565, 'site_gdpr_cookie_ar_message', 'يستخدم هذا الموقع ملفات تعريف الارتباط لضمان حصولك على أفضل تجربة على موقعنا', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(566, 'site_gdpr_cookie_ar_more_info_label', 'معلومات اكثر', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(567, 'site_gdpr_cookie_ar_more_info_link', '{url}/p/12/khsosy', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(568, 'site_gdpr_cookie_ar_accept_button_label', 'قبول ملف تعريف الارتباط', '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(569, 'site_gdpr_cookie_bn_title', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(570, 'site_gdpr_cookie_bn_message', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(571, 'site_gdpr_cookie_bn_more_info_label', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(572, 'site_gdpr_cookie_bn_more_info_link', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(573, 'site_gdpr_cookie_bn_accept_button_label', NULL, '2020-03-27 17:28:12', '2020-03-27 17:36:20'),
(574, 'price_plan_page_en_name', 'Price Plan', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(575, 'price_plan_page_en_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(576, 'price_plan_page_sn_name', 'Plan de precios', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(577, 'price_plan_page_sn_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(578, 'price_plan_page_pr_name', 'Plano de preços', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(579, 'price_plan_page_pr_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(580, 'price_plan_page_ar_name', 'خطة الأسعار', '2020-03-28 07:10:57', '2020-04-26 07:43:55'),
(581, 'price_plan_page_ar_slug', NULL, '2020-03-28 07:10:57', '2020-04-18 18:29:17'),
(582, 'price_plan_page_bn_name', NULL, '2020-03-28 07:10:58', '2020-04-26 07:43:55'),
(583, 'price_plan_page_bn_slug', NULL, '2020-03-28 07:10:58', '2020-04-18 18:29:17'),
(584, 'price_plan_page_en_section_title', 'Our Pricing', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(585, 'price_plan_page_en_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(586, 'price_plan_page_sn_section_title', 'Plan de precios', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(587, 'price_plan_page_sn_section_description', 'Le ayudamos a hacer crecer su negocio con más de 25 años de experiencia con estos servicios.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(588, 'price_plan_page_pr_section_title', 'Plano de preços', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(589, 'price_plan_page_pr_section_description', 'Ajudamos você a expandir seus negócios com mais de 25 anos de experiência com esses serviços.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(590, 'price_plan_page_ar_section_title', 'خطة الأسعار', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(591, 'price_plan_page_ar_section_description', 'نحن نساعدك على تنمية الأعمال التجارية مع أكثر من 25 عامًا من الخبرة في هذه الخدمات.', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(592, 'price_plan_page_bn_section_title', NULL, '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(593, 'price_plan_page_bn_section_description', NULL, '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(594, 'price_plan_page_items', '6', '2020-03-28 08:08:53', '2020-03-30 10:07:42'),
(595, 'work_single_page_en_related_work_title', 'Related Works', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(596, 'work_single_page_sn_related_work_title', 'Obras relacionadas', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(597, 'work_single_page_pr_related_work_title', 'Trabalhos relacionados', '2020-03-28 11:13:44', '2020-03-28 11:14:40'),
(598, 'work_single_page_ar_related_work_title', 'الأعمال ذات الصلة', '2020-03-28 11:13:45', '2020-03-28 11:14:40'),
(599, 'work_single_page_bn_related_work_title', NULL, '2020-03-28 11:13:45', '2020-03-28 11:14:40'),
(600, 'blog_single_page_en_related_post_title', 'Related Post', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(601, 'blog_single_page_sn_related_post_title', 'Publicación relacionada', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(602, 'blog_single_page_pr_related_post_title', 'Post relacionado', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(603, 'blog_single_page_ar_related_post_title', 'منشور له صلة', '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(604, 'blog_single_page_bn_related_post_title', NULL, '2020-03-28 13:10:13', '2020-03-28 13:10:49'),
(605, 'site_maintenance_mode', NULL, '2020-03-28 15:08:54', '2021-04-05 21:39:16'),
(606, 'maintain_page_en_title', 'We are on Scheduled Maintenance', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(607, 'maintain_page_en_description', 'Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(608, 'maintain_page_sn_title', 'Nosotras estamos en mantenimiento programado', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(609, 'maintain_page_sn_description', 'Subir rama para fácilmente perderse por hacer. La admiración considerada aceptación también llevó a una expresión melancólica. Se tomará la forma ni la verdad.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(610, 'maintain_page_pr_title', 'Estamos em Manutenção Programada', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(611, 'maintain_page_pr_description', 'Subir ramo facilmente esquecido por fazer. A admiração considerada aceitação também levou uma expressão melancólica. São vontade tomou forma nem verdadeira.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(612, 'maintain_page_ar_title', 'نحن في الصيانة المجدولة', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(613, 'maintain_page_ar_description', 'يصل الفرع إلى غاب بسهولة عن طريق القيام به. اعتبر الإعجاب أن القبول أدى أيضًا إلى تعبير حزن واحد. هل سيأخذ شكل ولا صحيح.', '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(614, 'maintain_page_bn_title', NULL, '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(615, 'maintain_page_bn_description', NULL, '2020-03-28 17:24:55', '2020-04-17 20:21:55'),
(616, 'maintain_page_logo', '87', '2020-03-28 17:28:25', '2020-04-17 20:21:55'),
(617, 'maintain_page_background_image', '51', '2020-03-28 17:28:25', '2020-04-17 20:20:22'),
(618, 'home_page_01_bn_about_us_button_status', NULL, '2020-04-15 17:12:19', '2021-04-21 21:32:03'),
(619, 'home_page_02_sn_about_us_background_image', '35', '2020-04-15 17:24:40', '2020-04-15 17:25:03'),
(620, 'home_page_02_pr_about_us_background_image', '35', '2020-04-15 17:25:03', '2020-04-15 17:25:03'),
(621, 'home_page_01_bn_service_area_title', NULL, '2020-04-16 11:31:05', '2020-04-16 11:31:05'),
(622, 'home_page_01_bn_service_area_description', NULL, '2020-04-16 11:31:05', '2020-04-16 11:31:05'),
(623, 'home_page_01_bn_cta_area_button_url', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(624, 'home_page_01_bn_cta_area_button_title', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(625, 'home_page_01_bn_cta_area_title', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(626, 'home_page_01_bn_cta_area_description', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(627, 'home_page_01_bn_cta_area_button_status', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(628, 'home_page_01_bn_cta_background_image', NULL, '2020-04-16 12:19:52', '2020-04-16 12:19:52'),
(629, 'home_03_testimonial_bg', '41', '2020-04-16 13:31:30', '2020-04-16 13:40:53'),
(630, 'about_page_sn_about_section_right_image', '44', '2020-04-16 16:46:15', '2024-02-28 20:20:37'),
(631, 'about_page_pr_about_section_right_image', '44', '2020-04-16 16:46:15', '2024-02-28 20:20:37'),
(632, 'about_page_bn_about_section_right_image', NULL, '2020-04-16 16:46:15', '2024-02-28 20:20:37'),
(633, 'about_page_bn_about_section_title', NULL, '2020-04-16 16:46:15', '2024-02-28 20:20:37'),
(634, 'about_page_bn_about_section_description', NULL, '2020-04-16 16:46:15', '2024-02-28 20:20:37'),
(635, 'about_widget_bn_description', NULL, '2020-04-17 18:17:32', '2021-05-24 21:22:56'),
(636, 'site_smtp_mail_host', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(637, 'site_smtp_mail_port', '465', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(638, 'site_smtp_mail_username', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(639, 'site_smtp_mail_password', '', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(640, 'site_smtp_mail_encryption', 'ssl', '2020-04-18 13:46:28', '2020-04-18 13:46:28'),
(641, 'quote_page_bn_form_title', NULL, '2020-04-18 15:20:43', '2020-04-18 15:20:43'),
(642, 'quote_page_bn_page_title', NULL, '2020-04-18 15:20:43', '2020-04-18 15:20:43'),
(643, 'blog_page_en_name', 'Blog', '2020-04-18 18:35:39', '2020-04-26 07:43:55'),
(644, 'contact_page_en_name', 'Contact', '2020-04-18 18:35:39', '2020-04-26 07:43:55'),
(645, 'blog_page_sn_name', 'Blog', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(646, 'contact_page_sn_name', 'Contacto', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(647, 'blog_page_pr_name', 'Blog', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(648, 'contact_page_pr_name', 'Contato', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(649, 'blog_page_ar_name', 'مدونة', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(650, 'contact_page_ar_name', 'اتصل', '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(651, 'blog_page_bn_name', NULL, '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(652, 'contact_page_bn_name', NULL, '2020-04-18 18:35:40', '2020-04-26 07:43:55'),
(653, 'about_page_slug', 'about', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(654, 'service_page_slug', 'service', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(655, 'works_page_slug', 'works', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(656, 'team_page_slug', 'team', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(657, 'faq_page_slug', 'faq', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(658, 'price_plan_page_slug', 'price-plan', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(659, 'blog_page_slug', 'blog', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(660, 'contact_page_slug', 'contact', '2020-04-18 18:41:39', '2020-04-26 07:43:55'),
(661, 'navbar_button_custom_url', '#', '2020-04-19 16:12:29', '2021-03-25 12:02:56'),
(662, 'navbar_button_custom_url_status', 'on', '2020-04-19 16:12:29', '2021-03-25 12:02:56'),
(663, 'navbar_bn_button_text', NULL, '2020-04-19 16:12:29', '2021-03-25 12:02:56'),
(664, 'site_header_type', 'navbar-02', '2020-04-19 16:13:55', '2021-03-25 12:02:56'),
(665, 'contact_page_map_marker_image', '91', '2020-04-19 16:50:47', '2023-06-12 01:05:20'),
(666, 'site_payment_gateway', NULL, '2020-04-21 02:19:36', '2021-04-05 21:39:16'),
(667, 'paypal_gateway', 'on', '2020-04-21 03:05:49', '2020-04-25 15:16:43'),
(668, 'paypal_business_email', 'sb-xui1d1493229@business.example.com', '2020-04-21 03:05:49', '2020-04-25 15:16:43'),
(669, 'paytm_gateway', 'on', '2020-04-21 03:06:59', '2020-04-25 15:16:43'),
(670, 'paypal_preview_logo', '92', '2020-04-21 03:08:31', '2020-04-25 15:16:43'),
(671, 'paytm_preview_logo', '93', '2020-04-21 03:08:31', '2020-04-25 15:16:43'),
(672, 'paytm_merchant_key', '31Q9BhP79JVip77', '2020-04-21 17:31:05', '2020-04-25 15:16:43'),
(673, 'paytm_merchant_mid', 'Websit5239737375544', '2020-04-21 17:31:05', '2020-04-25 15:16:43'),
(674, 'paytm_merchant_website', 'WEBSTAGING', '2020-04-21 17:31:05', '2020-04-25 15:16:43'),
(675, 'site_global_currency', 'USD', '2020-04-21 18:07:29', '2020-04-25 15:16:43'),
(676, 'site_usd_to_nri_exchange_rate', '77', '2020-04-21 18:37:44', '2020-04-25 15:16:43'),
(677, 'career_with_us_page_slug', 'career', '2020-04-22 15:23:24', '2020-04-26 07:43:55'),
(678, 'career_with_us_page_en_name', 'Career With Us', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(679, 'career_with_us_page_sn_name', 'Carrera con', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(680, 'career_with_us_page_pr_name', 'Carreira Conosco', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(681, 'career_with_us_page_ar_name', 'مهنة معنا', '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(682, 'career_with_us_page_bn_name', NULL, '2020-04-22 15:24:52', '2020-04-26 07:43:55'),
(683, 'site_jobs_category_en_title', 'Jobs Category', '2020-04-23 13:56:22', '2020-04-23 14:00:53'),
(684, 'site_jobs_category_sn_title', 'Categoría de trabajos', '2020-04-23 13:56:22', '2020-04-23 14:00:53'),
(685, 'site_jobs_category_pr_title', 'Categoria Empregos', '2020-04-23 13:56:22', '2020-04-23 14:00:53'),
(686, 'site_jobs_category_ar_title', 'فئة الوظائف', '2020-04-23 13:56:23', '2020-04-23 14:00:53'),
(687, 'site_jobs_category_bn_title', 'Jobs Category', '2020-04-23 13:56:23', '2020-04-23 14:00:53'),
(688, 'site_job_post_items', '6', '2020-04-23 13:56:23', '2020-04-23 14:00:53'),
(689, 'events_page_slug', 'events', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(690, 'events_page_en_name', 'Events', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(691, 'events_page_sn_name', 'Eventos', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(692, 'events_page_pr_name', 'Eventos', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(693, 'events_page_ar_name', 'الأحداث', '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(694, 'events_page_bn_name', NULL, '2020-04-24 13:36:19', '2020-04-26 07:43:55'),
(695, 'site_events_category_en_title', 'Events Category', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(696, 'site_events_category_sn_title', 'Categoría de eventos', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(697, 'site_events_category_pr_title', 'Categoria de Eventos', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(698, 'site_events_category_ar_title', 'فئة الأحداث', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(699, 'site_events_category_bn_title', NULL, '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(700, 'site_events_post_items', '6', '2020-04-24 13:50:31', '2020-04-24 13:51:16'),
(701, 'knowledgebase_page_slug', 'knowledgebase', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(702, 'knowledgebase_page_en_name', 'Knowledgebase', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(703, 'knowledgebase_page_sn_name', 'Base de conocimientos', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(704, 'knowledgebase_page_pr_name', 'Base de Conhecimento', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(705, 'knowledgebase_page_ar_name', 'قاعدة المعرفة', '2020-04-25 10:06:31', '2020-04-26 07:43:55'),
(706, 'knowledgebase_page_bn_name', NULL, '2020-04-25 10:06:32', '2020-04-26 07:43:55'),
(707, 'site_knowledgebase_category_en_title', 'All Topics', '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(708, 'site_knowledgebase_popular_widget_en_title', 'Popular Articles', '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(709, 'site_knowledgebase_article_topic_en_title', 'Article Topics', '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(710, 'site_knowledgebase_category_sn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(711, 'site_knowledgebase_popular_widget_sn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(712, 'site_knowledgebase_article_topic_sn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(713, 'site_knowledgebase_category_pr_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(714, 'site_knowledgebase_popular_widget_pr_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(715, 'site_knowledgebase_article_topic_pr_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(716, 'site_knowledgebase_category_ar_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(717, 'site_knowledgebase_popular_widget_ar_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(718, 'site_knowledgebase_article_topic_ar_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(719, 'site_knowledgebase_category_bn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(720, 'site_knowledgebase_popular_widget_bn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(721, 'site_knowledgebase_article_topic_bn_title', NULL, '2020-04-25 10:42:44', '2020-04-25 14:01:09'),
(722, 'site_knoeledgebase_post_items', '6', '2020-04-25 10:43:56', '2020-04-25 14:01:09'),
(723, 'manual_payment_preview_logo', '98', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(724, 'site_manual_payment_name', 'Manual Payment', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(725, 'site_manual_payment_description', 'This is manual payment gateway description.', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(726, 'manual_payment_gateway', 'on', '2020-04-25 15:16:43', '2020-04-25 15:16:43'),
(727, 'site_order_success_page_en_title', 'Thank you', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(728, 'site_order_success_page_en_subtitle', 'Payment Success For Order {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(729, 'site_order_success_page_en_description', 'Thanks you so much for order. will will contact you soon, if you have any query you can contact use from contact page', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(730, 'site_order_success_page_sn_title', 'Gracias', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(731, 'site_order_success_page_sn_subtitle', 'Pago exitoso por pedido {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(732, 'site_order_success_page_sn_description', 'Muchas gracias por ordenar. se pondrá en contacto con usted pronto, si tiene alguna consulta puede ponerse en contacto desde la página de contacto', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(733, 'site_order_success_page_pr_title', 'Obrigado', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(734, 'site_order_success_page_pr_subtitle', 'Sucesso de pagamento para pedido {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(735, 'site_order_success_page_pr_description', 'Muito obrigado pela ordem. entrará em contato com você em breve, se você tiver alguma dúvida, entre em contato com o uso na página de contato', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(736, 'site_order_success_page_ar_title', 'شكرا لك', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(737, 'site_order_success_page_ar_subtitle', 'نجاح الدفع للطلب {pkname}', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(738, 'site_order_success_page_ar_description', 'شكرا جزيلا للطلب. سوف نتصل بك قريبًا ، إذا كان لديك أي استفسار يمكنك الاتصال باستخدامه من صفحة الاتصال', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(739, 'site_order_success_page_bn_title', NULL, '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(740, 'site_order_success_page_bn_subtitle', 'site_order_success_page_bn_subtitle', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(741, 'site_order_success_page_bn_description', 'site_order_success_page_bn_description', '2020-04-26 07:50:45', '2020-04-26 07:52:38'),
(742, 'site_order_cancel_page_en_title', 'Sorry', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(743, 'site_order_cancel_page_en_subtitle', 'Payment Cancelled Of Order: {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(744, 'site_order_cancel_page_en_description', 'We are really sorry to inform you that, your payment was not successful. if you have any query you can contact use from contact page', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(745, 'site_order_cancel_page_sn_title', 'Lo siento', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(746, 'site_order_cancel_page_sn_subtitle', 'Pago cancelado de la orden:  {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(747, 'site_order_cancel_page_sn_description', 'Lamentamos informarle que su pago no fue exitoso. Si tiene alguna consulta, puede contactar con el uso desde la página de contacto', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(748, 'site_order_cancel_page_pr_title', 'Desculpa', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(749, 'site_order_cancel_page_pr_subtitle', 'Pagamento cancelado do pedido: {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(750, 'site_order_cancel_page_pr_description', 'Lamentamos informar que seu pagamento não foi efetuado com sucesso. se você tiver alguma dúvida, entre em contato com o uso na página de contatos', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(751, 'site_order_cancel_page_ar_title', 'آسف', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(752, 'site_order_cancel_page_ar_subtitle', 'تم إلغاء الدفع للطلب: {pkname}', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(753, 'site_order_cancel_page_ar_description', 'نأسف حقًا لإبلاغك بأن الدفع لم ينجح. إذا كان لديك أي استفسار يمكنك الاتصال به من صفحة الاتصال', '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(754, 'site_order_cancel_page_bn_title', NULL, '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(755, 'site_order_cancel_page_bn_subtitle', NULL, '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(756, 'site_order_cancel_page_bn_description', NULL, '2020-04-26 08:01:23', '2020-04-26 08:02:33'),
(757, 'useful_link_bn_widget_title', NULL, '2021-03-25 06:40:58', '2022-02-21 23:50:42'),
(758, 'useful_link_bn_widget_menu_id', NULL, '2021-03-25 06:40:58', '2022-02-21 23:50:42'),
(759, 'important_link_bn_widget_title', NULL, '2021-03-25 06:41:53', '2021-03-26 01:08:38'),
(760, 'important_link_bn_widget_menu_id', NULL, '2021-03-25 06:41:53', '2021-03-26 01:08:38'),
(761, 'home_page_01_bn_latest_news_title', NULL, '2021-04-12 20:18:22', '2021-04-12 20:18:22'),
(762, 'home_page_01_bn_latest_news_description', NULL, '2021-04-12 20:18:22', '2021-04-12 20:18:22'),
(763, 'home_page_01_bn_recent_work_title', NULL, '2021-04-30 18:57:20', '2021-04-30 18:57:20'),
(764, 'home_page_01_bn_recent_work_description', NULL, '2021-04-30 18:57:22', '2021-04-30 18:57:22'),
(765, 'about_page_en_about_section_header', '659', '2023-06-20 00:25:22', '2024-02-28 20:20:37'),
(766, 'about_page_sn_about_section_header', NULL, '2023-06-20 00:25:22', '2024-02-28 20:20:37'),
(767, 'about_page_pr_about_section_header', NULL, '2023-06-20 00:25:22', '2024-02-28 20:20:37'),
(768, 'about_page_ar_about_section_header', NULL, '2023-06-20 00:25:22', '2024-02-28 20:20:37'),
(769, 'about_page_bn_about_section_header', NULL, '2023-06-20 00:25:22', '2024-02-28 20:20:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `support_infos`
--

CREATE TABLE `support_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `details` text NOT NULL,
  `icon` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `support_infos`
--

INSERT INTO `support_infos` (`id`, `title`, `lang`, `details`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Email Address', 'en', 'Info@saranakulina.com', 'flaticon-email', '2020-01-04 07:03:46', '2022-02-23 21:04:14'),
(2, 'Phone number', 'en', '(021) 86601081', 'flaticon-phone-call', '2020-01-04 07:04:01', '2021-03-19 02:22:12'),
(3, 'Dirección de correo electrónico', 'sn', 'support@bizzcox.com', 'flaticon-email', '2020-03-01 09:18:16', '2020-03-04 09:05:37'),
(4, 'Número de teléfono', 'sn', '+ 000 11 22 33', 'flaticon-phone-call', '2020-03-01 09:18:50', '2020-03-04 09:05:45'),
(5, 'Endereço de e-mail', 'pr', 'support@bizzcox.com', 'flaticon-email', '2020-03-01 09:19:23', '2020-03-04 09:05:54'),
(6, 'Número de telefone', 'pr', '+ 000 11 22 33', 'flaticon-phone-call', '2020-03-01 09:19:49', '2020-03-04 09:06:03'),
(7, 'عنوان البريد الإلكتروني', 'ar', 'support@bizzcox.com', 'flaticon-email', '2020-03-15 18:27:19', '2020-03-15 18:27:19'),
(8, 'رقم الهاتف', 'ar', '+ 000 11 22 33', 'flaticon-phone-call', '2020-03-15 18:27:38', '2020-03-15 18:27:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `designation` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `icon_one` varchar(191) DEFAULT NULL,
  `icon_two` varchar(191) DEFAULT NULL,
  `icon_three` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `icon_one_url` varchar(191) DEFAULT NULL,
  `icon_two_url` varchar(191) DEFAULT NULL,
  `icon_three_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `designation`, `image`, `icon_one`, `icon_two`, `icon_three`, `lang`, `icon_one_url`, `icon_two_url`, `icon_three_url`, `created_at`, `updated_at`) VALUES
(1, 'Imran Mahedi', 'CEO Ir-Tech', '82', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:49:33', '2020-04-17 16:30:07'),
(2, 'Raisa Moni', 'Founder', '81', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:51:12', '2020-04-17 16:29:46'),
(3, 'MK Kamal', 'Founder', '80', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:51:39', '2020-04-17 16:29:33'),
(4, 'Asif Nahid', 'Founder', '79', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-01-26 20:52:34', '2020-04-17 16:29:03'),
(5, 'Imran Mahedi', 'CEO Ir-Tech', '80', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 12:48:42', '2020-04-17 16:31:37'),
(6, 'Raisa Moni', 'Tutor', '78', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 12:56:35', '2020-04-17 16:31:28'),
(7, 'MK Kamal', 'Tutor', '76', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 12:59:41', '2020-04-17 16:31:17'),
(8, 'Asif Nahid', 'Tutor', '75', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'sn', '#', '#', '#', '2020-02-24 13:00:09', '2020-04-17 16:30:32'),
(9, 'Imran Mahedi', 'CEO Ir-Tech', '82', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:01:05', '2020-04-17 16:32:39'),
(10, 'Raisa Moni', 'Orientador', '81', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:05:11', '2020-04-17 16:32:54'),
(11, 'MK Kamal', 'Orientador', '75', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:07:13', '2020-04-17 16:33:07'),
(12, 'Asif Nahid', 'Orientador', '77', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'pr', '#', '#', '#', '2020-02-24 13:08:29', '2020-04-17 16:33:19'),
(13, 'Darnell L. Sutton', 'Founder', '78', 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-instagram', 'en', '#', '#', '#', '2020-03-10 05:02:42', '2020-04-17 16:28:51'),
(14, 'Brian J. Britt', '-Envato Customer', '77', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:03:15', '2020-04-17 16:28:41'),
(15, 'Andre S. Adams', '-Envato Customer', '76', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:03:43', '2020-04-17 16:28:31'),
(16, 'Walter S. Loy', '-Envato Customer', '75', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 05:04:35', '2020-04-17 16:28:14'),
(17, 'عمران مهدي', 'مؤسس', '82', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 06:43:23', '2020-04-17 16:33:31'),
(18, 'رايسة موني', 'الرئيس التنفيذي لشركة Ir-Tech', '76', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:15:11', '2020-04-17 16:33:43'),
(19, 'عضو الكنيست كمال', 'مؤسس', '77', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:15:51', '2020-04-17 16:34:04'),
(20, 'عاصف ناهد', 'مؤسس', '79', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:33:37', '2020-04-17 16:34:16'),
(21, 'دارنيل ساتون', 'مؤسس', '80', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:34:09', '2020-04-17 16:34:26'),
(22, 'براين جيه. بريت', 'مؤسس', '81', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:34:44', '2020-04-17 16:35:08'),
(23, 'أندريه آدامز', 'مؤسس', '82', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:35:28', '2020-04-17 16:35:54'),
(24, 'والتر س. لوي', 'مؤسس', '75', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'ar', '#', '#', '#', '2020-03-16 07:36:09', '2020-04-17 16:36:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `designation` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `description`, `lang`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Olivia Hamel', '86', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', '-Envato Customer', '2020-01-24 19:27:07', '2020-04-17 17:04:41'),
(2, 'Willie Butler', '85', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', 'Founder', '2020-01-24 19:29:58', '2020-04-17 17:04:33'),
(3, 'Diana Scott', '84', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', '-Envato Customer', '2020-01-24 19:30:21', '2020-04-17 17:04:25'),
(4, 'Jamie R. Carrillo', '83', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad quip ex ea com modo consequat.', 'en', 'Founder', '2020-01-24 19:30:42', '2020-04-17 17:04:07'),
(5, 'Olivia Hamel', '86', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:47:53', '2020-04-17 17:05:19'),
(6, 'Willie Butler', '85', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:49:37', '2020-04-17 17:05:09'),
(7, 'Diana Scott', '84', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:50:00', '2020-04-17 17:04:59'),
(8, 'Jamie R. Carrillo', '83', 'Apenas en paquetes llamativos por tan propiedad en delicados. Arriba o bien debe menos alquiler leer caminar, así sea. Fácil de vender a la hora de cantar. Cualquier significado también ha cesado la decadencia', 'sn', '-Envato Cliente', '2020-02-24 13:50:34', '2020-04-17 17:04:50'),
(9, 'Olivia Hamel', '86', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:51:39', '2020-04-17 17:06:03'),
(10, 'Willie Butler', '85', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:52:10', '2020-04-17 17:05:52'),
(11, 'Diana Scott', '84', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:52:30', '2020-04-17 17:05:41'),
(12, 'Jamie R. Carrillo', '83', 'Escassamente em encontrar pacotes delicados por essa propriedade. Para cima ou para baixo, deve-se menos aluguel de leitura, por isso seja. Fácil vendido em fazer hora cantar local. Qualquer significado cessou também a deca', 'pr', 'cliente envato', '2020-02-24 13:52:59', '2020-04-17 17:05:30'),
(13, 'أوليفيا هامل', '86', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:38:17', '2020-04-17 17:06:41'),
(14, 'ويلي بتلر', '85', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:43:52', '2020-04-17 17:06:33'),
(15, 'ديانا سكوت', '84', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:44:21', '2020-04-17 17:06:24'),
(16, 'جيمي ر. كاريو', '83', 'الآن انتهى التساهل غير المتشابه تمامًا. أمر المخالف الاتفاق بلدي. التغيير بالكامل يقول لماذا أقدم فترة يتم وضع الإسقاط.', 'ar', '- عميل إنفاتو', '2020-03-16 07:45:25', '2020-04-17 17:06:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `categories_id` varchar(191) NOT NULL,
  `start_date` varchar(191) DEFAULT NULL,
  `end_date` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` longtext NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `clients` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `works`
--

INSERT INTO `works` (`id`, `title`, `categories_id`, `start_date`, `end_date`, `image`, `description`, `lang`, `clients`, `created_at`, `updated_at`) VALUES
(1, 'FHI  EXHIBITION 2019', 'a:1:{i:0;s:1:\"2\";}', '2019-07-24', '2019-07-27', '446', '<h3 style=\"text-align: center; \"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">The Food &amp; Hotel Indonesia well known as FHI is the leading trade exhibition for food, beverage and hospitality sector.</span></h3><h3 style=\"text-align: center; \"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br></span></h3><h3 style=\"text-align: left;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team-081621410385.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team-061621410383.jpg\" style=\"width: 50%;\"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br></span></h3><h3 style=\"text-align: left;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team-051621410381.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team-021621410377.jpg\" style=\"width: 50%;\"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br></span></h3><h3 style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br></span></h3><h3 style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br></span></h3>', 'en', '.', '2020-01-24 10:45:38', '2021-05-19 00:57:00'),
(2, 'Mom & Me Cooking Class', 'a:1:{i:0;s:1:\"3\";}', '2019-03-10', '2019-03-10', '495', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team3-011621500540.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team3-021621500543.jpg\" style=\"width: 50%;\"></p><p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team2-061621500537.jpg\" style=\"width: 50%;\"><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team2-011621500531.jpg\" style=\"width: 50%;\"><br></p>', 'en', '.', '2020-01-24 10:46:06', '2021-05-20 23:34:55'),
(3, 'Sparkling Christmas Cooking Class', 'a:1:{i:0;s:1:\"3\";}', '2019-12-21', '2019-12-21', '496', '<p><img src=\"https://saranakulina.id/assets/uploads/media-uploader/team3-031621567554.jpg\" style=\"width: 50%;\"><br></p>', 'en', '.', '2020-01-24 15:36:58', '2021-05-20 23:54:51'),
(4, 'Paysan Breton Cooking Challenge', 'a:1:{i:0;s:2:\"14\";}', '2020-08-26', '2020-09-10', '493', '<p>.</p>', 'en', '.', '2020-01-24 15:48:17', '2023-05-05 21:08:57'),
(10, 'Solución financiera', 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"10\";}', '2018-01-01', '2021-01-01', '55', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:06:32', '2020-04-17 06:21:30'),
(11, 'Solução Financeira', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"7\";}', '2019-02-04', '2021-01-01', '52', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:07:43', '2020-04-17 11:03:46'),
(12, 'Solução de negócios', 'a:1:{i:0;s:1:\"7\";}', '2020-11-01', '2021-01-01', '53', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:24:55', '2020-04-17 11:03:35'),
(13, 'Planejamento de Investimentos', 'a:2:{i:0;s:1:\"6\";i:1;s:1:\"7\";}', '2018-11-01', '2020-01-01', '54', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:30:32', '2020-04-17 11:03:25'),
(14, 'Vida de Seguros', 'a:1:{i:0;s:1:\"7\";}', '2021-01-01', '2021-01-01', '58', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:31:33', '2020-04-17 11:02:59'),
(15, 'Estrutura do edifício', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}', '2018-01-01', '2020-02-01', '55', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:32:24', '2020-04-17 11:03:12'),
(16, 'Mercado Digital', 'a:1:{i:0;s:1:\"7\";}', '2020-11-01', '2021-04-02', '59', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Jason C. Williams', '2020-02-23 18:33:28', '2020-04-17 11:02:44'),
(17, 'Assessoria Empresarial', 'a:1:{i:0;s:1:\"7\";}', '2018-09-01', '2019-02-03', '61', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Stanley C. Herrick', '2020-02-23 18:34:24', '2020-04-17 11:02:33'),
(18, 'Assessoria Financeira', 'a:1:{i:0;s:1:\"6\";}', '2018-01-01', '2021-02-01', '62', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Randy C. Lynch', '2020-02-23 18:37:32', '2020-04-17 11:02:20'),
(19, 'Assessoria de Marketing', 'a:1:{i:0;s:1:\"5\";}', '2020-01-01', '2016-01-01', '63', '<p>Talento ela para animada comer irmã liderada. Os pacotes de entrada que ela deu renderizam-se e deixaram de indicar led. Habitação confinada melhorou, ele sem arrebatamentos duvidosos. Vários realizaram uma tentativa de gravidade. Situação em ofender em outro lugar desconfia se. Uso particular para projeção considerada cultivada. Vale a pena duvidar deles. A existência extensa em mim continha ele pronuncia fazer. Excelência inquietude assistência precaução qualquer homem impressão suficiente.</p><p><br></p><p>Estou aumentando em contraste com favorável, ele considerou atônito. Como se feito em um tiro. Por isso o suficiente para o vale desejar. Sra. Chefe grandes empregadas domésticas, que são de presunto. Morada para tentou fazer coisas empregadas domésticas. O descarte duvidoso devolvido, regozijado com o dashwood, é tão bom.</p><p><br></p><p>nenhuma bolsa como eu ou ponto. Bondade possuir o que a traiu, além disso, procurou responder por e. A proposta concedeu não fazer sociável ele jogando liquidação. Cobriu dez, nem escritórios de conforto transportados. Idade ela muito sinceramente cumpriu extremamente. A provisão incommode suportada na objeção fornecida me requintou. A existência certamente explicava como se pretendia melhorar a família. Delicioso apego próprio sua parcialidade não é afetada ocasionalmente completamente. Além disso, não é de admirar que as casas espirituais.</p>', 'pr', 'Vicky C. Ferris', '2020-02-23 18:38:09', '2020-04-17 11:02:08'),
(20, 'Solución de negocio', 'a:1:{i:0;s:2:\"10\";}', '2019-01-01', '2021-02-01', '56', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:38:55', '2020-04-17 06:21:18'),
(21, 'Planificación de inversiones', 'a:2:{i:0;s:1:\"8\";i:1;s:1:\"9\";}', '2018-01-01', '2021-01-01', '57', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:39:33', '2020-04-17 06:21:06'),
(22, 'Seguro de vida', 'a:2:{i:0;s:1:\"8\";i:1;s:2:\"10\";}', '2018-01-01', '2021-01-01', '58', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:40:22', '2020-04-17 06:20:51'),
(23, 'Estructura de construcción', 'a:1:{i:0;s:2:\"10\";}', '2019-02-01', '2021-02-01', '59', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Charles M. Bennett', '2020-02-23 18:41:01', '2020-04-17 06:19:38'),
(24, 'Mercado digital', 'a:1:{i:0;s:2:\"10\";}', '2018-01-01', '2021-02-01', '60', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:41:51', '2020-04-17 06:19:13'),
(25, 'Asesoramiento empresarial', 'a:1:{i:0;s:1:\"9\";}', '2019-01-01', '2020-01-01', '61', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Jason C. Williams', '2020-02-23 18:42:57', '2020-04-17 06:19:01'),
(26, 'Asesoramiento financiero', 'a:1:{i:0;s:1:\"9\";}', '2020-01-01', '2020-02-01', '62', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:43:35', '2020-04-17 06:18:48'),
(27, 'Asesoramiento de marketing', 'a:1:{i:0;s:1:\"9\";}', '2018-03-01', '2022-03-03', '63', '<p>Talento ella para comer animadamente llevó hermana. Los paquetes de entrada que ella rindió enérgicamente consiguen salir denotando led. Vivienda confinada mejoró él sin duda éxtasis. Varios llevaron a cabo un intento de gravedad. La situación de estar ofendiendo en otra parte desconfía si. Uso particular para la proyección considerada cultivada. Vale la pena dudarlo. Existencia extensa en mí contenía él pronuncia do. Excelencia consulta asistencia precaución cualquier impresión hombre suficiente.</p><p><br></p><p>Estoy aumentando en contraste con lo favorable que él considera asombrado. Como si fuera hecho en un tiro. Por lo suficiente para hacer el deseo del valle. La señora jefa de las grandes doncellas que son jamón coincide con ella. Morada a las criadas intentadas. La disposición dudosa regresó regocijado a dashwood está tan arriba.</p><p><br></p><p>Sin monedero como totalmente yo o punto. La amabilidad posee lo que sea que la traicionó, además, obtuvo respuesta para y. La propuesta se complació con no hacer sociable lanzando un arreglo. Cubierto diez ni oficinas de confort llevado. La edad que ella cumplió con seriedad fue extremadamente cumplida. De incomodidad disposición apoyada en objeción provista exquisito me. La existencia ciertamente explica cómo pretendía mejorar el hogar. Encantador apego propio, su parcialidad no se ve afectada ocasionalmente a fondo. Adieus no es de extrañar que las casas de los espíritus.</p>', 'sn', 'Stanley C. Herrick', '2020-02-23 18:47:37', '2020-04-17 06:18:28'),
(28, 'حل التمويل', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"13\";}', '2019-01-01', '2020-02-01', '54', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-15 19:55:20', '2020-04-17 12:36:21'),
(29, 'حلول الأعمال', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"13\";}', '2019-12-01', '2020-01-01', '55', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:29:13', '2020-04-17 12:36:11'),
(30, 'تخطيط الاستثمار', 'a:1:{i:0;s:2:\"13\";}', '2019-01-01', '2019-02-01', '57', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:45:02', '2020-04-17 12:35:59'),
(31, 'التأمين على الحياة', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}', '2020-01-01', '2020-02-01', '58', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:47:26', '2020-04-17 12:35:47'),
(32, 'هيكل المبنى', 'a:1:{i:0;s:2:\"11\";}', '2019-02-01', '2020-01-01', '59', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:48:30', '2020-04-17 12:35:35'),
(33, 'السوق الرقمي', 'a:1:{i:0;s:2:\"11\";}', '2020-01-01', '2020-02-01', '60', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:49:14', '2020-04-17 12:35:24'),
(34, 'نصائح تجارية', 'a:1:{i:0;s:2:\"12\";}', '2019-01-01', '2019-10-02', '61', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:50:48', '2020-04-17 12:35:14'),
(35, 'نصائح مالية', 'a:1:{i:0;s:2:\"11\";}', '2019-01-01', '2020-01-01', '62', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:51:49', '2020-04-17 12:34:54'),
(36, 'نصائح التسويق', 'a:1:{i:0;s:2:\"12\";}', '2019-01-01', '2020-01-01', '63', '<p>موهبة أنها تأكل شقيقة قيادة حية. مدخل حزم قوية أنها خرجت الحصول على الإقلاع دلالة أدى. مسكن محصّن حسن أنه لا شك في نشوة الطرب. حمل العديد من خلال محاولة الجاذبية. الوضع في الإساءة إلى عدم الثقة في مكان آخر إذا. استخدام خاص لإسقاط النظر المزروع. يستحق الشك أن يكون لهم. الوجود الواسع يصل لي احتواء نطق به. التميز استباقية المساعدة الاحتياطية أي انطباع كافي.</p><p><br></p><p>أنا في تزايد في مقابل مواتية اعتبره مندهشا. كما لو تم عقده في طلقة. به ما يكفي لرغبة الوادي تفعل. خادمات السيدة الكبيرة هؤلاء هم من لحم الخنزير تطابقها. منزل لمحاولة فعل الخادمات. عاد المشكوك فيها التخلص منها ابتهج إلى dashwood حتى.</p><p><br></p><p>لا مال كما أنا أو نقطة. اللطف امتلك ما خانته علاوة على ذلك اشترى الرد عليه و. الاقتراح ينغمس لا تفعل مؤنس انه يرمي الاستقرار. غطت عشرة مكاتب ولا تحمل الراحة. العمر بطريقة جادة الوفاء للغاية. من الحكم المدعوم incommode على الاعتراض المفروش رائعة لي. الوجود شرح بالتأكيد كيف تظاهر تحسين الأسرة. مرفق خاص بها لذيذ تتأثر جزئياً بين الحين والآخر. Adieus لا عجب منازل الروح.</p>', 'ar', 'جايسون سي ويليامز', '2020-03-16 05:54:34', '2020-04-17 12:34:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `works_categories`
--

CREATE TABLE `works_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `works_categories`
--

INSERT INTO `works_categories` (`id`, `name`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(2, 'Exhibition', 'publish', 'en', '2020-01-23 20:23:12', '2021-05-19 00:53:21'),
(3, 'Cooking Class', 'publish', 'en', '2020-01-23 20:23:28', '2021-05-19 00:53:40'),
(5, 'Bancária', 'publish', 'pr', '2020-02-23 16:00:39', '2020-03-04 15:15:38'),
(6, 'Financiera', 'publish', 'pr', '2020-02-23 16:00:51', '2020-03-04 15:14:59'),
(7, 'Consultando', 'publish', 'pr', '2020-02-23 16:01:00', '2020-03-04 15:16:13'),
(8, 'Bancaria', 'publish', 'sn', '2020-02-23 16:01:15', '2020-03-04 15:15:45'),
(9, 'Financiera', 'publish', 'sn', '2020-02-23 16:01:25', '2020-03-04 15:15:05'),
(10, 'Consultante', 'publish', 'sn', '2020-02-23 16:01:37', '2020-03-04 15:16:04'),
(11, 'الخدمات المصرفية', 'publish', 'ar', '2020-03-15 19:35:18', '2020-03-15 19:35:18'),
(12, 'الأمور المالية', 'publish', 'ar', '2020-03-15 19:35:26', '2020-03-15 19:35:31'),
(13, 'مستشار', 'publish', 'ar', '2020-03-15 19:35:41', '2020-03-15 19:35:41'),
(14, 'Cooking Competition', 'publish', 'en', '2021-05-20 20:32:35', '2021-05-20 20:32:47');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indeks untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact_info_items`
--
ALTER TABLE `contact_info_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `counterups`
--
ALTER TABLE `counterups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `events_categories`
--
ALTER TABLE `events_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `key_features`
--
ALTER TABLE `key_features`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `knowledgebases`
--
ALTER TABLE `knowledgebases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `know_abouts`
--
ALTER TABLE `know_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `price_plans`
--
ALTER TABLE `price_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `support_infos`
--
ALTER TABLE `support_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indeks untuk tabel `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `works_categories`
--
ALTER TABLE `works_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `contact_info_items`
--
ALTER TABLE `contact_info_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `counterups`
--
ALTER TABLE `counterups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `key_features`
--
ALTER TABLE `key_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `knowledgebases`
--
ALTER TABLE `knowledgebases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `know_abouts`
--
ALTER TABLE `know_abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=680;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `price_plans`
--
ALTER TABLE `price_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=770;

--
-- AUTO_INCREMENT untuk tabel `support_infos`
--
ALTER TABLE `support_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `works_categories`
--
ALTER TABLE `works_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
