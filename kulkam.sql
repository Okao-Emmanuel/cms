-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 05:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `code_body` text NOT NULL,
  `code_main` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `code_body`, `code_main`) VALUES
(1, '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div class=\"fb-comments\" data-href=\"https://developers.facebook.com/docs/plugins/comments#configurator\" data-numposts=\"5\"></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`designation_id`, `designation_name`) VALUES
(1, 'MD'),
(2, 'Manager'),
(3, 'Engineer'),
(4, 'Worker');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` text NOT NULL,
  `faq_content` text NOT NULL,
  `faq_show` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`, `faq_show`) VALUES
(3, 'WHY CHOOSE KULKAM', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequatquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>', 'On Home and FAQ Page'),
(4, 'WHERE IS KULKAM LOCATED', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequatquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>', 'On Home and FAQ Page'),
(6, 'HOW LONG HAS KULKAM TAKEN ON THE MARKET', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequatquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>', 'On Home and FAQ Page'),
(7, 'SHOULD I TRUST KULKAM', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequatquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>', 'On FAQ Page');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq_photo`
--

CREATE TABLE `tbl_faq_photo` (
  `id` int(11) NOT NULL,
  `main_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_faq_photo`
--

INSERT INTO `tbl_faq_photo` (`id`, `main_photo`) VALUES
(1, 'faq-main-photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `value`) VALUES
(1, 'HOME', 'Home'),
(2, 'PAGE', 'Page'),
(3, 'ABOUT', 'About'),
(4, 'GALLERY', 'Gallery'),
(5, 'FAQ', 'FAQ'),
(6, 'SERVICE', 'Service'),
(7, 'PORTFOLIO', 'Products'),
(8, 'TESTIMONIAL', 'Testimonial'),
(9, 'NEWS', 'News'),
(10, 'CONTACT', 'Contact'),
(11, 'ADDRESS', 'Address'),
(12, 'CALL_US', 'Call Us'),
(13, 'WORKING_HOURS', 'Working Hours'),
(14, 'ABOUT_US', 'About Us'),
(15, 'LATEST_NEWS', 'Latest News'),
(16, 'POPULAR_NEWS', 'Popular News'),
(17, 'QUICK_LINKS', 'Quick Links'),
(18, 'TERMS_AND_CONDITIONS', 'Terms and Conditions'),
(19, 'PRIVACY_POLICY', 'Privacy Policy'),
(20, 'READ_MORE', 'Read More'),
(21, 'POSTED_ON', 'Posted On:'),
(22, 'ADMIN', 'Admin'),
(23, 'SERVICES', 'Services'),
(24, 'ALL', 'All'),
(26, 'PROJECTS', 'Projects'),
(27, 'DESCRIPTION', 'Description'),
(28, 'CLIENT_NAME', 'Product Name'),
(29, 'CLIENT_COMPANY', 'Price Company'),
(30, 'PROJECT_START_DATE', 'Project Start Date'),
(31, 'PROJECT_END_DATE', 'Project End Date'),
(33, 'CLIENT_COMMENT', 'Contact to order'),
(34, 'SEARCH_NEWS', 'Search News'),
(35, 'CATEGORY', 'Category'),
(36, 'SHARE_THIS', 'Share This'),
(37, 'COMMENTS', 'Comments'),
(38, 'SEARCH_BY', 'Search By:'),
(39, 'NO_RESULT_FOUND', 'No Result Found'),
(40, 'CONTACT_US_PAGE_FORM_HEADING_TEXT', 'Contact us through the following form:'),
(41, 'PREVIOUS', 'Previous'),
(42, 'NEXT', 'Next'),
(43, 'FIND_US_ON_MAP', 'Find Us on Map:'),
(44, 'NAME', 'Name'),
(45, 'EMAIL_ADDRESS', 'Email Address'),
(46, 'PHONE', 'Phone Number'),
(47, 'MESSAGE', 'Message'),
(48, 'SEND_MESSAGE', 'Send Message'),
(49, 'EMPTY_ERROR_NAME', 'Name can not be empty'),
(50, 'EMPTY_ERROR_PHONE', 'Phone number can not be empty'),
(51, 'EMPTY_ERROR_EMAIL', 'Email address can not be empty'),
(52, 'VALID_ERROR_EMAIL', 'Email address is invalid'),
(53, 'EMPTY_ERROR_COMMENT', 'Comment can not be empty'),
(54, 'CONTACT_FORM_EMAIL_SUBJECT', 'Contact Form Email - YourWebsite.com'),
(55, 'CONTACT_FORM_EMAIL_SUCCESS_MESSAGE', 'Thank you for sending us the email. We will contact you shortly.'),
(56, 'PASSWORD_REQUEST_EMAIL_SUBJECT', 'Password Request - yourwebsite.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `home_status` int(11) NOT NULL,
  `about_status` tinyint(4) NOT NULL,
  `gallery_status` tinyint(4) NOT NULL,
  `faq_status` tinyint(4) NOT NULL,
  `service_status` tinyint(4) NOT NULL,
  `portfolio_status` tinyint(4) NOT NULL,
  `testimonial_status` tinyint(4) NOT NULL,
  `news_status` tinyint(4) NOT NULL,
  `contact_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `home_status`, `about_status`, `gallery_status`, `faq_status`, `service_status`, `portfolio_status`, `testimonial_status`, `news_status`, `contact_status`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news_title` text NOT NULL,
  `news_content` text NOT NULL,
  `news_short_content` text NOT NULL,
  `news_date` text NOT NULL,
  `photo` text NOT NULL,
  `banner` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `comment` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_content`, `news_short_content`, `news_date`, `photo`, `banner`, `category_id`, `total_view`, `comment`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(7, 'NEWS 1', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.</p><p>Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '2023-07-17', 'news-7.jpg', 'news-banner-7.jpg', 1, 0, 'On', '', '', ''),
(8, 'DRONE', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.</p><p>Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '2023-07-17', 'news-8.jpg', 'news-banner-8.jpg', 5, 0, 'On', 'DRONE', '', ''),
(9, 'NEWS 3', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.</p><p>Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;</p><p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.</p><p>Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ&nbsp;</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '2023-07-17', 'news-9.jpg', 'news-banner-9.jpg', 4, 0, 'Off', '', '', ''),
(10, 'NEWS 4', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.</p><p>Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ </p><p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.</p><p>Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ </p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridensÂ Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '2023-07-17', 'news-10.jpg', 'news-banner-10.jpg', 2, 0, 'On', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_category`
--

CREATE TABLE `tbl_news_category` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_news_category`
--

INSERT INTO `tbl_news_category` (`category_id`, `category_name`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'News Category 1', 'News Category 1', '', ''),
(2, 'News Category 2', 'News Category 2', '', ''),
(3, 'News Category 3', 'News Category 3', '', ''),
(4, 'News Category 4', 'News Category 3', '', ''),
(5, 'News Category 5', 'News Category 5', '', ''),
(7, 'News Category 6', 'News Category 6', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `mt_home` text NOT NULL,
  `mk_home` text NOT NULL,
  `md_home` text NOT NULL,
  `about_photo` text NOT NULL,
  `about_heading` text NOT NULL,
  `about_content` text NOT NULL,
  `mission_heading` text NOT NULL,
  `mission_content` text NOT NULL,
  `vision_heading` text NOT NULL,
  `vision_content` text NOT NULL,
  `mt_about` text NOT NULL,
  `mk_about` text NOT NULL,
  `md_about` text NOT NULL,
  `gallery_heading` text NOT NULL,
  `mt_gallery` text NOT NULL,
  `mk_gallery` text NOT NULL,
  `md_gallery` text NOT NULL,
  `faq_heading` text NOT NULL,
  `mt_faq` text NOT NULL,
  `mk_faq` text NOT NULL,
  `md_faq` text NOT NULL,
  `service_heading` text NOT NULL,
  `mt_service` text NOT NULL,
  `mk_service` text NOT NULL,
  `md_service` text NOT NULL,
  `portfolio_heading` text NOT NULL,
  `mt_portfolio` text NOT NULL,
  `mk_portfolio` text NOT NULL,
  `md_portfolio` text NOT NULL,
  `testimonial_heading` text NOT NULL,
  `mt_testimonial` text NOT NULL,
  `mk_testimonial` text NOT NULL,
  `md_testimonial` text NOT NULL,
  `news_heading` text NOT NULL,
  `mt_news` text NOT NULL,
  `mk_news` text NOT NULL,
  `md_news` text NOT NULL,
  `contact_heading` text NOT NULL,
  `mt_contact` text NOT NULL,
  `mk_contact` text NOT NULL,
  `md_contact` text NOT NULL,
  `search_heading` text NOT NULL,
  `mt_search` text NOT NULL,
  `mk_search` text NOT NULL,
  `md_search` text NOT NULL,
  `term_heading` text NOT NULL,
  `term_content` text NOT NULL,
  `mt_term` text NOT NULL,
  `mk_term` text NOT NULL,
  `md_term` text NOT NULL,
  `privacy_heading` text NOT NULL,
  `privacy_content` text NOT NULL,
  `mt_privacy` text NOT NULL,
  `mk_privacy` text NOT NULL,
  `md_privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `mt_home`, `mk_home`, `md_home`, `about_photo`, `about_heading`, `about_content`, `mission_heading`, `mission_content`, `vision_heading`, `vision_content`, `mt_about`, `mk_about`, `md_about`, `gallery_heading`, `mt_gallery`, `mk_gallery`, `md_gallery`, `faq_heading`, `mt_faq`, `mk_faq`, `md_faq`, `service_heading`, `mt_service`, `mk_service`, `md_service`, `portfolio_heading`, `mt_portfolio`, `mk_portfolio`, `md_portfolio`, `testimonial_heading`, `mt_testimonial`, `mk_testimonial`, `md_testimonial`, `news_heading`, `mt_news`, `mk_news`, `md_news`, `contact_heading`, `mt_contact`, `mk_contact`, `md_contact`, `search_heading`, `mt_search`, `mk_search`, `md_search`, `term_heading`, `term_content`, `mt_term`, `mk_term`, `md_term`, `privacy_heading`, `privacy_content`, `mt_privacy`, `mk_privacy`, `md_privacy`) VALUES
(1, 'Kulkam Tech Solution', '', '', 'about_photo.jpg', 'ABOUT US', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae laudantium dignissimos doloremque tempore fugiat error blanditiis voluptas aliquam fuga, molestiae. Corporis enim iusto, in magnam, commodi minus officiis maxime neque.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae laudantium dignissimos doloremque tempore fugiat error blanditiis voluptas aliquam fuga, molestiae.\r\n</p><p>\r\nCorporis enim iusto, in magnam, commodi minus officiis maxime neque.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae laudantium dignissimos doloremque tempore fugiat error blanditiis voluptas aliquam fuga, molestiae. Corporis enim iusto, in magnam, commodi minus officiis maxime neque.\r\n</p><p>\r\nEu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.</p>', 'Mission', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae laudantium dignissimos doloremque tempore fugiat error blanditiis voluptas aliquam fuga, molestiae. Corporis enim iusto, in magnam, commodi minus officiis maxime neque.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae laudantium dignissimos doloremque tempore fugiat error blanditiis voluptas aliquam fuga, molestiae. Corporis enim iusto, in magnam, commodi minus officiis maxime neque.', 'Vision', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae laudantium dignissimos doloremque tempore fugiat error blanditiis voluptas aliquam fuga, molestiae. Corporis enim iusto, in magnam, commodi minus officiis maxime neque.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae laudantium dignissimos doloremque tempore fugiat error blanditiis voluptas aliquam fuga, molestiae. Corporis enim iusto, in magnam, commodi minus officiis maxime neque.', 'About Us - Kulkam Tech Solution', ' ', '', 'GALLERY', 'Gallery - Kulkam Tech Solution', '', '', 'FAQ', 'FAQ - Kulkam Tech Solution', '', '', 'Services', 'Service - Kulkam Tech Solution', '', '', 'PORTFOLIO', 'Portfolio - Kulkam Tech Solution', '', '', 'TESTIMONIAL', 'Testimonial - Kulkam Tech Solution', '', '', 'NEWS', 'News - Kulkam Tech Solution', '', '', 'CONTACT', 'Contact - Kulkam Tech Solution', '', '', 'SEARCH BY:', 'Search - Kulkam Tech Solution', '', '', 'TERMS & CONDITIONS', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p><p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p><p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p><p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>', 'Terms and Conditions - Kulkam Tech Solution', '', '', 'PRIVACY POLICY', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p><p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p><p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p><p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>', 'Privacy Policy - Kulkam Tech Solution', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner`
--

CREATE TABLE `tbl_partner` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_partner`
--

INSERT INTO `tbl_partner` (`id`, `name`, `photo`) VALUES
(1, 'Partner Company', 'partner-1.png'),
(2, 'Partner Company', 'partner-2.png'),
(3, 'Partner Company', 'partner-3.png'),
(4, 'Partner Company', 'partner-4.png'),
(5, 'Partner Company', 'partner-5.png'),
(6, 'Partner Company', 'partner-6.png'),
(7, 'Partner Company', 'partner-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` text NOT NULL,
  `photo_name` text NOT NULL,
  `photo_show_home` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `client_name` text NOT NULL,
  `client_company` text NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `website` text NOT NULL,
  `cost` text NOT NULL,
  `client_comment` text NOT NULL,
  `category_id` text NOT NULL,
  `photo` text NOT NULL,
  `banner` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`id`, `name`, `short_content`, `content`, `client_name`, `client_company`, `start_date`, `end_date`, `website`, `cost`, `client_comment`, `category_id`, `photo`, `banner`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 'BOOTH', '200000', '<p>CALLING BOOTH</p>', 'OKAO', 'OKAO', '2023-10-17', '2023-10-16', 'OKAO.COM', '49999', 'NXNNX', '5', 'portfolio-11.jpg', 'portfolio-banner-11.jpg', 'HH', 'JJ', 'JJ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_category`
--

CREATE TABLE `tbl_portfolio_category` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_portfolio_category`
--

INSERT INTO `tbl_portfolio_category` (`category_id`, `category_name`, `status`) VALUES
(5, 'BOOTH', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_photo`
--

CREATE TABLE `tbl_portfolio_photo` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_portfolio_photo`
--

INSERT INTO `tbl_portfolio_photo` (`id`, `portfolio_id`, `photo`) VALUES
(23, 11, '23.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `photo` text NOT NULL,
  `banner` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `logo_admin` text NOT NULL,
  `favicon` text NOT NULL,
  `counter_bg` text NOT NULL,
  `login_bg` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `footer_address` text NOT NULL,
  `footer_phone` text NOT NULL,
  `footer_working_hour` text NOT NULL,
  `footer_address_icon` text NOT NULL,
  `footer_phone_icon` text NOT NULL,
  `footer_working_hour_icon` text NOT NULL,
  `footer_about` text NOT NULL,
  `top_bar_email` text NOT NULL,
  `top_bar_phone` text NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `send_email_from` text NOT NULL,
  `receive_email_to` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_username` text NOT NULL,
  `smtp_password` text NOT NULL,
  `total_recent_post` int(11) NOT NULL,
  `total_popular_post` int(11) NOT NULL,
  `total_recent_post_home` int(11) NOT NULL,
  `theme_color_1` text NOT NULL,
  `theme_color_2` text NOT NULL,
  `counter1_text` text NOT NULL,
  `counter1_value` int(11) NOT NULL,
  `counter2_text` text NOT NULL,
  `counter2_value` int(11) NOT NULL,
  `counter3_text` text NOT NULL,
  `counter3_value` int(11) NOT NULL,
  `counter4_text` text NOT NULL,
  `counter4_value` int(11) NOT NULL,
  `counter_status` text NOT NULL,
  `banner_about` text NOT NULL,
  `banner_faq` text NOT NULL,
  `banner_gallery` text NOT NULL,
  `banner_service` text NOT NULL,
  `banner_portfolio` text NOT NULL,
  `banner_testimonial` text NOT NULL,
  `banner_news` text NOT NULL,
  `banner_contact` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_category` text NOT NULL,
  `banner_terms` text NOT NULL,
  `banner_privacy` text NOT NULL,
  `why_choose_title` text NOT NULL,
  `why_choose_subtitle` text NOT NULL,
  `why_choose_status` text NOT NULL,
  `service_title` text NOT NULL,
  `service_subtitle` text NOT NULL,
  `service_status` text NOT NULL,
  `portfolio_title` text NOT NULL,
  `portfolio_subtitle` text NOT NULL,
  `portfolio_status` text NOT NULL,
  `team_title` text NOT NULL,
  `team_subtitle` text NOT NULL,
  `team_status` text NOT NULL,
  `testimonial_title` text NOT NULL,
  `testimonial_subtitle` text NOT NULL,
  `testimonial_status` text NOT NULL,
  `faq_title` text NOT NULL,
  `faq_subtitle` text NOT NULL,
  `faq_status` text NOT NULL,
  `gallery_title` text NOT NULL,
  `gallery_subtitle` text NOT NULL,
  `gallery_status` text NOT NULL,
  `recent_post_title` text NOT NULL,
  `recent_post_subtitle` text NOT NULL,
  `recent_post_status` text NOT NULL,
  `partner_title` text NOT NULL,
  `partner_subtitle` text NOT NULL,
  `partner_status` text NOT NULL,
  `preloader_status` text NOT NULL,
  `tawk_live_chat_code` text NOT NULL,
  `tawk_live_chat_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `logo_admin`, `favicon`, `counter_bg`, `login_bg`, `footer_copyright`, `footer_address`, `footer_phone`, `footer_working_hour`, `footer_address_icon`, `footer_phone_icon`, `footer_working_hour_icon`, `footer_about`, `top_bar_email`, `top_bar_phone`, `contact_map_iframe`, `send_email_from`, `receive_email_to`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `total_recent_post`, `total_popular_post`, `total_recent_post_home`, `theme_color_1`, `theme_color_2`, `counter1_text`, `counter1_value`, `counter2_text`, `counter2_value`, `counter3_text`, `counter3_value`, `counter4_text`, `counter4_value`, `counter_status`, `banner_about`, `banner_faq`, `banner_gallery`, `banner_service`, `banner_portfolio`, `banner_testimonial`, `banner_news`, `banner_contact`, `banner_search`, `banner_category`, `banner_terms`, `banner_privacy`, `why_choose_title`, `why_choose_subtitle`, `why_choose_status`, `service_title`, `service_subtitle`, `service_status`, `portfolio_title`, `portfolio_subtitle`, `portfolio_status`, `team_title`, `team_subtitle`, `team_status`, `testimonial_title`, `testimonial_subtitle`, `testimonial_status`, `faq_title`, `faq_subtitle`, `faq_status`, `gallery_title`, `gallery_subtitle`, `gallery_status`, `recent_post_title`, `recent_post_subtitle`, `recent_post_status`, `partner_title`, `partner_subtitle`, `partner_status`, `preloader_status`, `tawk_live_chat_code`, `tawk_live_chat_status`) VALUES
(1, 'logo.png', 'logo_admin.png', 'favicon.jpg', 'counter_bg.jpg', 'login_bg.jpg', 'Copyright @ HIS CODES 2023. All Rights Reserved.', 'KIBULI', '+256 200702300', 'Monday-Friday (9:00 AM - 5:00 PM)\r\nSaturday (9:00AM - 1:00 PM)\r\nSunday: Off', 'footer_address_icon.png', 'footer_phone_icon.png', 'footer_working_hour_icon.png', 'Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an. Ea suas pertinax has, solet officiis pericula cu pro, possit inermis qui ad. An mea tale perfecto sententiae.', 'info@kulkamsolutions.tech ', '+256 200702300', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"600\" height=\"500\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=AMA%20HOUSE%20KAMPALA&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://embedgooglemap.net/124/\">123movies t0</a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href=\"https://www.embedgooglemap.net\">embedgooglemap.net</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>', 'md.safalproperties@gmail.com', 'md.safalproperties@gmail.com', 'sandbox.smtp.mailtrap.io', '2525', 'abbaeaf38f5fe2', 'b0bc6b2191d0fe', 4, 4, 10, '13233B', 'F8BE2E', 'Working Persons', 150, 'Completed Works', 1000, 'Happy Clients', 800, 'Awards Achieved', 1000, 'Show', 'banner_about.jpg', 'banner_faq.jpg', 'banner_gallery.jpg', 'banner_service.jpg', 'banner_portfolio.jpg', 'banner_testimonial.jpg', 'banner_news.jpg', 'banner_contact.jpg', 'banner_search.jpg', 'banner_category.jpg', 'banner_terms.jpg', 'banner_privacy.jpg', 'WHY CHOOSE US', 'Why must you choose to work with us', 'Show', 'SERVICES', 'Some of the products we produce', 'Show', 'PRODUCTS', 'The work we have done in the previous years ', 'Show', 'EXPERIENCED TEAM', 'Some of our workers and their profiles ', 'Show', 'WHAT OUR CLIENTS SAY', 'What do our cliants says about us', 'Show', 'Have Some Questions?', 'Frequently asked questions ', 'Show', 'PHOTO GALLERY', 'Images of the company works and programes ', 'Show', 'RECENT POSTS', 'Some of the news ', 'Show', 'OUR PARTNERS', 'Some of the companies we have worked with in the past and we are still working with', 'Show', 'Off', '<script type=\"text/javascript\">\r\n    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n    (function(){\r\n        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n        s1.async=true;\r\n        s1.src=\'https://embed.tawk.to/5a7c31ded7591465c7077c48/default\';\r\n        s1.charset=\'UTF-8\';\r\n        s1.setAttribute(\'crossorigin\',\'*\');\r\n        s0.parentNode.insertBefore(s1,s0);\r\n    })();\r\n</script>', 'Off');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `button1_text` text NOT NULL,
  `button1_url` text NOT NULL,
  `button2_text` text NOT NULL,
  `button2_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button1_text`, `button1_url`, `button2_text`, `button2_url`) VALUES
(8, 'slider-8.jpg', 'KULKAM', 'KULKAM', 'ABOUT US', '#', 'READ MORE', '#');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` text NOT NULL,
  `social_url` text NOT NULL,
  `social_icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', '#', 'fa fa-facebook'),
(2, 'Twitter', '@kulkamtechsolution', 'fa fa-twitter'),
(3, 'LinkedIn', '#', 'fa fa-linkedin'),
(4, 'Google Plus', '#', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '+256 752699063', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team_member`
--

CREATE TABLE `tbl_team_member` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `designation_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `google_plus` text NOT NULL,
  `instagram` text NOT NULL,
  `flickr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `company` text NOT NULL,
  `photo` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial_photo`
--

CREATE TABLE `tbl_testimonial_photo` (
  `id` int(11) NOT NULL,
  `main_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_testimonial_photo`
--

INSERT INTO `tbl_testimonial_photo` (`id`, `main_photo`) VALUES
(1, 'testimonial-main-photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `photo` text NOT NULL,
  `role` text NOT NULL,
  `status` text NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`, `token`) VALUES
(1, 'Okao Emmanuel', 'okaoemmanuel2@gmail.com', '0774508782', '2061bac208c7bdd2665fbf4b7067e468', 'user-1.jpeg', 'Admin', 'Active', '6efb2bd15e40687ec2afedec43dffdd1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_why_choose`
--

CREATE TABLE `tbl_why_choose` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_why_choose`
--

INSERT INTO `tbl_why_choose` (`id`, `photo`, `heading`, `content`) VALUES
(1, 'why-choose-1.png', 'AUTHENTIC', 'We produce Quality products that meets the customers needs'),
(2, 'why-choose-2.png', 'RELIABLE', 'Our Products can be use multiples times'),
(3, 'why-choose-3.png', 'TRUST', 'Our company is built on truth and hardworking employees'),
(4, 'why-choose-4.png', 'TRANSPARENCY', 'We believe is transparency that\'s why our company has lasted for years');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_why_choose_photo`
--

CREATE TABLE `tbl_why_choose_photo` (
  `id` int(11) NOT NULL,
  `main_photo` text NOT NULL,
  `item_bg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_why_choose_photo`
--

INSERT INTO `tbl_why_choose_photo` (`id`, `main_photo`, `item_bg`) VALUES
(1, 'why-choose-main-photo.jpg', 'why-choose-item-bg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_faq_photo`
--
ALTER TABLE `tbl_faq_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_portfolio_category`
--
ALTER TABLE `tbl_portfolio_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_portfolio_photo`
--
ALTER TABLE `tbl_portfolio_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial_photo`
--
ALTER TABLE `tbl_testimonial_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_why_choose`
--
ALTER TABLE `tbl_why_choose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_why_choose_photo`
--
ALTER TABLE `tbl_why_choose_photo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_faq_photo`
--
ALTER TABLE `tbl_faq_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_portfolio_category`
--
ALTER TABLE `tbl_portfolio_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_portfolio_photo`
--
ALTER TABLE `tbl_portfolio_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_testimonial_photo`
--
ALTER TABLE `tbl_testimonial_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_why_choose`
--
ALTER TABLE `tbl_why_choose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_why_choose_photo`
--
ALTER TABLE `tbl_why_choose_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
