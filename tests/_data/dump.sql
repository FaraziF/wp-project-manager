-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2020 at 08:33 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pm-fetures-one`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-27 04:55:17', '2020-04-27 04:55:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_email_log`
--

CREATE TABLE `wp_email_log` (
  `id` mediumint(9) NOT NULL,
  `to_email` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sent_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `attachment_name` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `result` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_email_log`
--

INSERT INTO `wp_email_log` (`id`, `to_email`, `subject`, `message`, `headers`, `attachments`, `sent_date`, `attachment_name`, `ip_address`, `result`) VALUES
(1, 'mishu@g.c', '[PM Features] Password Changed', 'Hi mishu,\n\nThis notice confirms that your password was changed on PM Features.\n\nIf you did not change your password, please contact the Site Administrator at\nfarazi.test@gmail.com\n\nThis email has been sent to mishu@g.c\n\nRegards,\nAll at PM Features\nhttp://localhost/pm-features', '', 'false', '2020-05-28 08:16:58', '', '::1', 1),
(2, 'farazi.test@gmail.com', '[PM Features][system re-design] Update Task Assigned: 01 Mishu task', '\n<div style=\"background: #f5f5f5;padding-bottom: 30px\">\n    <div style=\"width:600px;margin: 0 auto;background: #fff\">\n        <table cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td>\n\n                    <div style=\"height:9px;width: 100%;background: #858585\">&nbsp;</div>\n                    <div style=\"height: 83px;width: 100%;background: #ededed\">\n                        <div style=\"float: left;margin-left: 7%;padding: 15px 0px;width: 43%\">\n                            <a href=\"http://localhost/pm-features\">\n                                                                        <h3>PM Features</h3>\n\n                                                           </a>\n                        </div>\n                        <div style=\"float: right;margin-right: 5%;width: 45%;text-align: right;padding: 28px 0px\">\n                            <img style=\"vertical-align: middle\" src=\"http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/calendar.png\">\n                            <div style=\"margin: 3px 10px;font-family: arial;font-size: 13px\">2020-05-28 17:04:31</div>\n                            <div style=\"clear: both\"></div>\n                        </div>\n                        <div style=\"clear: both\"></div>\n                    </div>\n<div style=\"width:600px;background: #fff\">\n\n    <div style=\"width: 600px\">\n        <div style=\"background-image: url(\'http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/tpbk.png\');height: 174px;width: 600px\">\n            <div style=\"font-family: \'Lato\', sans-serif;color: #fff;font-size: 30px;padding-top: 26px;text-align: center\">\nUpdate task has been assigned to you            </div>\n        </div>\n\n        <div style=\"padding: 0 50px;text-align: justify\">\n            <div style=\"margin: 40px 0 20px\">\n                <em style=\"font-family: lato;color: #B3B3B3;padding-right: 5px\">Updated By</em>\n                <strong style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                    Mishu bhai                </strong>\n            </div>\n            <div style=\"margin: 20px 0 10px\">\n                <em style=\"font-family: lato;color: #B3B3B3\">due date</em>\n                <strong style=\"font-family: lato;color: #7e7e7e\">\n                    <span style=\"padding-right: 5px\">2020-05-30</span>\n                </strong>\n                            </div>\n\n            <div style=\"font-family: arial;font-size: 14px;line-height: 24px\">\n                <p>01 Mishu task</p>\n                <p></p>\n                <div style=\"clear: both\"></div>\n            </div>\n        </div>\n        \n        <div style=\"padding: 18px;margin: 30px auto 45px;border-radius: 30px;background: #00b1e7;width: 171px;text-align: center\">\n\n            <a href=\"http://localhost/pm-features/projects/#/projects/1/task-lists/tasks/247\" style=\"font-family: lato;font-size: 16px;text-decoration: none;color: #fff\">\nView Task            </a>\n\n        </div>\n        \n    </div>\n\n\r\n\r\n		<div style=\"height: 71px;background: #454545;padding-top: 25px;text-align: center\">\r\n			<a style=\"text-decoration: none;font-family: arial;text-align: center;font-size: 12px;color: #fff\" href=\"http://localhost/pm-features\">PM Features</a>\r\n		</div>\r\n		</td>\r\n		</tr>\r\n		</table>\r\n	</div>\r\n</div>\r\n', 'Reply-To: no-reply@localhost\nContent-Type: text/html\nCharset: UTF-8\nFrom: PM Features <farazi.test@gmail.com>', 'false', '2020-05-28 11:04:31', '', '::1', 1),
(3, 'farazi.test@gmail.com', '[PM Features][system re-design] Update Task Assigned: 01 Mishu task', '\n<div style=\"background: #f5f5f5;padding-bottom: 30px\">\n    <div style=\"width:600px;margin: 0 auto;background: #fff\">\n        <table cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td>\n\n                    <div style=\"height:9px;width: 100%;background: #858585\">&nbsp;</div>\n                    <div style=\"height: 83px;width: 100%;background: #ededed\">\n                        <div style=\"float: left;margin-left: 7%;padding: 15px 0px;width: 43%\">\n                            <a href=\"http://localhost/pm-features\">\n                                                                        <h3>PM Features</h3>\n\n                                                           </a>\n                        </div>\n                        <div style=\"float: right;margin-right: 5%;width: 45%;text-align: right;padding: 28px 0px\">\n                            <img style=\"vertical-align: middle\" src=\"http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/calendar.png\">\n                            <div style=\"margin: 3px 10px;font-family: arial;font-size: 13px\">2020-05-28 17:04:44</div>\n                            <div style=\"clear: both\"></div>\n                        </div>\n                        <div style=\"clear: both\"></div>\n                    </div>\n<div style=\"width:600px;background: #fff\">\n\n    <div style=\"width: 600px\">\n        <div style=\"background-image: url(\'http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/tpbk.png\');height: 174px;width: 600px\">\n            <div style=\"font-family: \'Lato\', sans-serif;color: #fff;font-size: 30px;padding-top: 26px;text-align: center\">\nUpdate task has been assigned to you            </div>\n        </div>\n\n        <div style=\"padding: 0 50px;text-align: justify\">\n            <div style=\"margin: 40px 0 20px\">\n                <em style=\"font-family: lato;color: #B3B3B3;padding-right: 5px\">Updated By</em>\n                <strong style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                    Mishu bhai                </strong>\n            </div>\n            <div style=\"margin: 20px 0 10px\">\n                <em style=\"font-family: lato;color: #B3B3B3\">due date</em>\n                <strong style=\"font-family: lato;color: #7e7e7e\">\n                    <span style=\"padding-right: 5px\">2020-05-30</span>\n                </strong>\n                            </div>\n\n            <div style=\"font-family: arial;font-size: 14px;line-height: 24px\">\n                <p>01 Mishu task</p>\n                <p></p>\n                <div style=\"clear: both\"></div>\n            </div>\n        </div>\n        \n        <div style=\"padding: 18px;margin: 30px auto 45px;border-radius: 30px;background: #00b1e7;width: 171px;text-align: center\">\n\n            <a href=\"http://localhost/pm-features/projects/#/projects/1/task-lists/tasks/247\" style=\"font-family: lato;font-size: 16px;text-decoration: none;color: #fff\">\nView Task            </a>\n\n        </div>\n        \n    </div>\n\n\r\n\r\n		<div style=\"height: 71px;background: #454545;padding-top: 25px;text-align: center\">\r\n			<a style=\"text-decoration: none;font-family: arial;text-align: center;font-size: 12px;color: #fff\" href=\"http://localhost/pm-features\">PM Features</a>\r\n		</div>\r\n		</td>\r\n		</tr>\r\n		</table>\r\n	</div>\r\n</div>\r\n', 'Reply-To: no-reply@localhost\nContent-Type: text/html\nCharset: UTF-8\nFrom: PM Features <farazi.test@gmail.com>', 'false', '2020-05-28 11:04:44', '', '::1', 1),
(4, 'farazi.test@gmail.com', '[PM Features] Copy Task12 Task mark as incomplete in system re-design', '\n<div style=\"background: #f5f5f5;padding-bottom: 30px\">\n    <div style=\"width:600px;margin: 0 auto;background: #fff\">\n        <table cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td>\n\n                    <div style=\"height:9px;width: 100%;background: #858585\">&nbsp;</div>\n                    <div style=\"height: 83px;width: 100%;background: #ededed\">\n                        <div style=\"float: left;margin-left: 7%;padding: 15px 0px;width: 43%\">\n                            <a href=\"http://localhost/pm-features\">\n                                                                        <h3>PM Features</h3>\n\n                                                           </a>\n                        </div>\n                        <div style=\"float: right;margin-right: 5%;width: 45%;text-align: right;padding: 28px 0px\">\n                            <img style=\"vertical-align: middle\" src=\"http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/calendar.png\">\n                            <div style=\"margin: 3px 10px;font-family: arial;font-size: 13px\">2020-05-28 17:11:41</div>\n                            <div style=\"clear: both\"></div>\n                        </div>\n                        <div style=\"clear: both\"></div>\n                    </div>\n<div style=\"width:600px;background: #fff\">\n\n    <div style=\"width: 600px\">\n        <div style=\"background-image: url(\'http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/tpbk.png\');height: 174px;width: 600px\">\n            <div style=\"font-family: \'Lato\', sans-serif;color: #fff;font-size: 30px;padding-top: 26px;text-align: center\">\n                Task status has been changed            </div>\n        </div>\n\n    </div>\n    <div style=\"padding: 0 50px;text-align: justify\">\n        <div style=\"margin: 40px 0 20px\">\n\n            <p style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                Mishu bhai has updated the status of a task, Copy Task12, from <strong>complete</strong> to <strong>incomplete</strong>.            </p>\n        </div>\n        <div style=\"margin: 40px 0 20px\">\n            <em style=\"font-family: lato;color: #B3B3B3;padding-right: 5px\">Changed by</em>\n            <strong style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                Mishu bhai            </strong>\n        </div>\n        <div style=\"margin: 20px 0 10px\">\n            <em style=\"font-family: lato;color: #B3B3B3\">due date</em>\n            <strong style=\"font-family: lato;color: #7e7e7e\">\n                <span style=\"padding-right: 5px\">2020-04-28</span>\n            </strong>\n                            <em style=\"font-family: lato;color: #B3B3B3\">start at</em>\n                <strong style=\"font-family: lato;color: #7e7e7e\">\n                    <span style=\"padding-right: 5px\"></span>\n                </strong>\n                    </div>\n\n        <div style=\"font-family: arial;font-size: 14px;line-height: 24px\">\n            <p>Copy Task12</p>\n            <p><p>here is description here is description here is description here is description here is description here is description here is description</p></p>\n            <div style=\"clear: both\"></div>\n        </div>\n    </div>\n\n    \n        <div style=\"padding: 18px;margin: 30px auto 45px;border-radius: 30px;background: #00b1e7;width: 171px;text-align: center\">\n\n            <a href=\"http://localhost/pm-features/projects/#/projects/1/task-lists/tasks/39\" style=\"font-family: lato;font-size: 16px;text-decoration: none;color: #fff\">\n                View Task            </a>\n\n        </div>\n    \n</div>\n\r\n\r\n		<div style=\"height: 71px;background: #454545;padding-top: 25px;text-align: center\">\r\n			<a style=\"text-decoration: none;font-family: arial;text-align: center;font-size: 12px;color: #fff\" href=\"http://localhost/pm-features\">PM Features</a>\r\n		</div>\r\n		</td>\r\n		</tr>\r\n		</table>\r\n	</div>\r\n</div>\r\n', 'Reply-To: no-reply@localhost\nContent-Type: text/html\nCharset: UTF-8\nFrom: PM Features <farazi.test@gmail.com>', 'false', '2020-05-28 11:11:41', '', '::1', 1),
(5, 'farazi.test@gmail.com', '[PM Features] Copy Task12 Task mark as incomplete in system re-design', '\n<div style=\"background: #f5f5f5;padding-bottom: 30px\">\n    <div style=\"width:600px;margin: 0 auto;background: #fff\">\n        <table cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td>\n\n                    <div style=\"height:9px;width: 100%;background: #858585\">&nbsp;</div>\n                    <div style=\"height: 83px;width: 100%;background: #ededed\">\n                        <div style=\"float: left;margin-left: 7%;padding: 15px 0px;width: 43%\">\n                            <a href=\"http://localhost/pm-features\">\n                                                                        <h3>PM Features</h3>\n\n                                                           </a>\n                        </div>\n                        <div style=\"float: right;margin-right: 5%;width: 45%;text-align: right;padding: 28px 0px\">\n                            <img style=\"vertical-align: middle\" src=\"http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/calendar.png\">\n                            <div style=\"margin: 3px 10px;font-family: arial;font-size: 13px\">2020-05-28 17:11:45</div>\n                            <div style=\"clear: both\"></div>\n                        </div>\n                        <div style=\"clear: both\"></div>\n                    </div>\n<div style=\"width:600px;background: #fff\">\n\n    <div style=\"width: 600px\">\n        <div style=\"background-image: url(\'http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/tpbk.png\');height: 174px;width: 600px\">\n            <div style=\"font-family: \'Lato\', sans-serif;color: #fff;font-size: 30px;padding-top: 26px;text-align: center\">\n                Task status has been changed            </div>\n        </div>\n\n    </div>\n    <div style=\"padding: 0 50px;text-align: justify\">\n        <div style=\"margin: 40px 0 20px\">\n\n            <p style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                Mishu bhai has updated the status of a task, Copy Task12, from <strong>incomplete</strong> to <strong>incomplete</strong>.            </p>\n        </div>\n        <div style=\"margin: 40px 0 20px\">\n            <em style=\"font-family: lato;color: #B3B3B3;padding-right: 5px\">Changed by</em>\n            <strong style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                Mishu bhai            </strong>\n        </div>\n        <div style=\"margin: 20px 0 10px\">\n            <em style=\"font-family: lato;color: #B3B3B3\">due date</em>\n            <strong style=\"font-family: lato;color: #7e7e7e\">\n                <span style=\"padding-right: 5px\">2020-04-28</span>\n            </strong>\n                            <em style=\"font-family: lato;color: #B3B3B3\">start at</em>\n                <strong style=\"font-family: lato;color: #7e7e7e\">\n                    <span style=\"padding-right: 5px\"></span>\n                </strong>\n                    </div>\n\n        <div style=\"font-family: arial;font-size: 14px;line-height: 24px\">\n            <p>Copy Task12</p>\n            <p><p>here is description here is description here is description here is description here is description here is description here is description</p></p>\n            <div style=\"clear: both\"></div>\n        </div>\n    </div>\n\n    \n        <div style=\"padding: 18px;margin: 30px auto 45px;border-radius: 30px;background: #00b1e7;width: 171px;text-align: center\">\n\n            <a href=\"http://localhost/pm-features/projects/#/projects/1/task-lists/tasks/39\" style=\"font-family: lato;font-size: 16px;text-decoration: none;color: #fff\">\n                View Task            </a>\n\n        </div>\n    \n</div>\n\r\n\r\n		<div style=\"height: 71px;background: #454545;padding-top: 25px;text-align: center\">\r\n			<a style=\"text-decoration: none;font-family: arial;text-align: center;font-size: 12px;color: #fff\" href=\"http://localhost/pm-features\">PM Features</a>\r\n		</div>\r\n		</td>\r\n		</tr>\r\n		</table>\r\n	</div>\r\n</div>\r\n', 'Reply-To: no-reply@localhost\nContent-Type: text/html\nCharset: UTF-8\nFrom: PM Features <farazi.test@gmail.com>', 'false', '2020-05-28 11:11:45', '', '::1', 1),
(6, 'farazi.test@gmail.com', '[PM Features] 01 Mishu task Task mark as complete in system re-design', '\n<div style=\"background: #f5f5f5;padding-bottom: 30px\">\n    <div style=\"width:600px;margin: 0 auto;background: #fff\">\n        <table cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td>\n\n                    <div style=\"height:9px;width: 100%;background: #858585\">&nbsp;</div>\n                    <div style=\"height: 83px;width: 100%;background: #ededed\">\n                        <div style=\"float: left;margin-left: 7%;padding: 15px 0px;width: 43%\">\n                            <a href=\"http://localhost/pm-features\">\n                                                                        <h3>PM Features</h3>\n\n                                                           </a>\n                        </div>\n                        <div style=\"float: right;margin-right: 5%;width: 45%;text-align: right;padding: 28px 0px\">\n                            <img style=\"vertical-align: middle\" src=\"http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/calendar.png\">\n                            <div style=\"margin: 3px 10px;font-family: arial;font-size: 13px\">2020-05-28 17:12:02</div>\n                            <div style=\"clear: both\"></div>\n                        </div>\n                        <div style=\"clear: both\"></div>\n                    </div>\n<div style=\"width:600px;background: #fff\">\n\n    <div style=\"width: 600px\">\n        <div style=\"background-image: url(\'http://localhost/pm-features/wp-content/plugins/wedevs-project-manager/views/assets/images/tpbk.png\');height: 174px;width: 600px\">\n            <div style=\"font-family: \'Lato\', sans-serif;color: #fff;font-size: 30px;padding-top: 26px;text-align: center\">\n                Task status has been changed            </div>\n        </div>\n\n    </div>\n    <div style=\"padding: 0 50px;text-align: justify\">\n        <div style=\"margin: 40px 0 20px\">\n\n            <p style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                Mishu bhai has updated the status of a task, 01 Mishu task, from <strong>incomplete</strong> to <strong>complete</strong>.            </p>\n        </div>\n        <div style=\"margin: 40px 0 20px\">\n            <em style=\"font-family: lato;color: #B3B3B3;padding-right: 5px\">Changed by</em>\n            <strong style=\"font-family: lato;color: #7e7e7e;padding-right: 10px\">\n                Mishu bhai            </strong>\n        </div>\n        <div style=\"margin: 20px 0 10px\">\n            <em style=\"font-family: lato;color: #B3B3B3\">due date</em>\n            <strong style=\"font-family: lato;color: #7e7e7e\">\n                <span style=\"padding-right: 5px\">2020-05-30</span>\n            </strong>\n                    </div>\n\n        <div style=\"font-family: arial;font-size: 14px;line-height: 24px\">\n            <p>01 Mishu task</p>\n            <p></p>\n            <div style=\"clear: both\"></div>\n        </div>\n    </div>\n\n    \n        <div style=\"padding: 18px;margin: 30px auto 45px;border-radius: 30px;background: #00b1e7;width: 171px;text-align: center\">\n\n            <a href=\"http://localhost/pm-features/projects/#/projects/1/task-lists/tasks/247\" style=\"font-family: lato;font-size: 16px;text-decoration: none;color: #fff\">\n                View Task            </a>\n\n        </div>\n    \n</div>\n\r\n\r\n		<div style=\"height: 71px;background: #454545;padding-top: 25px;text-align: center\">\r\n			<a style=\"text-decoration: none;font-family: arial;text-align: center;font-size: 12px;color: #fff\" href=\"http://localhost/pm-features\">PM Features</a>\r\n		</div>\r\n		</td>\r\n		</tr>\r\n		</table>\r\n	</div>\r\n</div>\r\n', 'Reply-To: no-reply@localhost\nContent-Type: text/html\nCharset: UTF-8\nFrom: PM Features <farazi.test@gmail.com>', 'false', '2020-05-28 11:12:02', '', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/pm-features', 'yes'),
(2, 'home', 'http://localhost/pm-features', 'yes'),
(3, 'blogname', 'PM Features', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'farazi.test@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:6:\"^pm/?$\";s:27:\"index.php?pm_dashboard=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:23:\"email-log/email-log.php\";i:1;s:43:\"wedevs-project-manager-business/cpm-pro.php\";i:2;s:30:\"wedevs-project-manager/cpm.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Dhaka', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1603515316', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"manage_email_logs\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:12:{i:1590870812;a:1:{s:19:\"hook_recurrent_task\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"one_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1590872119;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590873418;a:1:{s:46:\"el_trigger_notify_email_when_log_threshold_met\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590900917;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590900919;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590900952;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590900969;a:1:{s:21:\"pm_pro_license_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590906980;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590957032;a:1:{s:15:\"pm_daily_digest\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591073717;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1591263917;a:1:{s:41:\"wedevs-project-manager_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:1:{s:30:\"wedevs-project-manager/cpm.php\";i:1590659009;}', 'yes'),
(143, 'pm_version', '2.3.10', 'yes'),
(144, 'pm_installed', '1587963364', 'yes'),
(147, 'pm_pro_active_modules', 'a:9:{i:0;s:31:\"custom_fields/custom_fields.php\";i:1;s:15:\"gantt/gantt.php\";i:2;s:19:\"invoice/invoice.php\";i:3;s:21:\"kanboard/kanboard.php\";i:4;s:17:\"sprint/sprint.php\";i:5;s:17:\"stripe/stripe.php\";i:6;s:23:\"sub_tasks/sub_tasks.php\";i:7;s:33:\"task_recurring/task_recurring.php\";i:8;s:29:\"time_tracker/time_tracker.php\";}', 'yes'),
(148, 'pm_pages', 'a:2:{s:7:\"invoice\";i:5;s:7:\"project\";s:1:\"6\";}', 'yes'),
(149, 'pm_pro_version', '2.4.3', 'yes'),
(150, 'pm_pro_db_version', '0.3', 'yes'),
(151, 'pm_db_version', '2.3', 'yes'),
(153, 'wp-project-manager_allow_tracking', 'no', 'yes'),
(154, 'wp-project-manager_tracking_notice', 'hide', 'yes'),
(155, 'projectId_git_bit_hash_1', 'f0871b7f473343c672011a027f375dcc4789a5a1', 'yes'),
(228, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":7,\"critical\":1}', 'yes'),
(232, 'projectId_git_bit_hash_2', 'fda5150529fefce6bf98dc3d65ecf31ef5a44cc9', 'yes'),
(245, 'projectId_git_bit_hash_3', '71f8326edf392f65828071f743979f0425798e80', 'yes'),
(246, 'projectId_git_bit_hash_4', '33e6ec1584ebc6ff7f01f30ac18b92b6d32e9a8c', 'yes'),
(282, 'WPLANG', '', 'yes'),
(283, 'new_admin_email', 'farazi.test@gmail.com', 'yes'),
(289, 'projectId_git_bit_hash_5', '945a4048dcab589c33016dabf7e2ebeaaeb27b94', 'yes'),
(398, 'projectId_git_bit_hash_6', '6546587cd11fed3cbee603219df7fb80f8a4c012', 'yes'),
(473, 'projectId_git_bit_hash_7', '25a2f00ef643972e7da9dadf5090e26937841fbb', 'yes'),
(588, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"farazi.test@gmail.com\";s:7:\"version\";s:5:\"5.4.1\";s:9:\"timestamp\";i:1588218790;}', 'no'),
(618, 'projectId_git_bit_hash_8', 'c917125444c720484e904c78109ab814db16321c', 'yes'),
(621, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1590869813;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(717, 'wedevs-project-manager_allow_tracking', 'yes', 'yes'),
(719, 'projectId_git_bit_hash_9', 'aea9fa6ed1cdc47359121a5210c5326c3c8db6ad', 'yes'),
(765, '_site_transient_timeout_php_check_cd0d3c01d5de47172fb0980b9e484085', '1591253699', 'no'),
(766, '_site_transient_php_check_cd0d3c01d5de47172fb0980b9e484085', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(777, 'projectId_git_bit_hash_10', '7c595bfaa0a781e3c838ec7de3a75c7777da3af5', 'yes'),
(780, 'email-log-db', '0.2', 'yes'),
(781, 'projectId_git_bit_hash_11', 'e4c5f5e6d6523c1d717a451e69d7aa25e2532fb8', 'yes'),
(845, 'wedevs-project-manager_tracking_notice', 'hide', 'yes'),
(846, 'wedevs-project-manager_tracking_last_send', '1590659126', 'yes'),
(1029, '_transient_timeout_el_addon_data', '1590913005', 'no'),
(1030, '_transient_el_addon_data', 'a:2:{s:8:\"products\";a:5:{i:0;a:3:{s:4:\"info\";a:14:{s:2:\"id\";i:18;s:4:\"slug\";s:11:\"more-fields\";s:5:\"title\";s:11:\"More Fields\";s:11:\"create_date\";s:19:\"2017-03-07 11:50:43\";s:13:\"modified_date\";s:19:\"2018-02-13 14:48:45\";s:6:\"status\";s:7:\"publish\";s:4:\"link\";s:46:\"http://wpemaillog.com/?post_type=download&p=18\";s:7:\"content\";s:409:\"More Fields add-on shows additional fields about the email in the email log list page. The following are the additional fields that are added by this add-on.\r\n<ul>\r\n 	<li>From</li>\r\n 	<li>CC</li>\r\n 	<li>BCC</li>\r\n 	<li>Reply To</li>\r\n 	<li>Attachment</li>\r\n</ul>\r\nThese additional fields will allow you to see more information about the logged email.\r\n<h3>Screenshots</h3>\r\n[gallery columns=\"2\" ids=\"974,975\"]\";s:7:\"excerpt\";s:110:\"More Fields add-on shows additional fields in the email log page like From, CC, BCC, Reply To, Attachment etc.\";s:9:\"thumbnail\";s:75:\"https://wpemaillog.com/wp-content/uploads/edd/2016/11/more-fields-addon.png\";s:8:\"category\";a:1:{i:0;a:10:{s:7:\"term_id\";i:4;s:4:\"name\";s:5:\"Addon\";s:4:\"slug\";s:5:\"addon\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:17:\"download_category\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:5;s:6:\"filter\";s:3:\"raw\";}}s:4:\"tags\";b:0;s:9:\"permalink\";s:42:\"https://wpemaillog.com/addons/more-fields/\";s:7:\"version\";s:5:\"2.0.1\";}s:7:\"pricing\";a:3:{s:10:\"singlesite\";s:5:\"19.00\";s:8:\"2-5sites\";s:5:\"37.00\";s:14:\"unlimitedsites\";s:5:\"49.00\";}s:9:\"licensing\";a:4:{s:7:\"enabled\";b:1;s:7:\"version\";s:5:\"2.0.1\";s:8:\"exp_unit\";s:5:\"years\";s:10:\"exp_length\";s:1:\"1\";}}i:1;a:3:{s:4:\"info\";a:14:{s:2:\"id\";i:16;s:4:\"slug\";s:12:\"resend-email\";s:5:\"title\";s:12:\"Resend Email\";s:11:\"create_date\";s:19:\"2017-03-07 11:40:25\";s:13:\"modified_date\";s:19:\"2019-03-17 18:45:17\";s:6:\"status\";s:7:\"publish\";s:4:\"link\";s:46:\"http://wpemaillog.com/?post_type=download&p=16\";s:7:\"content\";s:369:\"Resend Email add-on allows you to resend the entire email directly from the email log. Before re-sending the email, this add-on allows you to modify the different fields before re-sending the email.\r\n\r\nYou can also resend all emails or only selected emails in bulk in addition to individually re-sending them.\r\n<h3>Screenshots</h3>\r\n[gallery ids=\"980,981,982,983,984\"]\";s:7:\"excerpt\";s:156:\"Resend Email add-on allows you to resend the entire email directly from the email log. You can also modify the different fields before re-sending the email.\";s:9:\"thumbnail\";s:76:\"https://wpemaillog.com/wp-content/uploads/edd/2016/11/resend-email-addon.png\";s:8:\"category\";a:1:{i:0;a:10:{s:7:\"term_id\";i:4;s:4:\"name\";s:5:\"Addon\";s:4:\"slug\";s:5:\"addon\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:17:\"download_category\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:5;s:6:\"filter\";s:3:\"raw\";}}s:4:\"tags\";b:0;s:9:\"permalink\";s:43:\"https://wpemaillog.com/addons/resend-email/\";s:7:\"version\";s:5:\"2.1.2\";}s:7:\"pricing\";a:3:{s:10:\"singlesite\";s:5:\"19.00\";s:8:\"2-5sites\";s:5:\"37.00\";s:14:\"unlimitedsites\";s:5:\"49.00\";}s:9:\"licensing\";a:4:{s:7:\"enabled\";b:1;s:7:\"version\";s:5:\"2.1.2\";s:8:\"exp_unit\";s:5:\"years\";s:10:\"exp_length\";s:1:\"1\";}}i:2;a:3:{s:4:\"info\";a:14:{s:2:\"id\";i:20;s:4:\"slug\";s:13:\"forward-email\";s:5:\"title\";s:13:\"Forward Email\";s:11:\"create_date\";s:19:\"2017-03-07 11:30:56\";s:13:\"modified_date\";s:19:\"2018-02-13 14:50:29\";s:6:\"status\";s:7:\"publish\";s:4:\"link\";s:46:\"http://wpemaillog.com/?post_type=download&p=20\";s:7:\"content\";s:358:\"Forward Email add-on allows you to send a copy of all the emails send from WordPress, to another email address. The add-on allows you to choose whether you want to forward through to, cc or bcc fields. This can be extremely useful when you want to debug by analyzing the emails that are sent from WordPress.\r\n<h3>Screenshots</h3>\r\n[gallery ids=\"987,988,989\"]\";s:7:\"excerpt\";s:110:\"Forward Email add-on allows you to send a copy of all the emails send from WordPress, to another email address\";s:9:\"thumbnail\";s:77:\"https://wpemaillog.com/wp-content/uploads/edd/2016/11/forward-email-addon.png\";s:8:\"category\";a:1:{i:0;a:10:{s:7:\"term_id\";i:4;s:4:\"name\";s:5:\"Addon\";s:4:\"slug\";s:5:\"addon\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:17:\"download_category\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:5;s:6:\"filter\";s:3:\"raw\";}}s:4:\"tags\";b:0;s:9:\"permalink\";s:44:\"https://wpemaillog.com/addons/forward-email/\";s:7:\"version\";s:5:\"2.0.1\";}s:7:\"pricing\";a:3:{s:10:\"singlesite\";s:5:\"19.00\";s:8:\"2-5sites\";s:5:\"37.00\";s:14:\"unlimitedsites\";s:5:\"49.00\";}s:9:\"licensing\";a:4:{s:7:\"enabled\";b:1;s:7:\"version\";s:5:\"2.0.1\";s:8:\"exp_unit\";s:5:\"years\";s:10:\"exp_length\";s:1:\"1\";}}i:3;a:3:{s:4:\"info\";a:14:{s:2:\"id\";i:311;s:4:\"slug\";s:16:\"auto-delete-logs\";s:5:\"title\";s:16:\"Auto Delete Logs\";s:11:\"create_date\";s:19:\"2017-03-07 11:30:56\";s:13:\"modified_date\";s:19:\"2019-01-03 18:15:51\";s:6:\"status\";s:7:\"publish\";s:4:\"link\";s:48:\"https://wpemaillog.com/?post_type=download&p=311\";s:7:\"content\";s:154:\"The Auto Delete Logs add-on allows you to automatically delete logs based on a schedule.\r\n<h3>Screenshots</h3>\r\n[gallery columns=\"2\" ids=\"791182, 791183\"]\";s:7:\"excerpt\";s:88:\"The Auto Delete Logs add-on allows you to automatically delete logs based on a schedule.\";s:9:\"thumbnail\";s:75:\"https://wpemaillog.com/wp-content/uploads/edd/2017/03/delete-logs-addon.png\";s:8:\"category\";a:1:{i:0;a:10:{s:7:\"term_id\";i:4;s:4:\"name\";s:5:\"Addon\";s:4:\"slug\";s:5:\"addon\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:17:\"download_category\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:5;s:6:\"filter\";s:3:\"raw\";}}s:4:\"tags\";b:0;s:9:\"permalink\";s:47:\"https://wpemaillog.com/addons/auto-delete-logs/\";s:7:\"version\";s:5:\"1.1.0\";}s:7:\"pricing\";a:3:{s:10:\"singlesite\";s:5:\"19.00\";s:8:\"2-5sites\";s:5:\"37.00\";s:14:\"unlimitedsites\";s:5:\"49.00\";}s:9:\"licensing\";a:4:{s:7:\"enabled\";b:1;s:7:\"version\";s:5:\"1.1.0\";s:8:\"exp_unit\";s:5:\"years\";s:10:\"exp_length\";s:1:\"1\";}}i:4;a:3:{s:4:\"info\";a:14:{s:2:\"id\";i:308;s:4:\"slug\";s:11:\"export-logs\";s:5:\"title\";s:11:\"Export Logs\";s:11:\"create_date\";s:19:\"2017-03-07 11:20:12\";s:13:\"modified_date\";s:19:\"2019-04-11 10:47:40\";s:6:\"status\";s:7:\"publish\";s:4:\"link\";s:48:\"https://wpemaillog.com/?post_type=download&p=308\";s:7:\"content\";s:215:\"Export Logs add-on allows you to export the logged email logs as a csv file. The exported logs can be used for further processing or for record keeping.\r\n<h3>Screenshots</h3>\r\n[gallery ids=\"965,966,967,968, 791221\"]\";s:7:\"excerpt\";s:103:\"Export Logs add-on allows you to export the logged email logs for further processing or record keeping.\";s:9:\"thumbnail\";s:75:\"https://wpemaillog.com/wp-content/uploads/edd/2017/03/export-logs-addon.png\";s:8:\"category\";a:1:{i:0;a:10:{s:7:\"term_id\";i:4;s:4:\"name\";s:5:\"Addon\";s:4:\"slug\";s:5:\"addon\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:17:\"download_category\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:5;s:6:\"filter\";s:3:\"raw\";}}s:4:\"tags\";b:0;s:9:\"permalink\";s:42:\"https://wpemaillog.com/addons/export-logs/\";s:7:\"version\";s:5:\"1.2.1\";}s:7:\"pricing\";a:3:{s:10:\"singlesite\";s:5:\"19.00\";s:8:\"2-5sites\";s:5:\"37.00\";s:14:\"unlimitedsites\";s:5:\"49.00\";}s:9:\"licensing\";a:4:{s:7:\"enabled\";b:1;s:7:\"version\";s:5:\"1.2.1\";s:8:\"exp_unit\";s:5:\"years\";s:10:\"exp_length\";s:1:\"1\";}}}s:13:\"request_speed\";d:0.00640106201171875;}', 'no'),
(1033, '_site_transient_timeout_theme_roots', '1590871615', 'no'),
(1034, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1035, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590869820;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1036, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1590869821;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:23:\"email-log/email-log.php\";s:5:\"2.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:40:\"wp-notification-center/notifications.php\";s:3:\"1.0\";s:35:\"wordpress-reset/wordpress-reset.php\";s:5:\"1.4.1\";s:30:\"wedevs-project-manager/cpm.php\";s:6:\"2.3.10\";s:43:\"wedevs-project-manager-business/cpm-pro.php\";s:5:\"2.4.3\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:40:\"wp-notification-center/notifications.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/wp-notification-center\";s:4:\"slug\";s:22:\"wp-notification-center\";s:6:\"plugin\";s:40:\"wp-notification-center/notifications.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/wp-notification-center/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/wp-notification-center.1.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/wp-notification-center/assets/icon-256x256.png?rev=1243675\";s:2:\"1x\";s:75:\"https://ps.w.org/wp-notification-center/assets/icon-128x128.png?rev=1243675\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/wp-notification-center/assets/banner-772x250.png?rev=1243675\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.9\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"wordpress-reset/wordpress-reset.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/wordpress-reset\";s:4:\"slug\";s:15:\"wordpress-reset\";s:6:\"plugin\";s:35:\"wordpress-reset/wordpress-reset.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wordpress-reset/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wordpress-reset.1.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/wordpress-reset/assets/icon.svg?rev=1330992\";s:3:\"svg\";s:60:\"https://ps.w.org/wordpress-reset/assets/icon.svg?rev=1330992\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-reset/assets/banner-1544x500.png?rev=1330994\";s:2:\"1x\";s:70:\"https://ps.w.org/wordpress-reset/assets/banner-772x250.png?rev=1330994\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:23:\"email-log/email-log.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/email-log\";s:4:\"slug\";s:9:\"email-log\";s:6:\"plugin\";s:23:\"email-log/email-log.php\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/email-log/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/email-log.2.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/email-log/assets/icon-256x256.png?rev=1710920\";s:2:\"1x\";s:62:\"https://ps.w.org/email-log/assets/icon-128x128.png?rev=1710920\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/email-log/assets/banner-1544x500.png?rev=1708230\";s:2:\"1x\";s:64:\"https://ps.w.org/email-log/assets/banner-772x250.png?rev=1708230\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/email-log/assets/banner-1544x500-rtl.png?rev=1708230\";s:2:\"1x\";s:68:\"https://ps.w.org/email-log/assets/banner-772x250-rtl.png?rev=1708230\";}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"wedevs-project-manager/cpm.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/wedevs-project-manager\";s:4:\"slug\";s:22:\"wedevs-project-manager\";s:6:\"plugin\";s:30:\"wedevs-project-manager/cpm.php\";s:11:\"new_version\";s:6:\"2.3.10\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/wedevs-project-manager/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/wedevs-project-manager.2.3.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/wedevs-project-manager/assets/icon-256x256.png?rev=1458012\";s:2:\"1x\";s:75:\"https://ps.w.org/wedevs-project-manager/assets/icon-128x128.png?rev=1458012\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/wedevs-project-manager/assets/banner-1544x500.png?rev=1633267\";s:2:\"1x\";s:77:\"https://ps.w.org/wedevs-project-manager/assets/banner-772x250.png?rev=1633267\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1037, '_transient_doing_cron', '1590870763.6739840507507324218750', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_activities`
--

CREATE TABLE `wp_pm_activities` (
  `id` int(11) UNSIGNED NOT NULL,
  `actor_id` int(11) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_id` int(11) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_activities`
--

INSERT INTO `wp_pm_activities` (`id`, `actor_id`, `action`, `action_type`, `resource_id`, `resource_type`, `meta`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'create_project', 'create', 1, 'project', 'a:1:{s:13:\"project_title\";s:16:\"system re-design\";}', 1, '2020-04-26 22:57:15', '2020-04-26 22:57:15'),
(2, 1, 'create_task_list', 'create', 1, 'task_list', 'a:1:{s:15:\"task_list_title\";s:5:\"Inbox\";}', 1, '2020-04-26 22:57:15', '2020-04-26 22:57:15'),
(3, 1, 'create_task', 'create', 1, 'task', 'a:1:{s:10:\"task_title\";s:6:\"task01\";}', 1, '2020-04-26 22:57:41', '2020-04-26 22:57:41'),
(4, 1, 'create_task', 'create', 2, 'task', 'a:1:{s:10:\"task_title\";s:6:\"task02\";}', 1, '2020-04-26 22:58:14', '2020-04-26 22:58:14'),
(5, 1, 'create_task', 'create', 3, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task03\";}', 1, '2020-04-26 23:03:35', '2020-04-26 23:03:35'),
(6, 1, 'create_task', 'create', 4, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task04\";}', 1, '2020-04-26 23:03:43', '2020-04-26 23:03:43'),
(7, 1, 'create_task', 'create', 5, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task05\";}', 1, '2020-04-26 23:03:51', '2020-04-26 23:03:51'),
(8, 1, 'create_task', 'create', 6, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task06\";}', 1, '2020-04-26 23:03:58', '2020-04-26 23:03:58'),
(9, 1, 'update_task_status', 'update', 6, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task06\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-26 23:04:34', '2020-04-26 23:04:34'),
(10, 1, 'update_task_status', 'update', 5, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task05\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-26 23:04:35', '2020-04-26 23:04:35'),
(11, 1, 'update_task_status', 'update', 4, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task04\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-26 23:04:36', '2020-04-26 23:04:36'),
(12, 1, 'delete_task', 'delete', 6, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"Task06\";}', 1, '2020-04-26 23:05:07', '2020-04-26 23:05:07'),
(13, 1, 'update_task_status', 'update', 2, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task02\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-26 23:05:49', '2020-04-26 23:05:49'),
(14, 1, 'delete_task', 'delete', 5, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"Task05\";}', 1, '2020-04-26 23:06:06', '2020-04-26 23:06:06'),
(15, 1, 'update_task_status', 'update', 1, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task01\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-26 23:11:10', '2020-04-26 23:11:10'),
(16, 1, 'delete_task', 'delete', 2, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"task02\";}', 1, '2020-04-26 23:11:39', '2020-04-26 23:11:39'),
(17, 1, 'create_task', 'create', 7, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task05\";}', 1, '2020-04-26 23:12:13', '2020-04-26 23:12:13'),
(18, 1, 'create_task', 'create', 8, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task06\";}', 1, '2020-04-26 23:12:19', '2020-04-26 23:12:19'),
(19, 1, 'create_task', 'create', 9, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task07\";}', 1, '2020-04-26 23:12:27', '2020-04-26 23:12:27'),
(20, 1, 'update_task_status', 'update', 3, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task03\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-26 23:12:52', '2020-04-26 23:12:52'),
(21, 1, 'update_task_status', 'update', 7, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task05\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-26 23:12:54', '2020-04-26 23:12:54'),
(22, 1, 'create_task', 'create', 10, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task08\";}', 1, '2020-04-26 23:13:31', '2020-04-26 23:13:31'),
(23, 1, 'create_task', 'create', 11, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task09\";}', 1, '2020-04-26 23:13:36', '2020-04-26 23:13:36'),
(24, 1, 'create_task', 'create', 12, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task10\";}', 1, '2020-04-26 23:13:41', '2020-04-26 23:13:41'),
(25, 1, 'create_task', 'create', 13, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task11\";}', 1, '2020-04-26 23:14:42', '2020-04-26 23:14:42'),
(26, 1, 'create_task', 'create', 14, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task12\";}', 1, '2020-04-26 23:14:48', '2020-04-26 23:14:48'),
(27, 1, 'update_project_description', 'update', 1, 'project', 'a:1:{s:13:\"project_title\";s:16:\"system re-design\";}', 1, '2020-04-27 23:47:46', '2020-04-27 23:47:46'),
(28, 1, 'duplicate_project', 'duplicate', 2, 'project', 'a:3:{s:14:\"old_project_id\";i:1;s:17:\"old_project_title\";s:16:\"system re-design\";s:17:\"project_title_new\";s:21:\"system re-design copy\";}', 2, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(29, 1, 'update_project_description', 'update', 2, 'project', 'a:1:{s:13:\"project_title\";s:21:\"system re-design copy\";}', 2, '2020-04-27 23:49:34', '2020-04-27 23:49:34'),
(30, 1, 'create_discussion_board', 'create', 3, 'discussion_board', 'a:1:{s:22:\"discussion_board_title\";s:16:\"new discussion 2\";}', 1, '2020-04-27 23:55:21', '2020-04-27 23:55:21'),
(31, 1, 'update_project_status', 'update', 2, 'project', 'a:3:{s:13:\"project_title\";s:21:\"system re-design copy\";s:18:\"project_status_old\";s:10:\"incomplete\";s:18:\"project_status_new\";s:8:\"complete\";}', 2, '2020-04-27 23:56:29', '2020-04-27 23:56:29'),
(33, 1, 'create_project', 'create', 4, 'project', 'a:1:{s:13:\"project_title\";s:3:\"dev\";}', 4, '2020-04-27 23:59:36', '2020-04-27 23:59:36'),
(34, 1, 'create_task_list', 'create', 6, 'task_list', 'a:1:{s:15:\"task_list_title\";s:5:\"Inbox\";}', 4, '2020-04-27 23:59:36', '2020-04-27 23:59:36'),
(35, 1, 'delete_task', 'delete', 7, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"Task05\";}', 1, '2020-04-28 00:02:10', '2020-04-28 00:02:10'),
(36, 1, 'comment_on_task', 'create', 14, 'task', 'a:2:{s:10:\"comment_id\";i:8;s:10:\"task_title\";s:6:\"Task12\";}', 1, '2020-04-28 00:09:43', '2020-04-28 00:09:43'),
(37, 1, 'update_task_description', 'update', 14, 'task', 'a:1:{s:10:\"task_title\";s:6:\"Task12\";}', 1, '2020-04-28 00:09:50', '2020-04-28 00:09:50'),
(38, 1, 'create_task', 'create', 38, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy Task12\";}', 1, '2020-04-28 00:10:48', '2020-04-28 00:10:48'),
(39, 1, 'create_task', 'create', 39, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy Task12\";}', 1, '2020-04-28 00:17:54', '2020-04-28 00:17:54'),
(40, 1, 'create_task_list', 'create', 7, 'task_list', 'a:1:{s:15:\"task_list_title\";s:14:\"New Task Lists\";}', 1, '2020-04-28 00:20:11', '2020-04-28 00:20:11'),
(41, 1, 'create_task', 'create', 40, 'task', 'a:1:{s:10:\"task_title\";s:14:\"Co-worker task\";}', 1, '2020-04-28 00:20:30', '2020-04-28 00:20:30'),
(42, 1, 'create_task', 'create', 42, 'task', 'a:1:{s:10:\"task_title\";s:19:\"Copy Co-worker task\";}', 1, '2020-04-28 00:26:00', '2020-04-28 00:26:00'),
(43, 1, 'update_task_start_at_date', 'update', 42, 'task', 'a:3:{s:10:\"task_title\";s:19:\"Copy Co-worker task\";s:17:\"task_start_at_old\";s:19:\"2020-04-28 00:00:00\";s:17:\"task_start_at_new\";s:19:\"2020-04-23 00:00:00\";}', 1, '2020-04-28 01:55:47', '2020-04-28 01:55:47'),
(44, 1, 'update_task_due_date', 'update', 42, 'task', 'a:3:{s:10:\"task_title\";s:19:\"Copy Co-worker task\";s:17:\"task_due_date_old\";s:19:\"2020-04-30 00:00:00\";s:17:\"task_due_date_new\";s:19:\"2020-05-01 00:00:00\";}', 1, '2020-04-28 01:55:47', '2020-04-28 01:55:47'),
(46, 1, 'create_milestone', 'create', 8, 'milestone', 'a:1:{s:15:\"milestone_title\";s:12:\"Milestone 10\";}', 1, '2020-04-28 07:57:37', '2020-04-28 07:57:37'),
(47, 1, 'duplicate_project', 'duplicate', 5, 'project', 'a:3:{s:14:\"old_project_id\";i:1;s:17:\"old_project_title\";s:16:\"system re-design\";s:17:\"project_title_new\";s:31:\"system re-design copy copy copy\";}', 5, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(48, 1, 'update_project_description', 'update', 5, 'project', 'a:1:{s:13:\"project_title\";s:31:\"system re-design copy copy copy\";}', 5, '2020-04-28 07:58:52', '2020-04-28 07:58:52'),
(49, 1, 'create_task', 'create', 57, 'task', 'a:1:{s:10:\"task_title\";s:10:\"admin task\";}', 1, '2020-04-28 08:11:30', '2020-04-28 08:11:30'),
(50, 1, 'update_task_due_date', 'update', 39, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:17:\"task_due_date_old\";s:19:\"2020-04-30 00:00:00\";s:17:\"task_due_date_new\";s:19:\"2020-04-29 00:00:00\";}', 1, '2020-04-28 08:11:52', '2020-04-28 08:11:52'),
(51, 1, 'update_task_due_date', 'update', 39, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:17:\"task_due_date_old\";s:19:\"2020-04-29 00:00:00\";s:17:\"task_due_date_new\";s:19:\"2020-04-28 00:00:00\";}', 1, '2020-04-28 08:11:59', '2020-04-28 08:11:59'),
(52, 1, 'update_task_status', 'update', 40, 'task', 'a:3:{s:10:\"task_title\";s:14:\"Co-worker task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-28 08:15:06', '2020-04-28 08:15:06'),
(53, 1, 'update_task_status', 'update', 14, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task12\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-28 08:15:07', '2020-04-28 08:15:07'),
(54, 1, 'create_task', 'create', 58, 'task', 'a:1:{s:10:\"task_title\";s:16:\"system re-design\";}', 1, '2020-04-28 08:15:37', '2020-04-28 08:15:37'),
(55, 1, 'create_task', 'create', 59, 'task', 'a:1:{s:10:\"task_title\";s:8:\"11/11:30\";}', 5, '2020-04-28 08:18:27', '2020-04-28 08:18:27'),
(56, 1, 'create_task', 'create', 60, 'task', 'a:1:{s:10:\"task_title\";s:3:\"new\";}', 5, '2020-04-28 08:18:44', '2020-04-28 08:18:44'),
(57, 1, 'create_task', 'create', 61, 'task', 'a:1:{s:10:\"task_title\";s:15:\"doing this task\";}', 1, '2020-04-28 08:19:25', '2020-04-28 08:19:25'),
(58, 1, 'create_discussion_board', 'create', 13, 'discussion_board', 'a:1:{s:22:\"discussion_board_title\";s:13:\"my discussion\";}', 1, '2020-04-28 08:21:48', '2020-04-28 08:21:48'),
(59, 1, 'create_milestone', 'create', 14, 'milestone', 'a:1:{s:15:\"milestone_title\";s:12:\"my milestone\";}', 1, '2020-04-28 08:22:09', '2020-04-28 08:22:09'),
(60, 1, 'create_task', 'create', 62, 'task', 'a:1:{s:10:\"task_title\";s:14:\"create my task\";}', 1, '2020-04-28 08:22:53', '2020-04-28 08:22:53'),
(61, 1, 'create_task', 'create', 63, 'task', 'a:1:{s:10:\"task_title\";s:9:\"Task 2020\";}', 1, '2020-04-29 03:33:00', '2020-04-29 03:33:00'),
(62, 2, 'create_task', 'create', 66, 'task', 'a:1:{s:10:\"task_title\";s:4:\"0909\";}', 5, '2020-04-29 03:45:30', '2020-04-29 03:45:30'),
(63, 2, 'create_task', 'create', 67, 'task', 'a:1:{s:10:\"task_title\";s:11:\"my new task\";}', 5, '2020-04-29 03:46:50', '2020-04-29 03:46:50'),
(64, 3, 'create_task', 'create', 68, 'task', 'a:1:{s:10:\"task_title\";s:11:\"client task\";}', 5, '2020-04-29 03:50:43', '2020-04-29 03:50:43'),
(65, 1, 'create_task_list', 'create', 19, 'task_list', 'a:1:{s:15:\"task_list_title\";s:15:\"Move task lists\";}', 1, '2020-04-29 03:53:19', '2020-04-29 03:53:19'),
(66, 3, 'create_task_list', 'create', 20, 'task_list', 'a:1:{s:15:\"task_list_title\";s:13:\"Co task lists\";}', 1, '2020-04-29 03:54:24', '2020-04-29 03:54:24'),
(67, 3, 'create_task', 'create', 70, 'task', 'a:1:{s:10:\"task_title\";s:1:\"1\";}', 1, '2020-04-29 03:54:33', '2020-04-29 03:54:33'),
(68, 3, 'create_task', 'create', 71, 'task', 'a:1:{s:10:\"task_title\";s:1:\"2\";}', 1, '2020-04-29 03:54:37', '2020-04-29 03:54:37'),
(69, 3, 'create_task', 'create', 72, 'task', 'a:1:{s:10:\"task_title\";s:1:\"3\";}', 1, '2020-04-29 03:54:40', '2020-04-29 03:54:40'),
(70, 3, 'create_task', 'create', 73, 'task', 'a:1:{s:10:\"task_title\";s:1:\"4\";}', 1, '2020-04-29 03:54:46', '2020-04-29 03:54:46'),
(71, 3, 'archived_task_list', 'update', 20, 'task_list', 'a:3:{s:15:\"task_list_title\";s:13:\"Co task lists\";s:20:\"task_list_status_old\";s:1:\"1\";s:20:\"task_list_status_new\";s:8:\"archived\";}', 1, '2020-04-29 03:54:58', '2020-04-29 03:54:58'),
(72, 1, 'create_task', 'create', 76, 'task', 'a:1:{s:10:\"task_title\";s:9:\"main task\";}', 1, '2020-04-29 04:13:32', '2020-04-29 04:13:32'),
(73, 1, 'update_task_status', 'update', 39, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 04:19:35', '2020-04-29 04:19:35'),
(74, 1, 'update_task_status', 'update', 39, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-04-29 04:19:41', '2020-04-29 04:19:41'),
(75, 1, 'update_task_status', 'update', 3, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task03\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-04-29 04:19:59', '2020-04-29 04:19:59'),
(76, 1, 'update_task_status', 'update', 4, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task04\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-04-29 04:20:07', '2020-04-29 04:20:07'),
(77, 1, 'update_task_status', 'update', 14, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task12\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-04-29 04:20:58', '2020-04-29 04:20:58'),
(78, 1, 'create_task', 'create', 80, 'task', 'a:1:{s:10:\"task_title\";s:11:\"my don task\";}', 1, '2020-04-29 04:21:49', '2020-04-29 04:21:49'),
(79, 1, 'create_task', 'create', 81, 'task', 'a:1:{s:10:\"task_title\";s:200:\"In the name of Allah, the Entirely Merciful, the Especially Merciful.In the name of Allah, the Entirely Merciful, the Especially Merciful.In the name of Allah, the Entirely Merciful, the Especially Me\";}', 1, '2020-04-29 04:22:37', '2020-04-29 04:22:37'),
(80, 1, 'comment_on_discussion_board', 'create', 13, 'discussion_board', 'a:2:{s:10:\"comment_id\";i:16;s:22:\"discussion_board_title\";s:13:\"my discussion\";}', 1, '2020-04-29 04:25:05', '2020-04-29 04:25:05'),
(81, 1, 'create_project', 'create', 6, 'project', 'a:1:{s:13:\"project_title\";s:11:\"engineering\";}', 6, '2020-04-29 04:26:02', '2020-04-29 04:26:02'),
(82, 1, 'create_task_list', 'create', 21, 'task_list', 'a:1:{s:15:\"task_list_title\";s:5:\"Inbox\";}', 6, '2020-04-29 04:26:02', '2020-04-29 04:26:02'),
(83, 2, 'update_task_status', 'update', 42, 'task', 'a:3:{s:10:\"task_title\";s:19:\"Copy Co-worker task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 04:29:22', '2020-04-29 04:29:22'),
(84, 2, 'update_task_status', 'update', 39, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 04:29:43', '2020-04-29 04:29:43'),
(85, 1, 'update_project_description', 'update', 1, 'project', 'a:1:{s:13:\"project_title\";s:16:\"system re-design\";}', 1, '2020-04-29 04:33:32', '2020-04-29 04:33:32'),
(86, 1, 'create_task', 'create', 82, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy Task11\";}', 1, '2020-04-29 04:36:35', '2020-04-29 04:36:35'),
(87, 1, 'create_task', 'create', 83, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy Task11\";}', 1, '2020-04-29 04:36:38', '2020-04-29 04:36:38'),
(88, 1, 'update_task_title', 'update', 13, 'task', 'a:2:{s:14:\"task_title_old\";s:6:\"Task11\";s:14:\"task_title_new\";s:9:\"Task11000\";}', 1, '2020-04-29 04:36:46', '2020-04-29 04:36:46'),
(89, 1, 'update_task_title', 'update', 76, 'task', 'a:2:{s:14:\"task_title_old\";s:9:\"main task\";s:14:\"task_title_new\";s:14:\"main task edit\";}', 1, '2020-04-29 04:37:16', '2020-04-29 04:37:16'),
(90, 1, 'update_task_title', 'update', 80, 'task', 'a:2:{s:14:\"task_title_old\";s:11:\"my don task\";s:14:\"task_title_new\";s:24:\"my don task edit for all\";}', 1, '2020-04-29 04:39:48', '2020-04-29 04:39:48'),
(91, 1, 'create_task', 'create', 84, 'task', 'a:1:{s:10:\"task_title\";s:17:\"system re-design \";}', 1, '2020-04-29 04:42:46', '2020-04-29 04:42:46'),
(92, 1, 'update_task_title', 'update', 84, 'task', 'a:2:{s:14:\"task_title_old\";s:17:\"system re-design \";s:14:\"task_title_new\";s:33:\"system re-design discuss with dev\";}', 1, '2020-04-29 04:43:01', '2020-04-29 04:43:01'),
(93, 1, 'comment_on_task_list', 'create', 1, 'task_list', 'a:2:{s:10:\"comment_id\";i:19;s:15:\"task_list_title\";s:5:\"Inbox\";}', 1, '2020-04-29 04:44:15', '2020-04-29 04:44:15'),
(94, 1, 'update_task_status', 'update', 9, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task07\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 04:44:23', '2020-04-29 04:44:23'),
(95, 1, 'update_task_status', 'update', 10, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task08\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 04:44:24', '2020-04-29 04:44:24'),
(96, 1, 'update_task_status', 'update', 11, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task09\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 04:44:25', '2020-04-29 04:44:25'),
(97, 1, 'comment_on_task_list', 'create', 1, 'task_list', 'a:2:{s:10:\"comment_id\";i:23;s:15:\"task_list_title\";s:5:\"Inbox\";}', 1, '2020-04-29 04:44:57', '2020-04-29 04:44:57'),
(98, 1, 'update_task_status', 'update', 1, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task01\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-04-29 04:45:17', '2020-04-29 04:45:17'),
(99, 1, 'delete_task', 'delete', 1, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"task01\";}', 1, '2020-04-29 04:45:31', '2020-04-29 04:45:31'),
(100, 1, 'delete_task', 'delete', 83, 'task', 'a:1:{s:18:\"deleted_task_title\";s:11:\"Copy Task11\";}', 1, '2020-04-29 04:45:38', '2020-04-29 04:45:38'),
(101, 1, 'create_task', 'create', 85, 'task', 'a:1:{s:10:\"task_title\";s:11:\"my new task\";}', 1, '2020-04-29 04:46:10', '2020-04-29 04:46:10'),
(102, 1, 'comment_on_task', 'create', 85, 'task', 'a:2:{s:10:\"comment_id\";i:25;s:10:\"task_title\";s:11:\"my new task\";}', 1, '2020-04-29 04:48:47', '2020-04-29 04:48:47'),
(103, 1, 'create_task', 'create', 88, 'task', 'a:1:{s:10:\"task_title\";s:16:\"Copy my new task\";}', 1, '2020-04-29 04:49:35', '2020-04-29 04:49:35'),
(104, 1, 'update_task_title', 'update', 84, 'task', 'a:2:{s:14:\"task_title_old\";s:33:\"system re-design discuss with dev\";s:14:\"task_title_new\";s:37:\"system re-design discuss with dev 001\";}', 1, '2020-04-29 04:52:40', '2020-04-29 04:52:40'),
(105, 1, 'update_task_due_date', 'update', 88, 'task', 'a:3:{s:10:\"task_title\";s:16:\"Copy my new task\";s:17:\"task_due_date_old\";s:19:\"2020-04-30 00:00:00\";s:17:\"task_due_date_new\";s:19:\"2020-05-06 00:00:00\";}', 1, '2020-04-29 04:55:12', '2020-04-29 04:55:12'),
(106, 1, 'update_milestone_description', 'update', 8, 'milestone', 'a:1:{s:15:\"milestone_title\";s:12:\"Milestone 10\";}', 1, '2020-04-29 04:58:17', '2020-04-29 04:58:17'),
(107, 1, 'create_task', 'create', 89, 'task', 'a:1:{s:10:\"task_title\";s:21:\"my task for all users\";}', 1, '2020-04-29 05:03:12', '2020-04-29 05:03:12'),
(108, 1, 'duplicate_project', 'duplicate', 7, 'project', 'a:3:{s:14:\"old_project_id\";i:4;s:17:\"old_project_title\";s:3:\"dev\";s:17:\"project_title_new\";s:8:\"dev copy\";}', 7, '2020-04-29 05:14:29', '2020-04-29 05:14:29'),
(109, 1, 'update_project_status', 'update', 4, 'project', 'a:3:{s:13:\"project_title\";s:3:\"dev\";s:18:\"project_status_old\";s:10:\"incomplete\";s:18:\"project_status_new\";s:8:\"complete\";}', 4, '2020-04-29 05:14:43', '2020-04-29 05:14:43'),
(110, 1, 'update_task_status', 'update', 14, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task12\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 05:15:04', '2020-04-29 05:15:04'),
(111, 1, 'update_task_status', 'update', 58, 'task', 'a:3:{s:10:\"task_title\";s:16:\"system re-design\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 05:15:05', '2020-04-29 05:15:05'),
(112, 1, 'update_task_status', 'update', 61, 'task', 'a:3:{s:10:\"task_title\";s:15:\"doing this task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 05:15:06', '2020-04-29 05:15:06'),
(113, 1, 'update_task_status', 'update', 63, 'task', 'a:3:{s:10:\"task_title\";s:9:\"Task 2020\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 05:15:09', '2020-04-29 05:15:09'),
(114, 1, 'comment_on_file', 'create', 1, 'file', 'a:5:{s:10:\"comment_id\";i:30;s:6:\"parent\";s:1:\"0\";s:8:\"file_url\";s:95:\"http://localhost/pm-features/wp-content/uploads/2020/04/Screenshot-2020-04-06-at-4.01.35-PM.png\";s:10:\"file_title\";s:39:\"Screenshot-2020-04-06-at-4.01.35-PM.png\";s:13:\"attachment_id\";s:1:\"7\";}', 1, '2020-04-29 05:16:02', '2020-04-29 05:16:02'),
(115, 1, 'delete_task', 'delete', 82, 'task', 'a:1:{s:18:\"deleted_task_title\";s:11:\"Copy Task11\";}', 1, '2020-04-29 05:18:18', '2020-04-29 05:18:18'),
(116, 1, 'create_task', 'create', 92, 'task', 'a:1:{s:10:\"task_title\";s:11:\"my new task\";}', 1, '2020-04-29 05:23:14', '2020-04-29 05:23:14'),
(117, 1, 'create_task', 'create', 94, 'task', 'a:1:{s:10:\"task_title\";s:16:\"Copy my new task\";}', 1, '2020-04-29 05:24:33', '2020-04-29 05:24:33'),
(118, 1, 'create_task_list', 'create', 23, 'task_list', 'a:1:{s:15:\"task_list_title\";s:19:\"Duplicate task list\";}', 1, '2020-04-29 05:25:59', '2020-04-29 05:25:59'),
(119, 1, 'create_task', 'create', 95, 'task', 'a:1:{s:10:\"task_title\";s:23:\"new Duplicate task list\";}', 1, '2020-04-29 05:26:19', '2020-04-29 05:26:19'),
(120, 1, 'create_task', 'create', 98, 'task', 'a:1:{s:10:\"task_title\";s:28:\"Copy new Duplicate task list\";}', 1, '2020-04-29 05:27:59', '2020-04-29 05:27:59'),
(121, 1, 'create_task', 'create', 99, 'task', 'a:1:{s:10:\"task_title\";s:7:\"my task\";}', 1, '2020-04-29 05:30:18', '2020-04-29 05:30:18'),
(122, 1, 'create_task', 'create', 102, 'task', 'a:1:{s:10:\"task_title\";s:12:\"Copy my task\";}', 1, '2020-04-29 05:31:04', '2020-04-29 05:31:04'),
(123, 1, 'update_task_title', 'update', 99, 'task', 'a:2:{s:14:\"task_title_old\";s:7:\"my task\";s:14:\"task_title_new\";s:11:\"my task 009\";}', 1, '2020-04-29 06:47:53', '2020-04-29 06:47:53'),
(124, 1, 'create_task', 'create', 104, 'task', 'a:1:{s:10:\"task_title\";s:16:\"Copy my task 009\";}', 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(125, 1, 'update_project_description', 'update', 1, 'project', 'a:1:{s:13:\"project_title\";s:16:\"system re-design\";}', 1, '2020-04-29 08:22:02', '2020-04-29 08:22:02'),
(126, 1, 'update_task_status', 'update', 61, 'task', 'a:3:{s:10:\"task_title\";s:15:\"doing this task\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-04-29 08:22:30', '2020-04-29 08:22:30'),
(127, 1, 'update_task_status', 'update', 10, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task08\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-04-29 08:22:39', '2020-04-29 08:22:39'),
(128, 1, 'update_task_status', 'update', 4, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task04\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:22:50', '2020-04-29 08:22:50'),
(129, 1, 'update_task_status', 'update', 3, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task03\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:22:51', '2020-04-29 08:22:51'),
(130, 1, 'update_task_status', 'update', 12, 'task', 'a:3:{s:10:\"task_title\";s:6:\"Task10\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:22:52', '2020-04-29 08:22:52'),
(131, 1, 'update_task_status', 'update', 57, 'task', 'a:3:{s:10:\"task_title\";s:10:\"admin task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:22:53', '2020-04-29 08:22:53'),
(132, 1, 'update_task_status', 'update', 84, 'task', 'a:3:{s:10:\"task_title\";s:37:\"system re-design discuss with dev 001\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:22:56', '2020-04-29 08:22:56'),
(133, 1, 'update_task_status', 'update', 102, 'task', 'a:3:{s:10:\"task_title\";s:12:\"Copy my task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:22:59', '2020-04-29 08:22:59'),
(134, 1, 'update_task_status', 'update', 85, 'task', 'a:3:{s:10:\"task_title\";s:11:\"my new task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:23:04', '2020-04-29 08:23:04'),
(135, 1, 'update_task_status', 'update', 65, 'task', 'a:3:{s:10:\"task_title\";s:11:\"my sub task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:23:05', '2020-04-29 08:23:05'),
(136, 1, 'update_task_status', 'update', 62, 'task', 'a:3:{s:10:\"task_title\";s:14:\"create my task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:23:07', '2020-04-29 08:23:07'),
(137, 1, 'update_task_status', 'update', 64, 'task', 'a:3:{s:10:\"task_title\";s:11:\"sub task 01\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-04-29 08:23:09', '2020-04-29 08:23:09'),
(138, 1, 'create_task', 'create', 111, 'task', 'a:1:{s:10:\"task_title\";s:16:\"Copy my task 009\";}', 1, '2020-04-29 08:48:25', '2020-04-29 08:48:25'),
(139, 1, 'create_task', 'create', 115, 'task', 'a:1:{s:10:\"task_title\";s:28:\"Copy new Duplicate task list\";}', 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(140, 1, 'create_task', 'create', 118, 'task', 'a:1:{s:10:\"task_title\";s:5:\"90900\";}', 1, '2020-04-29 08:48:41', '2020-04-29 08:48:41'),
(141, 1, 'create_task', 'create', 119, 'task', 'a:1:{s:10:\"task_title\";s:6:\"123232\";}', 1, '2020-04-29 08:49:00', '2020-04-29 08:49:00'),
(142, 1, 'create_task', 'create', 121, 'task', 'a:1:{s:10:\"task_title\";s:10:\"Copy sub 2\";}', 1, '2020-04-30 03:56:11', '2020-04-30 03:56:11'),
(143, 1, 'create_task', 'create', 123, 'task', 'a:1:{s:10:\"task_title\";s:13:\"new one two 1\";}', 1, '2020-04-30 03:56:41', '2020-04-30 03:56:41'),
(144, 1, 'create_task', 'create', 125, 'task', 'a:1:{s:10:\"task_title\";s:18:\"Copy new one two 1\";}', 1, '2020-04-30 03:57:29', '2020-04-30 03:57:29'),
(145, 1, 'create_task', 'create', 127, 'task', 'a:1:{s:10:\"task_title\";s:3:\"121\";}', 1, '2020-04-30 04:05:27', '2020-04-30 04:05:27'),
(146, 2, 'create_task', 'create', 128, 'task', 'a:1:{s:10:\"task_title\";s:4:\"asds\";}', 1, '2020-04-30 04:06:46', '2020-04-30 04:06:46'),
(147, 2, 'create_task', 'create', 129, 'task', 'a:1:{s:10:\"task_title\";s:10:\"happy task\";}', 1, '2020-04-30 04:09:59', '2020-04-30 04:09:59'),
(148, 2, 'create_task', 'create', 130, 'task', 'a:1:{s:10:\"task_title\";s:10:\"mishu task\";}', 1, '2020-04-30 04:10:27', '2020-04-30 04:10:27'),
(149, 2, 'create_task', 'create', 131, 'task', 'a:1:{s:10:\"task_title\";s:8:\"sdfsfsdf\";}', 1, '2020-04-30 04:10:55', '2020-04-30 04:10:55'),
(150, 1, 'update_task_start_at_date', 'update', 57, 'task', 'a:3:{s:10:\"task_title\";s:10:\"admin task\";s:17:\"task_start_at_old\";s:19:\"2020-05-02 00:00:00\";s:17:\"task_start_at_new\";s:19:\"2020-05-01 00:00:00\";}', 1, '2020-04-30 04:14:08', '2020-04-30 04:14:08'),
(151, 1, 'update_task_due_date', 'update', 57, 'task', 'a:3:{s:10:\"task_title\";s:10:\"admin task\";s:17:\"task_due_date_old\";s:19:\"2020-05-02 00:00:00\";s:17:\"task_due_date_new\";s:19:\"2020-05-01 00:00:00\";}', 1, '2020-04-30 04:14:08', '2020-04-30 04:14:08'),
(152, 1, 'update_task_start_at_date', 'update', 61, 'task', 'a:3:{s:10:\"task_title\";s:15:\"doing this task\";s:17:\"task_start_at_old\";s:19:\"2020-04-28 00:00:00\";s:17:\"task_start_at_new\";s:19:\"2020-04-30 00:00:00\";}', 1, '2020-04-30 04:14:12', '2020-04-30 04:14:12'),
(153, 1, 'update_task_due_date', 'update', 61, 'task', 'a:3:{s:10:\"task_title\";s:15:\"doing this task\";s:17:\"task_due_date_old\";s:19:\"2020-04-30 00:00:00\";s:17:\"task_due_date_new\";s:19:\"2020-05-02 00:00:00\";}', 1, '2020-04-30 04:14:12', '2020-04-30 04:14:12'),
(154, 1, 'duplicate_project', 'duplicate', 8, 'project', 'a:3:{s:14:\"old_project_id\";i:1;s:17:\"old_project_title\";s:16:\"system re-design\";s:17:\"project_title_new\";s:36:\"system re-design copy copy copy copy\";}', 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(155, 1, 'create_discussion_board', 'create', 33, 'discussion_board', 'a:1:{s:22:\"discussion_board_title\";s:7:\"new one\";}', 1, '2020-04-30 06:25:05', '2020-04-30 06:25:05'),
(156, 1, 'create_discussion_board', 'create', 34, 'discussion_board', 'a:1:{s:22:\"discussion_board_title\";s:13:\"discuss 22222\";}', 6, '2020-04-30 06:30:06', '2020-04-30 06:30:06'),
(157, 3, 'update_task_status', 'update', 76, 'task', 'a:3:{s:10:\"task_title\";s:14:\"main task edit\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-05 11:40:02', '2020-05-05 11:40:02'),
(158, 1, 'update_task_status', 'update', 60, 'task', 'a:3:{s:10:\"task_title\";s:3:\"new\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 5, '2020-05-19 04:49:51', '2020-05-19 04:49:51'),
(159, 1, 'create_task', 'create', 185, 'task', 'a:1:{s:10:\"task_title\";s:15:\"my new task-001\";}', 8, '2020-05-19 04:50:16', '2020-05-19 04:50:16'),
(160, 1, 'update_task_estimation', 'update', 185, 'task', 'a:3:{s:10:\"task_title\";s:15:\"my new task-001\";s:19:\"task_estimation_old\";s:1:\"0\";s:19:\"task_estimation_new\";s:5:\"00:00\";}', 8, '2020-05-19 04:50:33', '2020-05-19 04:50:33'),
(161, 1, 'comment_on_task', 'create', 185, 'task', 'a:2:{s:10:\"comment_id\";i:45;s:10:\"task_title\";s:15:\"my new task-001\";}', 8, '2020-05-19 04:50:40', '2020-05-19 04:50:40'),
(162, 1, 'update_task_status', 'update', 185, 'task', 'a:3:{s:10:\"task_title\";s:15:\"my new task-001\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-19 04:50:48', '2020-05-19 04:50:48'),
(163, 1, 'update_task_status', 'update', 183, 'task', 'a:3:{s:10:\"task_title\";s:3:\"121\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-19 04:52:44', '2020-05-19 04:52:44'),
(164, 1, 'comment_on_task', 'create', 183, 'task', 'a:2:{s:10:\"comment_id\";i:48;s:10:\"task_title\";s:3:\"121\";}', 8, '2020-05-19 04:53:09', '2020-05-19 04:53:09'),
(165, 1, 'create_task', 'create', 186, 'task', 'a:1:{s:10:\"task_title\";s:8:\"my new 1\";}', 8, '2020-05-19 05:06:46', '2020-05-19 05:06:46'),
(166, 1, 'update_task_status', 'update', 186, 'task', 'a:3:{s:10:\"task_title\";s:8:\"my new 1\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-19 05:07:12', '2020-05-19 05:07:12'),
(167, 1, 'delete_task', 'delete', 186, 'task', 'a:1:{s:18:\"deleted_task_title\";s:8:\"my new 1\";}', 8, '2020-05-19 05:07:19', '2020-05-19 05:07:19'),
(168, 1, 'delete_task', 'delete', 183, 'task', 'a:1:{s:18:\"deleted_task_title\";s:3:\"121\";}', 8, '2020-05-19 05:19:13', '2020-05-19 05:19:13'),
(169, 3, 'create_task', 'create', 188, 'task', 'a:1:{s:10:\"task_title\";s:5:\"new 1\";}', 8, '2020-05-19 05:26:34', '2020-05-19 05:26:34'),
(170, 1, 'update_project_description', 'update', 6, 'project', 'a:1:{s:13:\"project_title\";s:11:\"engineering\";}', 6, '2020-05-19 05:37:21', '2020-05-19 05:37:21'),
(171, 1, 'create_task', 'create', 189, 'task', 'a:1:{s:10:\"task_title\";s:5:\"new 1\";}', 6, '2020-05-19 05:37:58', '2020-05-19 05:37:58'),
(172, 3, 'create_task', 'create', 190, 'task', 'a:1:{s:10:\"task_title\";s:12:\"new task 001\";}', 6, '2020-05-19 05:39:09', '2020-05-19 05:39:09'),
(173, 3, 'create_task', 'create', 191, 'task', 'a:1:{s:10:\"task_title\";s:7:\"my task\";}', 8, '2020-05-19 05:43:29', '2020-05-19 05:43:29'),
(174, 1, 'update_task_estimation', 'update', 130, 'task', 'a:3:{s:10:\"task_title\";s:10:\"mishu task\";s:19:\"task_estimation_old\";s:1:\"0\";s:19:\"task_estimation_new\";i:180;}', 1, '2020-05-20 06:16:59', '2020-05-20 06:16:59'),
(175, 1, 'update_task_estimation', 'update', 130, 'task', 'a:3:{s:10:\"task_title\";s:10:\"mishu task\";s:19:\"task_estimation_old\";s:3:\"180\";s:19:\"task_estimation_new\";i:300;}', 1, '2020-05-20 07:44:48', '2020-05-20 07:44:48'),
(176, 1, 'update_task_estimation', 'update', 130, 'task', 'a:3:{s:10:\"task_title\";s:10:\"mishu task\";s:19:\"task_estimation_old\";s:3:\"300\";s:19:\"task_estimation_new\";i:0;}', 1, '2020-05-20 07:45:29', '2020-05-20 07:45:29'),
(177, 1, 'delete_task', 'delete', 13, 'task', 'a:1:{s:18:\"deleted_task_title\";s:9:\"Task11000\";}', 1, '2020-05-20 07:47:13', '2020-05-20 07:47:13'),
(178, 1, 'create_project', 'create', 9, 'project', 'a:1:{s:13:\"project_title\";s:5:\"Dokan\";}', 9, '2020-05-20 08:10:17', '2020-05-20 08:10:17'),
(179, 1, 'create_task_list', 'create', 35, 'task_list', 'a:1:{s:15:\"task_list_title\";s:5:\"Inbox\";}', 9, '2020-05-20 08:10:17', '2020-05-20 08:10:17'),
(180, 1, 'create_task', 'create', 195, 'task', 'a:1:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";}', 9, '2020-05-20 08:10:45', '2020-05-20 08:10:45'),
(181, 1, 'create_task', 'create', 196, 'task', 'a:1:{s:10:\"task_title\";s:63:\"Store listing filter does not work when its saved as frontpage	\";}', 9, '2020-05-20 08:10:55', '2020-05-20 08:10:55'),
(182, 1, 'create_task', 'create', 197, 'task', 'a:1:{s:10:\"task_title\";s:32:\"Refactor Stripe Payment Gateway	\";}', 9, '2020-05-20 08:11:06', '2020-05-20 08:11:06'),
(183, 1, 'create_task', 'create', 198, 'task', 'a:1:{s:10:\"task_title\";s:33:\"8 digit number calculation issue	\";}', 9, '2020-05-20 08:11:19', '2020-05-20 08:11:19'),
(184, 1, 'create_task', 'create', 199, 'task', 'a:1:{s:10:\"task_title\";s:32:\"Refactor of Vendor Subscription	\";}', 9, '2020-05-20 08:11:30', '2020-05-20 08:11:30'),
(185, 1, 'create_task', 'create', 200, 'task', 'a:1:{s:10:\"task_title\";s:35:\"Hide vendor info if admin wants to	\";}', 9, '2020-05-20 08:11:46', '2020-05-20 08:11:46'),
(186, 1, 'create_task', 'create', 201, 'task', 'a:1:{s:10:\"task_title\";s:47:\"deduct paypal gateway fee from vendor\'s earning\";}', 9, '2020-05-20 08:11:59', '2020-05-20 08:11:59'),
(187, 1, 'create_task', 'create', 202, 'task', 'a:1:{s:10:\"task_title\";s:58:\"Unable to purchase non recurring subscription with PayPal	\";}', 9, '2020-05-20 08:12:08', '2020-05-20 08:12:08'),
(188, 1, 'create_task', 'create', 203, 'task', 'a:1:{s:10:\"task_title\";s:35:\"Product Knowledge Sharing on Dokan	\";}', 9, '2020-05-20 08:12:19', '2020-05-20 08:12:19'),
(189, 1, 'update_task_estimation', 'update', 195, 'task', 'a:3:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";s:19:\"task_estimation_old\";s:1:\"0\";s:19:\"task_estimation_new\";i:720;}', 9, '2020-05-20 08:15:58', '2020-05-20 08:15:58'),
(190, 1, 'update_task_status', 'update', 195, 'task', 'a:3:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:18:13', '2020-05-20 08:18:13'),
(191, 1, 'update_task_status', 'update', 196, 'task', 'a:3:{s:10:\"task_title\";s:63:\"Store listing filter does not work when its saved as frontpage	\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:18:52', '2020-05-20 08:18:52'),
(192, 1, 'update_task_status', 'update', 197, 'task', 'a:3:{s:10:\"task_title\";s:32:\"Refactor Stripe Payment Gateway	\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:19:52', '2020-05-20 08:19:52'),
(193, 1, 'update_task_status', 'update', 198, 'task', 'a:3:{s:10:\"task_title\";s:33:\"8 digit number calculation issue	\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:21:07', '2020-05-20 08:21:07'),
(194, 1, 'update_task_status', 'update', 199, 'task', 'a:3:{s:10:\"task_title\";s:32:\"Refactor of Vendor Subscription	\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:21:56', '2020-05-20 08:21:56'),
(195, 1, 'update_task_status', 'update', 200, 'task', 'a:3:{s:10:\"task_title\";s:35:\"Hide vendor info if admin wants to	\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:22:42', '2020-05-20 08:22:42'),
(196, 1, 'update_task_status', 'update', 201, 'task', 'a:3:{s:10:\"task_title\";s:47:\"deduct paypal gateway fee from vendor\'s earning\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:23:24', '2020-05-20 08:23:24'),
(197, 1, 'update_task_status', 'update', 202, 'task', 'a:3:{s:10:\"task_title\";s:58:\"Unable to purchase non recurring subscription with PayPal	\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:24:00', '2020-05-20 08:24:00'),
(198, 1, 'update_task_status', 'update', 203, 'task', 'a:3:{s:10:\"task_title\";s:35:\"Product Knowledge Sharing on Dokan	\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:25:01', '2020-05-20 08:25:01'),
(199, 1, 'update_task_status', 'update', 195, 'task', 'a:3:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:32:56', '2020-05-20 08:32:56'),
(200, 1, 'update_task_status', 'update', 195, 'task', 'a:3:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:33:53', '2020-05-20 08:33:53'),
(201, 1, 'update_task_status', 'update', 195, 'task', 'a:3:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:35:53', '2020-05-20 08:35:53'),
(202, 1, 'update_task_status', 'update', 195, 'task', 'a:3:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 9, '2020-05-20 08:36:21', '2020-05-20 08:36:21'),
(203, 1, 'update_task_status', 'update', 195, 'task', 'a:3:{s:10:\"task_title\";s:26:\"Dokan-lite overall testing\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:38:18', '2020-05-20 08:38:18'),
(204, 1, 'update_task_status', 'update', 203, 'task', 'a:3:{s:10:\"task_title\";s:35:\"Product Knowledge Sharing on Dokan	\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:47:09', '2020-05-20 08:47:09'),
(205, 1, 'update_task_status', 'update', 202, 'task', 'a:3:{s:10:\"task_title\";s:58:\"Unable to purchase non recurring subscription with PayPal	\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:50:30', '2020-05-20 08:50:30'),
(206, 1, 'update_task_status', 'update', 201, 'task', 'a:3:{s:10:\"task_title\";s:47:\"deduct paypal gateway fee from vendor\'s earning\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:50:31', '2020-05-20 08:50:31'),
(207, 1, 'update_task_status', 'update', 200, 'task', 'a:3:{s:10:\"task_title\";s:35:\"Hide vendor info if admin wants to	\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:50:32', '2020-05-20 08:50:32'),
(208, 1, 'update_task_status', 'update', 199, 'task', 'a:3:{s:10:\"task_title\";s:32:\"Refactor of Vendor Subscription	\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:50:33', '2020-05-20 08:50:33'),
(209, 1, 'update_task_status', 'update', 198, 'task', 'a:3:{s:10:\"task_title\";s:33:\"8 digit number calculation issue	\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:50:34', '2020-05-20 08:50:34'),
(210, 1, 'update_task_status', 'update', 197, 'task', 'a:3:{s:10:\"task_title\";s:32:\"Refactor Stripe Payment Gateway	\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:50:38', '2020-05-20 08:50:38'),
(211, 1, 'update_task_status', 'update', 196, 'task', 'a:3:{s:10:\"task_title\";s:63:\"Store listing filter does not work when its saved as frontpage	\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 9, '2020-05-20 08:50:39', '2020-05-20 08:50:39'),
(212, 1, 'duplicate_project', 'duplicate', 10, 'project', 'a:3:{s:14:\"old_project_id\";i:9;s:17:\"old_project_title\";s:5:\"Dokan\";s:17:\"project_title_new\";s:10:\"Dokan copy\";}', 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(213, 1, 'create_project', 'create', 11, 'project', 'a:1:{s:13:\"project_title\";s:9:\"Re-design\";}', 11, '2020-05-28 08:10:01', '2020-05-28 08:10:01'),
(214, 1, 'create_task_list', 'create', 37, 'task_list', 'a:1:{s:15:\"task_list_title\";s:5:\"Inbox\";}', 11, '2020-05-28 08:10:01', '2020-05-28 08:10:01'),
(215, 1, 'update_project_title', 'update', 11, 'project', 'a:2:{s:17:\"project_title_old\";s:9:\"Re-design\";s:17:\"project_title_new\";s:11:\"Re-design-2\";}', 11, '2020-05-28 08:12:31', '2020-05-28 08:12:31'),
(216, 1, 'update_project_description', 'update', 11, 'project', 'a:1:{s:13:\"project_title\";s:11:\"Re-design-2\";}', 11, '2020-05-28 08:12:31', '2020-05-28 08:12:31'),
(217, 2, 'update_task_status', 'update', 66, 'task', 'a:3:{s:10:\"task_title\";s:4:\"0909\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 5, '2020-05-28 08:19:07', '2020-05-28 08:19:07'),
(218, 2, 'update_task_status', 'update', 159, 'task', 'a:3:{s:10:\"task_title\";s:21:\"my task for all users\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 08:19:29', '2020-05-28 08:19:29'),
(219, 2, 'update_task_status', 'update', 153, 'task', 'a:3:{s:10:\"task_title\";s:15:\"doing this task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 08:19:34', '2020-05-28 08:19:34'),
(220, 2, 'update_task_status', 'update', 149, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 08:19:39', '2020-05-28 08:19:39'),
(221, 2, 'update_task_status', 'update', 147, 'task', 'a:3:{s:10:\"task_title\";s:8:\"sdfsfsdf\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 08:19:44', '2020-05-28 08:19:44'),
(222, 2, 'create_task', 'create', 222, 'task', 'a:1:{s:10:\"task_title\";s:11:\"my new task\";}', 1, '2020-05-28 08:21:26', '2020-05-28 08:21:26'),
(223, 2, 'update_task_status', 'update', 171, 'task', 'a:3:{s:10:\"task_title\";s:28:\"Copy new Duplicate task list\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 08:23:23', '2020-05-28 08:23:23'),
(224, 2, 'update_task_status', 'update', 160, 'task', 'a:3:{s:10:\"task_title\";s:4:\"asds\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 08:24:34', '2020-05-28 08:24:34'),
(225, 2, 'create_task', 'create', 223, 'task', 'a:1:{s:10:\"task_title\";s:19:\"QA need to analysis\";}', 1, '2020-05-28 08:27:58', '2020-05-28 08:27:58'),
(226, 2, 'delete_task', 'delete', 223, 'task', 'a:1:{s:18:\"deleted_task_title\";s:19:\"QA need to analysis\";}', 1, '2020-05-28 08:29:02', '2020-05-28 08:29:02'),
(227, 2, 'delete_task', 'delete', 128, 'task', 'a:1:{s:18:\"deleted_task_title\";s:4:\"asds\";}', 1, '2020-05-28 08:29:50', '2020-05-28 08:29:50'),
(228, 2, 'update_task_status', 'update', 53, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 5, '2020-05-28 08:30:37', '2020-05-28 08:30:37'),
(229, 2, 'update_task_status', 'update', 115, 'task', 'a:3:{s:10:\"task_title\";s:28:\"Copy new Duplicate task list\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 08:32:08', '2020-05-28 08:32:08'),
(230, 2, 'create_task_list', 'create', 38, 'task_list', 'a:1:{s:15:\"task_list_title\";s:13:\"10 task lists\";}', 1, '2020-05-28 08:32:54', '2020-05-28 08:32:54'),
(231, 2, 'create_task', 'create', 224, 'task', 'a:1:{s:10:\"task_title\";s:8:\"101 task\";}', 1, '2020-05-28 08:33:09', '2020-05-28 08:33:09'),
(232, 2, 'create_task', 'create', 225, 'task', 'a:1:{s:10:\"task_title\";s:13:\"Copy 101 task\";}', 1, '2020-05-28 08:33:32', '2020-05-28 08:33:32'),
(233, 1, 'delete_task', 'delete', 222, 'task', 'a:1:{s:18:\"deleted_task_title\";s:11:\"my new task\";}', 1, '2020-05-28 09:05:56', '2020-05-28 09:05:56'),
(234, 1, 'delete_task', 'delete', 127, 'task', 'a:1:{s:18:\"deleted_task_title\";s:3:\"121\";}', 1, '2020-05-28 09:06:08', '2020-05-28 09:06:08'),
(235, 1, 'delete_task', 'delete', 59, 'task', 'a:1:{s:18:\"deleted_task_title\";s:8:\"11/11:30\";}', 5, '2020-05-28 09:06:48', '2020-05-28 09:06:48'),
(236, 1, 'delete_task', 'delete', 131, 'task', 'a:1:{s:18:\"deleted_task_title\";s:8:\"sdfsfsdf\";}', 1, '2020-05-28 09:07:19', '2020-05-28 09:07:19'),
(237, 1, 'delete_task', 'delete', 130, 'task', 'a:1:{s:18:\"deleted_task_title\";s:10:\"mishu task\";}', 1, '2020-05-28 09:09:54', '2020-05-28 09:09:54'),
(238, 1, 'delete_task', 'delete', 92, 'task', 'a:1:{s:18:\"deleted_task_title\";s:11:\"my new task\";}', 1, '2020-05-28 09:11:57', '2020-05-28 09:11:57'),
(239, 1, 'delete_task', 'delete', 94, 'task', 'a:1:{s:18:\"deleted_task_title\";s:16:\"Copy my new task\";}', 1, '2020-05-28 09:12:04', '2020-05-28 09:12:04'),
(240, 1, 'delete_task', 'delete', 10, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"Task08\";}', 1, '2020-05-28 09:28:09', '2020-05-28 09:28:09'),
(241, 1, 'delete_task', 'delete', 8, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"Task06\";}', 1, '2020-05-28 09:28:24', '2020-05-28 09:28:24'),
(242, 1, 'delete_task', 'delete', 224, 'task', 'a:1:{s:18:\"deleted_task_title\";s:8:\"101 task\";}', 1, '2020-05-28 09:28:43', '2020-05-28 09:28:43'),
(243, 1, 'delete_task', 'delete', 129, 'task', 'a:1:{s:18:\"deleted_task_title\";s:10:\"happy task\";}', 1, '2020-05-28 09:29:00', '2020-05-28 09:29:00'),
(244, 1, 'create_task', 'create', 226, 'task', 'a:1:{s:10:\"task_title\";s:6:\"task 1\";}', 1, '2020-05-28 09:29:09', '2020-05-28 09:29:09'),
(245, 1, 'create_task', 'create', 227, 'task', 'a:1:{s:10:\"task_title\";s:6:\"task 2\";}', 1, '2020-05-28 09:29:13', '2020-05-28 09:29:13'),
(246, 1, 'delete_task', 'delete', 227, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"task 2\";}', 1, '2020-05-28 09:29:33', '2020-05-28 09:29:33'),
(247, 1, 'delete_task', 'delete', 38, 'task', 'a:1:{s:18:\"deleted_task_title\";s:11:\"Copy Task12\";}', 1, '2020-05-28 09:29:57', '2020-05-28 09:29:57'),
(248, 1, 'delete_task', 'delete', 52, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"Task12\";}', 5, '2020-05-28 09:30:31', '2020-05-28 09:30:31'),
(249, 1, 'delete_task', 'delete', 54, 'task', 'a:1:{s:18:\"deleted_task_title\";s:11:\"Copy Task12\";}', 5, '2020-05-28 09:31:05', '2020-05-28 09:31:05'),
(250, 1, 'delete_task', 'delete', 55, 'task', 'a:1:{s:18:\"deleted_task_title\";s:14:\"Co-worker task\";}', 5, '2020-05-28 09:31:50', '2020-05-28 09:31:50'),
(251, 1, 'delete_task', 'delete', 56, 'task', 'a:1:{s:18:\"deleted_task_title\";s:19:\"Copy Co-worker task\";}', 5, '2020-05-28 09:33:32', '2020-05-28 09:33:32'),
(252, 1, 'create_task', 'create', 228, 'task', 'a:1:{s:10:\"task_title\";s:8:\"own task\";}', 9, '2020-05-28 09:33:50', '2020-05-28 09:33:50'),
(253, 1, 'delete_task', 'delete', 228, 'task', 'a:1:{s:18:\"deleted_task_title\";s:8:\"own task\";}', 9, '2020-05-28 09:34:03', '2020-05-28 09:34:03'),
(254, 2, 'delete_task', 'delete', 225, 'task', 'a:1:{s:18:\"deleted_task_title\";s:13:\"Copy 101 task\";}', 1, '2020-05-28 09:34:23', '2020-05-28 09:34:23'),
(255, 1, 'create_task', 'create', 229, 'task', 'a:1:{s:10:\"task_title\";s:6:\"task 2\";}', 1, '2020-05-28 09:48:25', '2020-05-28 09:48:25'),
(256, 2, 'update_task_status', 'update', 144, 'task', 'a:3:{s:10:\"task_title\";s:11:\"my new task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 09:51:47', '2020-05-28 09:51:47'),
(257, 2, 'update_task_status', 'update', 162, 'task', 'a:3:{s:10:\"task_title\";s:24:\"my don task edit for all\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 09:51:59', '2020-05-28 09:51:59'),
(258, 2, 'update_task_status', 'update', 170, 'task', 'a:3:{s:10:\"task_title\";s:23:\"new Duplicate task list\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 09:52:20', '2020-05-28 09:52:20'),
(259, 2, 'update_task_status', 'update', 177, 'task', 'a:3:{s:10:\"task_title\";s:28:\"Copy new Duplicate task list\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 8, '2020-05-28 09:52:29', '2020-05-28 09:52:29'),
(260, 2, 'update_task_status', 'update', 98, 'task', 'a:3:{s:10:\"task_title\";s:28:\"Copy new Duplicate task list\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 09:52:37', '2020-05-28 09:52:37');
INSERT INTO `wp_pm_activities` (`id`, `actor_id`, `action`, `action_type`, `resource_id`, `resource_type`, `meta`, `project_id`, `created_at`, `updated_at`) VALUES
(261, 2, 'update_task_status', 'update', 95, 'task', 'a:3:{s:10:\"task_title\";s:23:\"new Duplicate task list\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 09:52:46', '2020-05-28 09:52:46'),
(262, 2, 'update_task_status', 'update', 89, 'task', 'a:3:{s:10:\"task_title\";s:21:\"my task for all users\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 09:52:55', '2020-05-28 09:52:55'),
(263, 2, 'update_task_status', 'update', 80, 'task', 'a:3:{s:10:\"task_title\";s:24:\"my don task edit for all\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 09:53:04', '2020-05-28 09:53:04'),
(264, 2, 'update_task_status', 'update', 61, 'task', 'a:3:{s:10:\"task_title\";s:15:\"doing this task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 09:53:14', '2020-05-28 09:53:14'),
(265, 2, 'update_task_status', 'update', 226, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 1\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 09:53:35', '2020-05-28 09:53:35'),
(267, 2, 'create_task', 'create', 231, 'task', 'a:1:{s:10:\"task_title\";s:6:\"task 3\";}', 1, '2020-05-28 10:22:05', '2020-05-28 10:22:05'),
(268, 2, 'update_task_status', 'update', 231, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 3\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 10:22:09', '2020-05-28 10:22:09'),
(269, 2, 'delete_task', 'delete', 231, 'task', 'a:1:{s:18:\"deleted_task_title\";s:6:\"task 3\";}', 1, '2020-05-28 10:23:00', '2020-05-28 10:23:00'),
(270, 2, 'create_task', 'create', 232, 'task', 'a:1:{s:10:\"task_title\";s:6:\"task 5\";}', 1, '2020-05-28 10:23:34', '2020-05-28 10:23:34'),
(271, 2, 'create_task', 'create', 233, 'task', 'a:1:{s:10:\"task_title\";s:200:\"Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support. Please enter your Project Manager Pro plugin license key to get the pro features, regular \";}', 1, '2020-05-28 10:24:11', '2020-05-28 10:24:11'),
(272, 2, 'create_task', 'create', 234, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy task 5\";}', 1, '2020-05-28 10:33:31', '2020-05-28 10:33:31'),
(273, 2, 'create_task', 'create', 235, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy task 5\";}', 1, '2020-05-28 10:33:32', '2020-05-28 10:33:32'),
(274, 2, 'create_task', 'create', 236, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy task 5\";}', 1, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(275, 2, 'create_task', 'create', 237, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy task 5\";}', 1, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(276, 2, 'create_task', 'create', 238, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy task 5\";}', 1, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(277, 2, 'create_task', 'create', 239, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy task 5\";}', 1, '2020-05-28 10:33:35', '2020-05-28 10:33:35'),
(278, 2, 'create_task', 'create', 240, 'task', 'a:1:{s:10:\"task_title\";s:11:\"Copy task 5\";}', 1, '2020-05-28 10:33:35', '2020-05-28 10:33:35'),
(279, 2, 'create_task', 'create', 241, 'task', 'a:1:{s:10:\"task_title\";s:16:\"Copy Copy task 5\";}', 1, '2020-05-28 10:33:45', '2020-05-28 10:33:45'),
(280, 2, 'create_task', 'create', 242, 'task', 'a:1:{s:10:\"task_title\";s:16:\"Copy Copy task 5\";}', 1, '2020-05-28 10:33:56', '2020-05-28 10:33:56'),
(281, 2, 'create_task', 'create', 243, 'task', 'a:1:{s:10:\"task_title\";s:205:\"Copy Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support. Please enter your Project Manager Pro plugin license key to get the pro features, regular \";}', 1, '2020-05-28 10:34:06', '2020-05-28 10:34:06'),
(282, 1, 'create_task_list', 'create', 39, 'task_list', 'a:1:{s:15:\"task_list_title\";s:7:\"Task 11\";}', 1, '2020-05-28 10:59:51', '2020-05-28 10:59:51'),
(283, 1, 'create_task', 'create', 244, 'task', 'a:1:{s:10:\"task_title\";s:9:\"task 2020\";}', 1, '2020-05-28 11:02:26', '2020-05-28 11:02:26'),
(284, 1, 'create_task', 'create', 245, 'task', 'a:1:{s:10:\"task_title\";s:14:\"Copy task 2020\";}', 1, '2020-05-28 11:02:38', '2020-05-28 11:02:38'),
(285, 1, 'create_task', 'create', 246, 'task', 'a:1:{s:10:\"task_title\";s:19:\"Copy Copy task 2020\";}', 1, '2020-05-28 11:03:10', '2020-05-28 11:03:10'),
(286, 2, 'create_task', 'create', 247, 'task', 'a:1:{s:10:\"task_title\";s:13:\"01 Mishu task\";}', 1, '2020-05-28 11:04:14', '2020-05-28 11:04:14'),
(287, 2, 'update_task_estimation', 'update', 247, 'task', 'a:3:{s:10:\"task_title\";s:13:\"01 Mishu task\";s:19:\"task_estimation_old\";s:1:\"0\";s:19:\"task_estimation_new\";s:0:\"\";}', 1, '2020-05-28 11:04:31', '2020-05-28 11:04:31'),
(288, 2, 'update_task_estimation', 'update', 247, 'task', 'a:3:{s:10:\"task_title\";s:13:\"01 Mishu task\";s:19:\"task_estimation_old\";s:1:\"0\";s:19:\"task_estimation_new\";s:0:\"\";}', 1, '2020-05-28 11:04:44', '2020-05-28 11:04:44'),
(289, 2, 'create_task', 'create', 248, 'task', 'a:1:{s:10:\"task_title\";s:18:\"Copy 01 Mishu task\";}', 1, '2020-05-28 11:04:50', '2020-05-28 11:04:50'),
(290, 2, 'update_task_due_date', 'update', 248, 'task', 'a:3:{s:10:\"task_title\";s:18:\"Copy 01 Mishu task\";s:17:\"task_due_date_old\";s:19:\"2020-05-30 00:00:00\";s:17:\"task_due_date_new\";s:19:\"2020-05-26 00:00:00\";}', 1, '2020-05-28 11:05:05', '2020-05-28 11:05:05'),
(291, 2, 'update_task_status', 'update', 226, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 1\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:06:01', '2020-05-28 11:06:01'),
(292, 2, 'update_task_status', 'update', 226, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 1\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:33', '2020-05-28 11:06:33'),
(293, 2, 'update_task_status', 'update', 229, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 2\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:34', '2020-05-28 11:06:34'),
(294, 2, 'update_task_status', 'update', 234, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:35', '2020-05-28 11:06:35'),
(295, 2, 'update_task_status', 'update', 232, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:36', '2020-05-28 11:06:36'),
(296, 2, 'update_task_status', 'update', 239, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:37', '2020-05-28 11:06:37'),
(297, 2, 'update_task_status', 'update', 238, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:38', '2020-05-28 11:06:38'),
(298, 2, 'update_task_status', 'update', 236, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:39', '2020-05-28 11:06:39'),
(299, 2, 'update_task_status', 'update', 242, 'task', 'a:3:{s:10:\"task_title\";s:16:\"Copy Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:40', '2020-05-28 11:06:40'),
(300, 2, 'update_task_status', 'update', 235, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:06:41', '2020-05-28 11:06:41'),
(301, 2, 'update_task_status', 'update', 226, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 1\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:06:55', '2020-05-28 11:06:55'),
(302, 2, 'update_task_status', 'update', 229, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 2\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:07:14', '2020-05-28 11:07:14'),
(303, 2, 'update_task_status', 'update', 234, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:07:20', '2020-05-28 11:07:20'),
(304, 2, 'update_task_status', 'update', 232, 'task', 'a:3:{s:10:\"task_title\";s:6:\"task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:08:16', '2020-05-28 11:08:16'),
(305, 2, 'update_task_status', 'update', 242, 'task', 'a:3:{s:10:\"task_title\";s:16:\"Copy Copy task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:08:20', '2020-05-28 11:08:20'),
(306, 1, 'update_task_status', 'update', 239, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:10:13', '2020-05-28 11:10:13'),
(307, 1, 'update_task_status', 'update', 238, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:10:36', '2020-05-28 11:10:36'),
(308, 2, 'update_task_status', 'update', 236, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:10:59', '2020-05-28 11:10:59'),
(309, 2, 'update_task_status', 'update', 235, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:11:19', '2020-05-28 11:11:19'),
(310, 2, 'update_task_status', 'update', 39, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy Task12\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:11:40', '2020-05-28 11:11:40'),
(311, 2, 'update_task_status', 'update', 248, 'task', 'a:3:{s:10:\"task_title\";s:18:\"Copy 01 Mishu task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:12:00', '2020-05-28 11:12:00'),
(312, 2, 'update_task_status', 'update', 247, 'task', 'a:3:{s:10:\"task_title\";s:13:\"01 Mishu task\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:12:01', '2020-05-28 11:12:01'),
(313, 2, 'update_task_status', 'update', 240, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:12:05', '2020-05-28 11:12:05'),
(314, 2, 'update_task_status', 'update', 242, 'task', 'a:3:{s:10:\"task_title\";s:16:\"Copy Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:12:06', '2020-05-28 11:12:06'),
(315, 2, 'update_task_status', 'update', 237, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:12:11', '2020-05-28 11:12:11'),
(316, 2, 'update_task_status', 'update', 235, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:10:\"incomplete\";s:15:\"task_status_new\";s:8:\"complete\";}', 1, '2020-05-28 11:12:12', '2020-05-28 11:12:12'),
(317, 2, 'update_task_status', 'update', 235, 'task', 'a:3:{s:10:\"task_title\";s:11:\"Copy task 5\";s:15:\"task_status_old\";s:8:\"complete\";s:15:\"task_status_new\";s:10:\"incomplete\";}', 1, '2020-05-28 11:12:26', '2020-05-28 11:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_assignees`
--

CREATE TABLE `wp_pm_assignees` (
  `id` int(11) UNSIGNED NOT NULL,
  `task_id` int(11) UNSIGNED NOT NULL,
  `assigned_to` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_assignees`
--

INSERT INTO `wp_pm_assignees` (`id`, `task_id`, `assigned_to`, `status`, `created_by`, `updated_by`, `assigned_at`, `started_at`, `completed_at`, `project_id`, `created_at`, `updated_at`) VALUES
(3, 15, 2, 0, 1, 1, '2020-04-26 22:57:41', NULL, NULL, 2, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(5, 37, 2, 0, 1, 1, '2020-04-28 00:08:59', NULL, NULL, 1, '2020-04-28 00:08:59', '2020-04-28 00:08:59'),
(6, 14, 2, 0, 1, 1, '2020-04-28 00:08:59', NULL, NULL, 1, '2020-04-28 00:08:59', '2020-04-28 00:08:59'),
(8, 39, 2, 0, 1, 2, '2020-04-28 00:08:59', NULL, NULL, 1, '2020-04-28 00:17:54', '2020-05-28 11:11:40'),
(9, 40, 2, 0, 1, 1, '2020-04-28 00:20:31', NULL, NULL, 1, '2020-04-28 00:20:31', '2020-04-28 00:20:31'),
(10, 41, 2, 0, 1, 1, '2020-04-28 00:21:46', NULL, NULL, 1, '2020-04-28 00:21:46', '2020-04-28 00:21:46'),
(11, 42, 2, 2, 1, 2, '2020-04-28 00:20:31', NULL, '2020-04-28 22:29:22', 1, '2020-04-28 00:26:00', '2020-04-29 04:29:22'),
(12, 43, 2, 0, 1, 1, '2020-04-26 22:57:41', NULL, NULL, 5, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(14, 53, 2, 2, 1, 2, '2020-04-28 00:08:59', NULL, '2020-05-28 02:30:37', 5, '2020-04-28 07:57:51', '2020-05-28 08:30:37'),
(18, 39, 1, 0, 1, 1, '2020-04-28 02:04:06', NULL, NULL, 1, '2020-04-28 08:04:06', '2020-04-29 04:19:41'),
(19, 57, 1, 2, 1, 1, '2020-04-28 02:11:30', NULL, '2020-04-29 02:22:53', 1, '2020-04-28 08:11:30', '2020-04-29 08:22:53'),
(20, 58, 2, 0, 1, 1, '2020-04-28 02:15:37', NULL, NULL, 1, '2020-04-28 08:15:37', '2020-04-28 02:15:37'),
(22, 60, 1, 2, 1, 1, '2020-04-28 02:18:44', NULL, '2020-05-18 22:49:51', 5, '2020-04-28 08:18:44', '2020-05-19 04:49:51'),
(24, 62, 3, 0, 1, 1, '2020-04-28 02:22:53', NULL, NULL, 1, '2020-04-28 08:22:53', '2020-04-28 02:22:53'),
(25, 63, 3, 0, 1, 1, '2020-04-28 21:33:00', NULL, NULL, 1, '2020-04-29 03:33:00', '2020-04-28 21:33:00'),
(26, 64, 2, 0, 1, 1, '2020-04-28 21:34:17', NULL, NULL, 1, '2020-04-29 03:34:17', '2020-04-28 21:34:17'),
(27, 63, 2, 0, 1, 1, '2020-04-28 21:34:17', NULL, NULL, 1, '2020-04-29 03:34:17', '2020-04-28 21:34:17'),
(28, 65, 2, 0, 1, 1, '2020-04-28 21:41:26', NULL, NULL, 1, '2020-04-29 03:41:26', '2020-04-28 21:41:26'),
(29, 66, 2, 2, 2, 2, '2020-04-28 21:45:30', NULL, '2020-05-28 02:19:07', 5, '2020-04-29 03:45:30', '2020-05-28 08:19:07'),
(30, 68, 3, 0, 3, 3, '2020-04-28 21:50:43', NULL, NULL, 5, '2020-04-29 03:50:43', '2020-04-28 21:50:43'),
(31, 75, 0, 0, 1, 1, '2020-04-28 22:12:26', NULL, NULL, 1, '2020-04-29 04:12:26', '2020-04-28 22:12:26'),
(32, 57, 0, 0, 1, 1, '2020-04-28 22:12:26', NULL, NULL, 1, '2020-04-29 04:12:26', '2020-04-28 22:12:26'),
(35, 78, 3, 0, 1, 1, '2020-04-28 22:15:34', NULL, NULL, 1, '2020-04-29 04:15:34', '2020-04-28 22:15:34'),
(36, 76, 3, 2, 1, 3, '2020-04-28 22:15:34', NULL, '2020-05-05 05:40:02', 1, '2020-04-29 04:15:34', '2020-05-05 11:40:02'),
(37, 80, 2, 2, 1, 2, '2020-04-28 22:21:50', NULL, '2020-05-28 03:53:04', 1, '2020-04-29 04:21:50', '2020-05-28 09:53:04'),
(38, 85, 4, 0, 1, 1, '2020-04-28 22:46:11', NULL, NULL, 1, '2020-04-29 04:46:11', '2020-04-28 22:46:11'),
(39, 86, 4, 0, 1, 1, '2020-04-28 22:47:01', NULL, NULL, 1, '2020-04-29 04:47:01', '2020-04-28 22:47:01'),
(40, 87, 4, 0, 1, 1, '2020-04-28 22:47:42', NULL, NULL, 1, '2020-04-29 04:47:42', '2020-04-28 22:47:42'),
(41, 88, 4, 0, 1, 1, '2020-04-28 22:46:11', NULL, NULL, 1, '2020-04-29 04:49:35', '2020-04-29 04:49:35'),
(42, 89, 2, 2, 1, 2, '2020-04-28 23:03:12', NULL, '2020-05-28 03:52:55', 1, '2020-04-29 05:03:12', '2020-05-28 09:52:55'),
(44, 93, 5, 0, 1, 1, '2020-04-28 23:23:59', NULL, NULL, 1, '2020-04-29 05:23:59', '2020-04-28 23:23:59'),
(48, 95, 2, 2, 1, 2, '2020-04-28 23:26:20', NULL, '2020-05-28 03:52:46', 1, '2020-04-29 05:26:20', '2020-05-28 09:52:46'),
(49, 96, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 1, '2020-04-29 05:27:05', '2020-04-28 23:27:05'),
(50, 95, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 1, '2020-04-29 05:27:05', '2020-04-28 23:27:05'),
(51, 97, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 1, '2020-04-29 05:27:43', '2020-04-28 23:27:43'),
(52, 95, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 1, '2020-04-29 05:27:43', '2020-04-28 23:27:43'),
(53, 98, 2, 2, 1, 2, '2020-04-28 23:26:20', NULL, '2020-05-28 03:52:37', 1, '2020-04-29 05:27:59', '2020-05-28 09:52:37'),
(54, 98, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 1, '2020-04-29 05:27:59', '2020-04-29 05:27:59'),
(55, 98, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 1, '2020-04-29 05:27:59', '2020-04-29 05:27:59'),
(56, 103, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 1, '2020-04-29 06:45:14', '2020-04-29 00:45:14'),
(57, 99, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 1, '2020-04-29 06:45:14', '2020-04-29 00:45:14'),
(58, 104, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(59, 107, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(60, 108, 2, 0, 1, 1, '2020-04-29 01:59:40', NULL, NULL, 1, '2020-04-29 07:59:40', '2020-04-29 01:59:40'),
(62, 109, 4, 0, 1, 1, '2020-04-29 02:16:02', NULL, NULL, 1, '2020-04-29 08:16:02', '2020-04-29 02:16:02'),
(63, 57, 4, 0, 1, 1, '2020-04-29 02:16:02', NULL, NULL, 1, '2020-04-29 08:16:02', '2020-04-29 02:16:02'),
(64, 110, 4, 0, 1, 1, '2020-04-29 02:17:29', NULL, NULL, 1, '2020-04-29 08:17:29', '2020-04-29 02:17:29'),
(65, 111, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 1, '2020-04-29 08:48:25', '2020-04-29 08:48:25'),
(66, 114, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 1, '2020-04-29 08:48:26', '2020-04-29 08:48:26'),
(67, 115, 2, 2, 1, 2, '2020-04-28 23:26:20', NULL, '2020-05-28 02:32:08', 1, '2020-04-29 08:48:32', '2020-05-28 08:32:08'),
(68, 115, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(69, 115, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(70, 116, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(71, 117, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(72, 120, 4, 0, 1, 1, '2020-04-29 03:04:06', NULL, NULL, 1, '2020-04-29 09:04:06', '2020-04-29 03:04:06'),
(73, 101, 4, 0, 1, 1, '2020-04-29 03:04:06', NULL, NULL, 1, '2020-04-29 09:04:06', '2020-04-29 03:04:06'),
(74, 121, 4, 0, 1, 1, '2020-04-29 03:04:06', NULL, NULL, 1, '2020-04-30 03:56:11', '2020-04-30 03:56:11'),
(75, 122, 4, 0, 1, 1, '2020-04-29 03:04:06', NULL, NULL, 1, '2020-04-30 03:56:11', '2020-04-30 03:56:11'),
(76, 124, 4, 0, 1, 1, '2020-04-29 21:57:12', NULL, NULL, 1, '2020-04-30 03:57:12', '2020-04-29 21:57:12'),
(77, 123, 4, 0, 1, 1, '2020-04-29 21:57:12', NULL, NULL, 1, '2020-04-30 03:57:12', '2020-04-29 21:57:12'),
(78, 125, 4, 0, 1, 1, '2020-04-29 21:57:12', NULL, NULL, 1, '2020-04-30 03:57:29', '2020-04-30 03:57:29'),
(79, 126, 4, 0, 1, 1, '2020-04-29 21:57:12', NULL, NULL, 1, '2020-04-30 03:57:29', '2020-04-30 03:57:29'),
(83, 57, 2, 0, 1, 1, '2020-04-29 22:14:08', NULL, NULL, 1, '2020-04-30 04:14:08', '2020-04-29 22:14:08'),
(84, 61, 2, 2, 1, 2, '2020-04-29 22:14:12', NULL, '2020-05-28 03:53:14', 1, '2020-04-30 04:14:12', '2020-05-28 09:53:14'),
(85, 140, 2, 2, 1, 2, '2020-04-28 00:08:59', NULL, '2020-04-28 22:29:43', 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(86, 140, 1, 0, 1, 1, '2020-04-28 02:04:06', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(87, 141, 1, 2, 1, 1, '2020-04-28 02:11:30', NULL, '2020-04-29 02:22:53', 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(88, 141, 0, 0, 1, 1, '2020-04-28 22:12:26', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(89, 141, 4, 0, 1, 1, '2020-04-29 02:16:02', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(90, 141, 2, 0, 1, 1, '2020-04-29 22:14:08', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(91, 142, 3, 0, 1, 1, '2020-04-28 22:15:34', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(92, 144, 4, 0, 1, 1, '2020-04-28 23:23:14', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(93, 144, 5, 0, 1, 1, '2020-04-28 23:23:59', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(94, 144, 2, 2, 1, 2, '2020-04-29 01:59:40', NULL, '2020-05-28 03:51:47', 8, '2020-04-30 06:19:31', '2020-05-28 09:51:47'),
(95, 145, 4, 0, 1, 1, '2020-04-28 23:23:14', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(96, 145, 5, 0, 1, 1, '2020-04-28 23:23:59', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(97, 147, 2, 2, 2, 2, '2020-04-29 22:10:55', NULL, '2020-05-28 02:19:44', 8, '2020-04-30 06:19:31', '2020-05-28 08:19:44'),
(98, 148, 2, 0, 1, 1, '2020-04-28 00:08:59', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(99, 149, 2, 2, 1, 2, '2020-04-28 00:08:59', NULL, '2020-05-28 02:19:39', 8, '2020-04-30 06:19:31', '2020-05-28 08:19:39'),
(100, 150, 2, 0, 1, 1, '2020-04-28 00:20:31', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(101, 151, 2, 2, 1, 2, '2020-04-28 00:20:31', NULL, '2020-04-28 22:29:22', 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(102, 152, 2, 0, 1, 1, '2020-04-28 02:15:37', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(103, 153, 2, 2, 1, 2, '2020-04-29 22:14:12', NULL, '2020-05-28 02:19:34', 8, '2020-04-30 06:19:31', '2020-05-28 08:19:34'),
(104, 154, 3, 0, 1, 1, '2020-04-28 02:22:53', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(105, 155, 3, 0, 1, 1, '2020-04-28 21:33:00', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(106, 155, 2, 0, 1, 1, '2020-04-28 21:34:17', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(107, 156, 2, 0, 1, 1, '2020-04-28 21:34:17', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(108, 157, 2, 0, 1, 1, '2020-04-28 21:41:26', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(109, 159, 2, 2, 1, 2, '2020-04-28 23:03:12', NULL, '2020-05-28 02:19:29', 8, '2020-04-30 06:19:31', '2020-05-28 08:19:29'),
(110, 160, 2, 2, 2, 2, '2020-04-29 22:06:47', NULL, '2020-05-28 02:24:34', 8, '2020-04-30 06:19:31', '2020-05-28 08:24:34'),
(111, 162, 2, 2, 1, 2, '2020-04-28 22:21:50', NULL, '2020-05-28 03:51:59', 8, '2020-04-30 06:19:31', '2020-05-28 09:51:59'),
(112, 164, 4, 0, 1, 1, '2020-04-28 22:46:11', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(113, 165, 4, 0, 1, 1, '2020-04-28 22:46:11', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(114, 170, 2, 2, 1, 2, '2020-04-28 23:26:20', NULL, '2020-05-28 03:52:20', 8, '2020-04-30 06:19:31', '2020-05-28 09:52:20'),
(115, 170, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(116, 170, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(117, 171, 2, 2, 1, 2, '2020-04-28 23:26:20', NULL, '2020-05-28 02:23:23', 8, '2020-04-30 06:19:31', '2020-05-28 08:23:23'),
(118, 171, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(119, 171, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(120, 172, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(121, 173, 4, 0, 1, 1, '2020-04-29 03:04:06', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(122, 175, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(123, 176, 5, 0, 1, 1, '2020-04-29 00:45:14', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(124, 177, 2, 2, 1, 2, '2020-04-28 23:26:20', NULL, '2020-05-28 03:52:29', 8, '2020-04-30 06:19:31', '2020-05-28 09:52:29'),
(125, 177, 5, 0, 1, 1, '2020-04-28 23:27:05', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(126, 177, 4, 0, 1, 1, '2020-04-28 23:27:43', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(127, 180, 4, 0, 1, 1, '2020-04-29 03:04:06', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(128, 181, 4, 0, 1, 1, '2020-04-29 21:57:12', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(129, 182, 4, 0, 1, 1, '2020-04-29 21:57:12', NULL, NULL, 8, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(131, 185, 1, 2, 1, 1, '2020-05-18 22:50:16', NULL, '2020-05-18 22:50:48', 8, '2020-05-19 04:50:16', '2020-05-19 04:50:48'),
(133, 188, 3, 0, 3, 3, '2020-05-18 23:26:34', NULL, NULL, 8, '2020-05-19 05:26:34', '2020-05-18 23:26:34'),
(134, 190, 3, 0, 3, 3, '2020-05-18 23:39:09', NULL, NULL, 6, '2020-05-19 05:39:09', '2020-05-18 23:39:09'),
(135, 191, 3, 0, 3, 3, '2020-05-18 23:43:29', NULL, NULL, 8, '2020-05-19 05:43:29', '2020-05-18 23:43:29'),
(137, 192, 2, 0, 1, 1, '2020-05-20 01:45:39', NULL, NULL, 1, '2020-05-20 07:45:39', '2020-05-20 01:45:39'),
(138, 193, 2, 0, 1, 1, '2020-05-20 01:46:13', NULL, NULL, 1, '2020-05-20 07:46:13', '2020-05-20 01:46:13'),
(139, 194, 4, 0, 1, 1, '2020-05-20 01:52:54', NULL, NULL, 1, '2020-05-20 07:52:54', '2020-05-20 01:52:54'),
(140, 195, 6, 0, 1, 1, '2020-05-20 02:15:58', NULL, NULL, 9, '2020-05-20 08:15:58', '2020-05-20 02:15:58'),
(141, 196, 6, 0, 1, 1, '2020-05-20 02:16:07', NULL, NULL, 9, '2020-05-20 08:16:07', '2020-05-20 02:16:07'),
(142, 197, 6, 0, 1, 1, '2020-05-20 02:16:16', NULL, NULL, 9, '2020-05-20 08:16:16', '2020-05-20 02:16:16'),
(143, 198, 6, 0, 1, 1, '2020-05-20 02:16:25', NULL, NULL, 9, '2020-05-20 08:16:25', '2020-05-20 02:16:25'),
(144, 199, 6, 0, 1, 1, '2020-05-20 02:16:34', NULL, NULL, 9, '2020-05-20 08:16:34', '2020-05-20 02:16:34'),
(145, 200, 6, 0, 1, 1, '2020-05-20 02:16:43', NULL, NULL, 9, '2020-05-20 08:16:43', '2020-05-20 02:16:43'),
(146, 201, 6, 0, 1, 1, '2020-05-20 02:16:52', NULL, NULL, 9, '2020-05-20 08:16:52', '2020-05-20 02:16:52'),
(147, 202, 6, 0, 1, 1, '2020-05-20 02:16:59', NULL, NULL, 9, '2020-05-20 08:16:59', '2020-05-20 02:16:59'),
(148, 203, 6, 0, 1, 1, '2020-05-20 02:17:06', NULL, NULL, 9, '2020-05-20 08:17:06', '2020-05-20 02:17:06'),
(149, 204, 6, 0, 1, 1, '2020-05-20 02:17:39', NULL, NULL, 9, '2020-05-20 08:17:39', '2020-05-20 02:17:39'),
(150, 205, 6, 0, 1, 1, '2020-05-20 02:18:47', NULL, NULL, 9, '2020-05-20 08:18:47', '2020-05-20 02:18:47'),
(151, 206, 6, 0, 1, 1, '2020-05-20 02:19:45', NULL, NULL, 9, '2020-05-20 08:19:45', '2020-05-20 02:19:45'),
(152, 207, 6, 0, 1, 1, '2020-05-20 02:20:27', NULL, NULL, 9, '2020-05-20 08:20:27', '2020-05-20 02:20:27'),
(153, 208, 6, 0, 1, 1, '2020-05-20 02:21:51', NULL, NULL, 9, '2020-05-20 08:21:51', '2020-05-20 02:21:51'),
(154, 209, 6, 0, 1, 1, '2020-05-20 02:22:37', NULL, NULL, 9, '2020-05-20 08:22:37', '2020-05-20 02:22:37'),
(155, 210, 6, 0, 1, 1, '2020-05-20 02:23:20', NULL, NULL, 9, '2020-05-20 08:23:20', '2020-05-20 02:23:20'),
(156, 211, 6, 0, 1, 1, '2020-05-20 02:23:55', NULL, NULL, 9, '2020-05-20 08:23:55', '2020-05-20 02:23:55'),
(157, 212, 6, 0, 1, 1, '2020-05-20 02:24:54', NULL, NULL, 9, '2020-05-20 08:24:54', '2020-05-20 02:24:54'),
(158, 213, 6, 0, 1, 1, '2020-05-20 02:15:58', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(159, 214, 6, 0, 1, 1, '2020-05-20 02:16:07', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(160, 215, 6, 0, 1, 1, '2020-05-20 02:16:16', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(161, 216, 6, 0, 1, 1, '2020-05-20 02:16:25', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(162, 217, 6, 0, 1, 1, '2020-05-20 02:16:34', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(163, 218, 6, 0, 1, 1, '2020-05-20 02:16:43', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(164, 219, 6, 0, 1, 1, '2020-05-20 02:16:52', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(165, 220, 6, 0, 1, 1, '2020-05-20 02:16:59', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(166, 221, 6, 0, 1, 1, '2020-05-20 02:17:06', NULL, NULL, 10, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(172, 229, 2, 0, 1, 2, '2020-05-28 03:48:33', NULL, NULL, 1, '2020-05-28 09:48:33', '2020-05-28 11:07:14'),
(173, 226, 2, 0, 1, 2, '2020-05-28 03:48:40', NULL, NULL, 1, '2020-05-28 09:48:40', '2020-05-28 11:06:55'),
(176, 232, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:23:34', '2020-05-28 04:23:34'),
(177, 234, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:31', '2020-05-28 10:33:31'),
(178, 235, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:32', '2020-05-28 10:33:32'),
(179, 236, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(180, 237, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(181, 238, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(182, 239, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:35', '2020-05-28 10:33:35'),
(183, 240, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:35', '2020-05-28 10:33:35'),
(184, 241, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:45', '2020-05-28 10:33:45'),
(185, 242, 4, 0, 2, 2, '2020-05-28 04:23:34', NULL, NULL, 1, '2020-05-28 10:33:56', '2020-05-28 10:33:56'),
(186, 245, 4, 0, 1, 1, '2020-05-28 05:02:52', NULL, NULL, 1, '2020-05-28 11:02:52', '2020-05-28 05:02:52'),
(187, 246, 4, 0, 1, 1, '2020-05-28 05:02:52', NULL, NULL, 1, '2020-05-28 11:03:10', '2020-05-28 11:03:10'),
(188, 247, 2, 2, 2, 2, '2020-05-28 05:04:14', NULL, '2020-05-28 05:12:01', 1, '2020-05-28 11:04:14', '2020-05-28 11:12:01'),
(189, 247, 1, 0, 2, 2, '2020-05-28 05:04:30', NULL, NULL, 1, '2020-05-28 11:04:30', '2020-05-28 05:04:30'),
(192, 248, 4, 0, 2, 2, '2020-05-28 05:05:05', NULL, NULL, 1, '2020-05-28 11:05:05', '2020-05-28 05:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_boardables`
--

CREATE TABLE `wp_pm_boardables` (
  `id` int(11) UNSIGNED NOT NULL,
  `board_id` int(11) UNSIGNED NOT NULL,
  `board_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `boardable_id` int(11) UNSIGNED NOT NULL,
  `boardable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_boardables`
--

INSERT INTO `wp_pm_boardables` (`id`, `board_id`, `board_type`, `boardable_id`, `boardable_type`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 1, 'task_list', 3, 'task', 3, 1, 1, '2020-04-26 23:03:35', '2020-04-26 23:03:35'),
(4, 1, 'task_list', 4, 'task', 4, 1, 1, '2020-04-26 23:03:43', '2020-04-26 23:03:43'),
(9, 1, 'task_list', 9, 'task', 7, 1, 1, '2020-04-26 23:12:27', '2020-04-26 23:12:27'),
(11, 1, 'task_list', 11, 'task', 9, 1, 1, '2020-04-26 23:13:36', '2020-04-26 23:13:36'),
(12, 1, 'task_list', 12, 'task', 10, 1, 1, '2020-04-26 23:13:41', '2020-04-26 23:13:41'),
(14, 7, 'task_list', 14, 'task', 3, 1, 1, '2020-04-26 23:14:48', '2020-04-28 08:15:02'),
(15, 2, 'task_list', 15, 'task', 1, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(16, 2, 'task_list', 16, 'task', 3, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(17, 2, 'task_list', 17, 'task', 4, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(18, 2, 'task_list', 18, 'task', 5, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(19, 2, 'task_list', 19, 'task', 6, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(21, 2, 'task_list', 21, 'task', 8, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(22, 2, 'task_list', 22, 'task', 9, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(23, 2, 'task_list', 23, 'task', 10, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(24, 2, 'task_list', 24, 'task', 11, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(25, 2, 'task_list', 25, 'task', 12, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(37, 1, 'task_list', 37, 'sub_task', 1, 1, 1, '2020-04-28 00:08:59', '2020-04-28 00:08:59'),
(39, 1, 'task_list', 39, 'task', 12, 1, 1, '2020-04-28 00:17:54', '2020-04-28 00:17:54'),
(40, 7, 'task_list', 40, 'task', 1, 1, 1, '2020-04-28 00:20:30', '2020-04-28 00:20:30'),
(41, 7, 'task_list', 41, 'sub_task', 1, 1, 1, '2020-04-28 00:21:46', '2020-04-28 00:21:46'),
(42, 7, 'task_list', 42, 'task', 0, 1, 1, '2020-04-28 00:26:00', '2020-04-28 08:15:01'),
(43, 11, 'task_list', 43, 'task', 1, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(44, 11, 'task_list', 44, 'task', 3, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(45, 11, 'task_list', 45, 'task', 4, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(46, 11, 'task_list', 46, 'task', 6, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(47, 11, 'task_list', 47, 'task', 7, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(48, 11, 'task_list', 48, 'task', 8, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(49, 11, 'task_list', 49, 'task', 9, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(50, 11, 'task_list', 50, 'task', 10, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(51, 11, 'task_list', 51, 'task', 11, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(53, 11, 'task_list', 53, 'task', 12, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(57, 1, 'task_list', 57, 'task', 13, 1, 1, '2020-04-28 08:11:30', '2020-04-28 08:11:30'),
(58, 7, 'task_list', 58, 'task', 4, 1, 1, '2020-04-28 08:15:37', '2020-04-28 08:15:37'),
(60, 12, 'task_list', 60, 'task', 3, 1, 1, '2020-04-28 08:18:44', '2020-04-28 08:18:44'),
(61, 7, 'task_list', 61, 'task', 5, 1, 1, '2020-04-28 08:19:25', '2020-04-28 08:19:25'),
(62, 8, 'milestone', 13, 'discussion_board', 0, 1, 1, '2020-04-28 08:21:48', '2020-04-28 08:21:48'),
(63, 7, 'task_list', 62, 'task', 6, 1, 1, '2020-04-28 08:22:53', '2020-04-28 08:22:53'),
(64, 15, 'kanboard', 61, 'task', 0, 1, 1, '2020-04-28 08:23:53', '2020-04-28 08:23:53'),
(65, 17, 'kanboard', 57, 'task', 0, 1, 1, '2020-04-27 20:24:15', '2020-04-28 02:24:19'),
(66, 16, 'kanboard', 39, 'task', 0, 1, 1, '2020-04-27 20:24:15', '2020-04-27 20:24:15'),
(68, 16, 'kanboard', 12, 'task', 0, 1, 1, '2020-04-27 20:24:15', '2020-04-27 20:24:15'),
(69, 16, 'kanboard', 11, 'task', 0, 1, 1, '2020-04-27 20:24:15', '2020-04-27 20:24:15'),
(71, 16, 'kanboard', 9, 'task', 0, 1, 1, '2020-04-27 20:24:15', '2020-04-27 20:24:15'),
(73, 16, 'kanboard', 4, 'task', 0, 1, 1, '2020-04-27 20:24:15', '2020-04-27 20:24:15'),
(74, 16, 'kanboard', 3, 'task', 0, 1, 1, '2020-04-27 20:24:15', '2020-04-27 20:24:15'),
(76, 7, 'task_list', 63, 'task', 0, 1, 1, '2020-04-29 03:33:00', '2020-04-28 22:36:21'),
(77, 7, 'task_list', 64, 'task', 7, 1, 1, '2020-04-29 03:34:17', '2020-04-29 03:34:26'),
(78, 7, 'task_list', 65, 'task', 8, 1, 1, '2020-04-29 03:41:26', '2020-04-29 03:41:33'),
(79, 11, 'task_list', 66, 'task', 13, 2, 2, '2020-04-29 03:45:30', '2020-04-29 03:45:30'),
(80, 11, 'task_list', 67, 'task', 14, 2, 2, '2020-04-29 03:46:50', '2020-04-29 03:46:50'),
(81, 11, 'task_list', 68, 'task', 15, 3, 3, '2020-04-29 03:50:43', '2020-04-29 03:50:43'),
(82, 19, 'task_list', 69, 'task', 0, 1, 1, '2020-04-29 03:53:09', '2020-04-29 04:23:23'),
(84, 20, 'task_list', 70, 'task', 1, 3, 3, '2020-04-29 03:54:33', '2020-04-29 03:54:33'),
(85, 20, 'task_list', 71, 'task', 2, 3, 3, '2020-04-29 03:54:37', '2020-04-29 03:54:37'),
(86, 20, 'task_list', 72, 'task', 3, 3, 3, '2020-04-29 03:54:40', '2020-04-29 03:54:40'),
(87, 20, 'task_list', 73, 'task', 4, 3, 3, '2020-04-29 03:54:46', '2020-04-29 03:54:46'),
(88, 7, 'task_list', 74, 'task', 9, 1, 1, '2020-04-29 03:56:01', '2020-04-29 03:56:30'),
(89, 1, 'task_list', 75, 'sub_task', 2, 1, 1, '2020-04-29 04:12:19', '2020-04-29 04:12:19'),
(90, 1, 'task_list', 76, 'task', 15, 1, 1, '2020-04-29 04:13:32', '2020-04-29 04:13:32'),
(92, 1, 'task_list', 78, 'sub_task', 4, 1, 1, '2020-04-29 04:15:34', '2020-04-29 04:15:34'),
(93, 1, 'task_list', 79, 'sub_task', 5, 1, 1, '2020-04-29 04:19:24', '2020-04-29 04:19:24'),
(94, 19, 'task_list', 80, 'task', 2, 1, 1, '2020-04-29 04:21:49', '2020-04-28 22:23:38'),
(95, 17, 'kanboard', 80, 'task', 1, 1, 1, '2020-04-29 04:21:50', '2020-04-29 04:21:50'),
(96, 19, 'task_list', 81, 'task', 1, 1, 1, '2020-04-29 04:22:37', '2020-04-28 22:23:23'),
(101, 1, 'task_list', 84, 'task', 16, 1, 1, '2020-04-29 04:42:46', '2020-04-29 04:42:46'),
(102, 19, 'task_list', 85, 'task', 3, 1, 1, '2020-04-29 04:46:10', '2020-04-29 04:46:10'),
(103, 19, 'task_list', 86, 'sub_task', 1, 1, 1, '2020-04-29 04:47:01', '2020-04-29 04:47:01'),
(104, 19, 'task_list', 87, 'sub_task', 2, 1, 1, '2020-04-29 04:47:42', '2020-04-29 04:47:42'),
(105, 19, 'task_list', 88, 'task', 3, 1, 1, '2020-04-29 04:49:35', '2020-04-29 04:49:35'),
(106, 8, 'milestone', 19, 'task_list', 0, 1, 1, '2020-04-29 04:57:59', '2020-04-29 04:57:59'),
(107, 7, 'task_list', 89, 'task', 10, 1, 1, '2020-04-29 05:03:12', '2020-04-29 05:03:12'),
(108, 7, 'task_list', 90, 'sub_task', 2, 1, 1, '2020-04-29 05:04:45', '2020-04-29 05:04:45'),
(109, 7, 'task_list', 91, 'sub_task', 3, 1, 1, '2020-04-29 05:04:48', '2020-04-29 05:04:48'),
(111, 1, 'task_list', 93, 'sub_task', 6, 1, 1, '2020-04-29 05:23:59', '2020-04-29 05:23:59'),
(113, 8, 'milestone', 23, 'task_list', 0, 1, 1, '2020-04-29 05:25:59', '2020-04-29 05:25:59'),
(114, 23, 'task_list', 95, 'task', 1, 1, 1, '2020-04-29 05:26:19', '2020-04-29 05:26:19'),
(115, 23, 'task_list', 96, 'sub_task', 1, 1, 1, '2020-04-29 05:27:05', '2020-04-29 05:27:05'),
(116, 23, 'task_list', 97, 'sub_task', 2, 1, 1, '2020-04-29 05:27:43', '2020-04-29 05:27:43'),
(117, 23, 'task_list', 98, 'task', 1, 1, 1, '2020-04-29 05:27:59', '2020-04-29 05:27:59'),
(118, 23, 'task_list', 99, 'task', 2, 1, 1, '2020-04-29 05:30:18', '2020-04-29 05:30:18'),
(119, 23, 'task_list', 100, 'sub_task', 3, 1, 1, '2020-04-29 05:30:27', '2020-04-29 05:30:27'),
(120, 23, 'task_list', 101, 'task', 5, 1, 1, '2020-04-29 05:30:31', '2020-04-29 08:49:45'),
(121, 23, 'task_list', 102, 'task', 2, 1, 1, '2020-04-29 05:31:04', '2020-04-29 05:31:04'),
(122, 23, 'task_list', 103, 'sub_task', 5, 1, 1, '2020-04-29 06:44:39', '2020-04-29 06:44:39'),
(123, 23, 'task_list', 104, 'task', 2, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(124, 23, 'task_list', 105, 'sub_task', 3, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(125, 23, 'task_list', 106, 'sub_task', 4, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(126, 23, 'task_list', 107, 'sub_task', 5, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(127, 1, 'task_list', 108, 'sub_task', 7, 1, 1, '2020-04-29 07:59:40', '2020-04-29 07:59:40'),
(128, 1, 'task_list', 109, 'sub_task', 8, 1, 1, '2020-04-29 08:16:02', '2020-04-29 08:16:02'),
(129, 1, 'task_list', 110, 'sub_task', 9, 1, 1, '2020-04-29 08:17:29', '2020-04-29 08:17:29'),
(130, 23, 'task_list', 111, 'task', 2, 1, 1, '2020-04-29 08:48:25', '2020-04-29 08:48:25'),
(131, 23, 'task_list', 112, 'sub_task', 3, 1, 1, '2020-04-29 08:48:26', '2020-04-29 08:48:26'),
(132, 23, 'task_list', 113, 'sub_task', 4, 1, 1, '2020-04-29 08:48:26', '2020-04-29 08:48:26'),
(133, 23, 'task_list', 114, 'sub_task', 5, 1, 1, '2020-04-29 08:48:26', '2020-04-29 08:48:26'),
(134, 23, 'task_list', 115, 'task', 1, 1, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(135, 23, 'task_list', 116, 'sub_task', 1, 1, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(136, 23, 'task_list', 117, 'sub_task', 2, 1, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(137, 23, 'task_list', 118, 'task', 3, 1, 1, '2020-04-29 08:48:41', '2020-04-29 08:48:41'),
(138, 23, 'task_list', 119, 'task', 4, 1, 1, '2020-04-29 08:49:00', '2020-04-29 08:49:00'),
(139, 23, 'task_list', 120, 'sub_task', 6, 1, 1, '2020-04-29 09:03:48', '2020-04-29 09:03:48'),
(140, 23, 'task_list', 121, 'task', 5, 1, 1, '2020-04-30 03:56:11', '2020-04-30 03:56:11'),
(141, 23, 'task_list', 122, 'sub_task', 6, 1, 1, '2020-04-30 03:56:11', '2020-04-30 03:56:11'),
(142, 23, 'task_list', 123, 'task', 6, 1, 1, '2020-04-30 03:56:41', '2020-04-30 03:56:41'),
(143, 23, 'task_list', 124, 'sub_task', 7, 1, 1, '2020-04-30 03:57:12', '2020-04-30 03:57:12'),
(144, 23, 'task_list', 125, 'task', 6, 1, 1, '2020-04-30 03:57:29', '2020-04-30 03:57:29'),
(145, 23, 'task_list', 126, 'sub_task', 7, 1, 1, '2020-04-30 03:57:29', '2020-04-30 03:57:29'),
(146, 15, 'kanboard', 123, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(147, 15, 'kanboard', 125, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(148, 15, 'kanboard', 101, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(149, 15, 'kanboard', 121, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(150, 15, 'kanboard', 119, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(151, 15, 'kanboard', 118, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(152, 15, 'kanboard', 99, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(153, 15, 'kanboard', 104, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(154, 15, 'kanboard', 111, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(155, 15, 'kanboard', 95, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(156, 15, 'kanboard', 98, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(157, 15, 'kanboard', 115, 'task', 0, 1, 1, '2020-04-30 04:04:42', '2020-04-30 04:04:42'),
(163, 24, 'milestone', 27, 'discussion_board', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(164, 28, 'task_list', 132, 'task', 3, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(165, 28, 'kanboard', 132, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(166, 28, 'task_list', 133, 'task', 4, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(167, 28, 'kanboard', 133, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(168, 28, 'task_list', 134, 'task', 6, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(169, 28, 'kanboard', 134, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(170, 28, 'task_list', 135, 'task', 7, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(171, 28, 'kanboard', 135, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(172, 28, 'task_list', 136, 'task', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(173, 28, 'kanboard', 136, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(174, 28, 'task_list', 137, 'task', 9, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(175, 28, 'kanboard', 137, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(176, 28, 'task_list', 138, 'task', 10, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(177, 28, 'kanboard', 138, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(178, 28, 'task_list', 139, 'task', 11, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(179, 28, 'kanboard', 139, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(180, 28, 'task_list', 140, 'task', 12, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(181, 28, 'kanboard', 140, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(182, 28, 'task_list', 141, 'task', 13, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(183, 28, 'kanboard', 141, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(184, 28, 'task_list', 142, 'task', 15, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(185, 28, 'task_list', 143, 'task', 16, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(186, 28, 'task_list', 144, 'task', 17, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(187, 28, 'task_list', 145, 'task', 17, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(188, 28, 'task_list', 146, 'task', 18, 2, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(189, 28, 'task_list', 147, 'task', 19, 2, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(190, 29, 'task_list', 148, 'task', 3, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(191, 29, 'task_list', 149, 'task', 2, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(192, 29, 'task_list', 150, 'task', 1, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(193, 29, 'task_list', 151, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(194, 29, 'task_list', 152, 'task', 4, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(195, 29, 'task_list', 153, 'task', 5, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(196, 29, 'kanboard', 153, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(197, 29, 'task_list', 154, 'task', 6, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(198, 29, 'task_list', 155, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(199, 29, 'task_list', 156, 'task', 7, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(200, 29, 'task_list', 157, 'task', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(201, 29, 'task_list', 158, 'task', 9, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(202, 29, 'task_list', 159, 'task', 10, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(203, 29, 'task_list', 160, 'task', 11, 2, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(204, 24, 'milestone', 30, 'task_list', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(205, 30, 'task_list', 161, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(206, 30, 'task_list', 162, 'task', 2, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(207, 30, 'kanboard', 162, 'task', 1, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(208, 30, 'task_list', 163, 'task', 1, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(209, 30, 'task_list', 164, 'task', 3, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(210, 30, 'task_list', 165, 'task', 3, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(211, 31, 'task_list', 166, 'task', 1, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(212, 31, 'task_list', 167, 'task', 2, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(213, 31, 'task_list', 168, 'task', 3, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(214, 31, 'task_list', 169, 'task', 4, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(215, 24, 'milestone', 32, 'task_list', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(216, 32, 'task_list', 170, 'task', 1, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(217, 32, 'kanboard', 170, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(218, 32, 'task_list', 171, 'task', 1, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(219, 32, 'kanboard', 171, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(220, 32, 'task_list', 172, 'task', 2, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(221, 32, 'kanboard', 172, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(222, 32, 'task_list', 173, 'task', 5, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(223, 32, 'kanboard', 173, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(224, 32, 'task_list', 174, 'task', 2, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(225, 32, 'task_list', 175, 'task', 2, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(226, 32, 'kanboard', 175, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(227, 32, 'task_list', 176, 'task', 2, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(228, 32, 'kanboard', 176, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(229, 32, 'task_list', 177, 'task', 1, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(230, 32, 'kanboard', 177, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(231, 32, 'task_list', 178, 'task', 3, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(232, 32, 'kanboard', 178, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(233, 32, 'task_list', 179, 'task', 4, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(234, 32, 'kanboard', 179, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(235, 32, 'task_list', 180, 'task', 5, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(236, 32, 'kanboard', 180, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(237, 32, 'task_list', 181, 'task', 6, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(238, 32, 'kanboard', 181, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(239, 32, 'task_list', 182, 'task', 6, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(240, 32, 'kanboard', 182, 'task', 0, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(242, 32, 'task_list', 184, 'task', 8, 2, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(243, 28, 'task_list', 185, 'task', 20, 1, 1, '2020-05-19 04:50:16', '2020-05-19 04:50:16'),
(245, 28, 'task_list', 187, 'sub_task', 1, 1, 1, '2020-05-19 05:07:09', '2020-05-19 05:07:09'),
(246, 28, 'task_list', 188, 'task', 21, 3, 3, '2020-05-19 05:26:34', '2020-05-19 05:26:34'),
(247, 21, 'task_list', 189, 'task', 1, 1, 1, '2020-05-19 05:37:58', '2020-05-19 05:37:58'),
(248, 21, 'task_list', 190, 'task', 2, 3, 3, '2020-05-19 05:39:09', '2020-05-19 05:39:09'),
(249, 28, 'task_list', 191, 'task', 22, 3, 3, '2020-05-19 05:43:29', '2020-05-19 05:43:29'),
(250, 1, 'task_list', 192, 'sub_task', 10, 1, 1, '2020-05-20 07:45:29', '2020-05-20 07:45:29'),
(251, 1, 'task_list', 193, 'sub_task', 11, 1, 1, '2020-05-20 07:46:13', '2020-05-20 07:46:13'),
(252, 1, 'task_list', 194, 'sub_task', 12, 1, 1, '2020-05-20 07:52:54', '2020-05-20 07:52:54'),
(253, 35, 'task_list', 195, 'task', 1, 1, 1, '2020-05-20 08:10:45', '2020-05-20 08:10:45'),
(254, 35, 'task_list', 196, 'task', 2, 1, 1, '2020-05-20 08:10:55', '2020-05-20 08:10:55'),
(255, 35, 'task_list', 197, 'task', 3, 1, 1, '2020-05-20 08:11:06', '2020-05-20 08:11:06'),
(256, 35, 'task_list', 198, 'task', 4, 1, 1, '2020-05-20 08:11:19', '2020-05-20 08:11:19'),
(257, 35, 'task_list', 199, 'task', 5, 1, 1, '2020-05-20 08:11:30', '2020-05-20 08:11:30'),
(258, 35, 'task_list', 200, 'task', 6, 1, 1, '2020-05-20 08:11:46', '2020-05-20 08:11:46'),
(259, 35, 'task_list', 201, 'task', 7, 1, 1, '2020-05-20 08:11:59', '2020-05-20 08:11:59'),
(260, 35, 'task_list', 202, 'task', 8, 1, 1, '2020-05-20 08:12:08', '2020-05-20 08:12:08'),
(261, 35, 'task_list', 203, 'task', 9, 1, 1, '2020-05-20 08:12:19', '2020-05-20 08:12:19'),
(262, 35, 'task_list', 204, 'sub_task', 1, 1, 1, '2020-05-20 08:13:52', '2020-05-20 08:13:52'),
(263, 35, 'task_list', 205, 'sub_task', 2, 1, 1, '2020-05-20 08:18:47', '2020-05-20 08:18:47'),
(264, 35, 'task_list', 206, 'sub_task', 3, 1, 1, '2020-05-20 08:19:45', '2020-05-20 08:19:45'),
(265, 35, 'task_list', 207, 'sub_task', 4, 1, 1, '2020-05-20 08:20:27', '2020-05-20 08:20:27'),
(266, 35, 'task_list', 208, 'sub_task', 5, 1, 1, '2020-05-20 08:21:51', '2020-05-20 08:21:51'),
(267, 35, 'task_list', 209, 'sub_task', 6, 1, 1, '2020-05-20 08:22:37', '2020-05-20 08:22:37'),
(268, 35, 'task_list', 210, 'sub_task', 7, 1, 1, '2020-05-20 08:23:20', '2020-05-20 08:23:20'),
(269, 35, 'task_list', 211, 'sub_task', 8, 1, 1, '2020-05-20 08:23:55', '2020-05-20 08:23:55'),
(270, 35, 'task_list', 212, 'sub_task', 9, 1, 1, '2020-05-20 08:24:54', '2020-05-20 08:24:54'),
(271, 36, 'task_list', 213, 'task', 1, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(272, 36, 'task_list', 214, 'task', 2, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(273, 36, 'task_list', 215, 'task', 3, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(274, 36, 'task_list', 216, 'task', 4, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(275, 36, 'task_list', 217, 'task', 5, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(276, 36, 'task_list', 218, 'task', 6, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(277, 36, 'task_list', 219, 'task', 7, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(278, 36, 'task_list', 220, 'task', 8, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(279, 36, 'task_list', 221, 'task', 9, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(284, 38, 'task_list', 226, 'task', 2, 1, 1, '2020-05-28 09:29:09', '2020-05-28 09:29:09'),
(287, 38, 'task_list', 229, 'task', 3, 1, 1, '2020-05-28 09:48:25', '2020-05-28 09:48:25'),
(290, 38, 'task_list', 232, 'task', 4, 2, 2, '2020-05-28 10:23:34', '2020-05-28 10:23:34'),
(291, 8, 'milestone', 38, 'task_list', 0, 2, 2, '2020-05-28 10:23:58', '2020-05-28 10:23:58'),
(292, 38, 'task_list', 233, 'task', 5, 2, 2, '2020-05-28 10:24:11', '2020-05-28 10:24:11'),
(293, 38, 'task_list', 234, 'task', 4, 2, 2, '2020-05-28 10:33:31', '2020-05-28 10:33:31'),
(294, 38, 'task_list', 235, 'task', 4, 2, 2, '2020-05-28 10:33:32', '2020-05-28 10:33:32'),
(295, 38, 'task_list', 236, 'task', 4, 2, 2, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(296, 38, 'task_list', 237, 'task', 4, 2, 2, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(297, 38, 'task_list', 238, 'task', 4, 2, 2, '2020-05-28 10:33:34', '2020-05-28 10:33:34'),
(298, 38, 'task_list', 239, 'task', 4, 2, 2, '2020-05-28 10:33:35', '2020-05-28 10:33:35'),
(299, 38, 'task_list', 240, 'task', 4, 2, 2, '2020-05-28 10:33:35', '2020-05-28 10:33:35'),
(300, 38, 'task_list', 241, 'task', 4, 2, 2, '2020-05-28 10:33:45', '2020-05-28 10:33:45'),
(301, 38, 'task_list', 242, 'task', 4, 2, 2, '2020-05-28 10:33:56', '2020-05-28 10:33:56'),
(302, 38, 'task_list', 243, 'task', 5, 2, 2, '2020-05-28 10:34:06', '2020-05-28 10:34:06'),
(303, 38, 'task_list', 244, 'task', 6, 1, 1, '2020-05-28 11:02:26', '2020-05-28 11:02:26'),
(304, 38, 'task_list', 245, 'task', 6, 1, 1, '2020-05-28 11:02:38', '2020-05-28 11:02:38'),
(305, 38, 'task_list', 246, 'task', 6, 1, 1, '2020-05-28 11:03:10', '2020-05-28 11:03:10'),
(306, 38, 'task_list', 247, 'task', 7, 2, 2, '2020-05-28 11:04:14', '2020-05-28 11:04:14'),
(307, 38, 'task_list', 248, 'task', 7, 2, 2, '2020-05-28 11:04:50', '2020-05-28 11:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_boards`
--

CREATE TABLE `wp_pm_boards` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `is_private` tinyint(2) UNSIGNED DEFAULT '0',
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_boards`
--

INSERT INTO `wp_pm_boards` (`id`, `title`, `description`, `order`, `type`, `status`, `is_private`, `project_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 1, 1, 1, '2020-04-26 22:57:15', '2020-04-26 22:57:15'),
(2, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 2, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(3, 'new discussion 2', '<p>new discussion 2</p>', 0, 'discussion_board', 1, 0, 1, 1, 1, '2020-04-27 23:55:21', '2020-04-27 23:55:21'),
(6, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 4, 1, 1, '2020-04-27 23:59:36', '2020-04-27 23:59:36'),
(7, 'New Task Lists', NULL, 1, 'task_list', 1, 0, 1, 1, 1, '2020-04-28 00:20:11', '2020-05-28 11:00:11'),
(8, 'Milestone 10', '<p><span style=\"color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic;background-color: #fafafa\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span></p>', 0, 'milestone', 1, 0, 1, 1, 1, '2020-04-28 07:57:37', '2020-04-29 04:58:17'),
(9, 'Milestone 10', '<p>Milestone 10</p>', 0, 'milestone', 1, 0, 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(10, 'new discussion 2', '<p>new discussion 2</p>', 0, 'discussion_board', 1, 0, 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(11, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(12, 'New Task Lists', NULL, 1, 'task_list', 1, 0, 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(13, 'my discussion', '<p>my discussion</p>', 0, 'discussion_board', 1, 1, 1, 1, 1, '2020-04-28 08:21:48', '2020-04-29 04:35:43'),
(14, 'my milestone', '<p>my milestone</p>', 0, 'milestone', 2, 0, 1, 1, 1, '2020-04-28 08:22:09', '2020-04-29 04:58:23'),
(15, 'Open', NULL, 0, 'kanboard', 1, 0, 1, NULL, NULL, NULL, NULL),
(16, 'In Progress', NULL, 1, 'kanboard', 1, 0, 1, NULL, NULL, NULL, NULL),
(17, 'Done', NULL, 2, 'kanboard', 1, 0, 1, NULL, NULL, NULL, NULL),
(18, 'Overdue', NULL, 3, 'kanboard', 1, 0, 1, NULL, NULL, NULL, NULL),
(19, 'Move task lists', 'This is a system default task list. Any task without an assigned tasklist will appear here. This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.', 2, 'task_list', 1, 1, 1, 1, 1, '2020-04-29 03:53:19', '2020-05-28 11:00:06'),
(20, 'Co task lists', 'Co task lists', 3, 'task_list', 0, 0, 1, 3, 3, '2020-04-29 03:54:24', '2020-04-29 03:54:58'),
(21, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 6, 1, 1, '2020-04-29 04:26:02', '2020-04-29 04:26:02'),
(22, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 7, 1, 1, '2020-04-29 05:14:29', '2020-04-29 05:14:29'),
(23, 'Duplicate task list', 'Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list', 3, 'task_list', 1, 0, 1, 1, 1, '2020-04-29 05:25:59', '2020-05-28 11:00:03'),
(24, 'Milestone 10', '<p><span style=\"color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic;background-color: #fafafa\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span><span style=\"background-color: #fafafa;color: #848484;font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', sans-serif;font-size: 12px;font-style: italic\">This is a system default task list. Any task without an assigned tasklist will appear here.</span></p>', 0, 'milestone', 1, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(25, 'my milestone', '<p>my milestone</p>', 0, 'milestone', 2, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(26, 'new discussion 2', '<p>new discussion 2</p>', 0, 'discussion_board', 1, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(27, 'my discussion', '<p>my discussion</p>', 0, 'discussion_board', 1, 1, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(28, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(29, 'New Task Lists', NULL, 1, 'task_list', 1, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(30, 'Move task lists', 'This is a system default task list. Any task without an assigned tasklist will appear here. This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.This is a system default task list. Any task without an assigned tasklist will appear here.', 2, 'task_list', 1, 1, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(31, 'Co task lists', 'Co task lists', 3, 'task_list', 0, 0, 8, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(32, 'Duplicate task list', 'Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list', 4, 'task_list', 1, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(33, 'new one', '<p>new onenew onenew one</p>', 0, 'discussion_board', 1, 0, 1, 1, 1, '2020-04-30 06:25:05', '2020-04-30 06:25:05'),
(34, 'discuss 22222', NULL, 0, 'discussion_board', 1, 0, 6, 1, 1, '2020-04-30 06:30:06', '2020-04-30 06:30:06'),
(35, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 9, 1, 1, '2020-05-20 08:10:17', '2020-05-20 08:10:17'),
(36, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 10, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(37, 'Inbox', 'This is a system default task list. Any task without an assigned tasklist will appear here.', 999999, 'task_list', 1, 0, 11, 1, 1, '2020-05-28 08:10:01', '2020-05-28 08:10:01'),
(38, '10 task lists', 'update task lists', 4, 'task_list', 1, 0, 1, 2, 1, '2020-05-28 08:32:54', '2020-05-28 11:00:00'),
(39, 'Task 11', NULL, 0, 'task_list', 1, 0, 1, 1, 1, '2020-05-28 10:59:51', '2020-05-28 11:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_capabilities`
--

CREATE TABLE `wp_pm_capabilities` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_categories`
--

CREATE TABLE `wp_pm_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `categorible_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_categories`
--

INSERT INTO `wp_pm_categories` (`id`, `title`, `description`, `categorible_type`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'new cat', 'new cat 090909 new\n\n', 'project', 1, 1, '2020-04-27 23:57:07', '2020-05-28 09:04:58'),
(2, 'new cat-2', 'new cat-2', 'project', 1, 1, '2020-04-27 23:57:17', '2020-04-27 23:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_category_project`
--

CREATE TABLE `wp_pm_category_project` (
  `project_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_category_project`
--

INSERT INTO `wp_pm_category_project` (`project_id`, `category_id`) VALUES
(5, 1),
(1, 1),
(6, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_comments`
--

CREATE TABLE `wp_pm_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mentioned_users` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_id` int(11) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_comments`
--

INSERT INTO `wp_pm_comments` (`id`, `content`, `mentioned_users`, `commentable_id`, `commentable_type`, `project_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Task marked as done', NULL, 6, 'task_activity', 1, 1, 1, '2020-04-26 23:04:34', '2020-04-26 23:04:34'),
(2, 'Task marked as done', NULL, 5, 'task_activity', 1, 1, 1, '2020-04-26 23:04:35', '2020-04-26 23:04:35'),
(3, 'Task marked as done', NULL, 4, 'task_activity', 1, 1, 1, '2020-04-26 23:04:36', '2020-04-26 23:04:36'),
(4, 'Task marked as done', NULL, 2, 'task_activity', 1, 1, 1, '2020-04-26 23:05:49', '2020-04-26 23:05:49'),
(5, 'Task marked as done', NULL, 1, 'task_activity', 1, 1, 1, '2020-04-26 23:11:10', '2020-04-26 23:11:10'),
(6, 'Task marked as done', NULL, 3, 'task_activity', 1, 1, 1, '2020-04-26 23:12:52', '2020-04-26 23:12:52'),
(7, 'Task marked as done', NULL, 7, 'task_activity', 1, 1, 1, '2020-04-26 23:12:54', '2020-04-26 23:12:54'),
(8, '<p>hers is comments hers is comments hers is comments hers is comments hers is comments hers is comments</p>', NULL, 14, 'task', 1, 1, 1, '2020-04-28 00:09:43', '2020-04-28 00:09:43'),
(9, 'Task marked as done', NULL, 40, 'task_activity', 1, 1, 1, '2020-04-28 08:15:06', '2020-04-28 08:15:06'),
(10, 'Task marked as done', NULL, 14, 'task_activity', 1, 1, 1, '2020-04-28 08:15:07', '2020-04-28 08:15:07'),
(11, 'Task marked as done', NULL, 39, 'task_activity', 1, 1, 1, '2020-04-29 04:19:35', '2020-04-29 04:19:35'),
(12, 'Task reopened', NULL, 39, 'task_activity', 1, 1, 1, '2020-04-29 04:19:41', '2020-04-29 04:19:41'),
(13, 'Task reopened', NULL, 3, 'task_activity', 1, 1, 1, '2020-04-29 04:19:59', '2020-04-29 04:19:59'),
(14, 'Task reopened', NULL, 4, 'task_activity', 1, 1, 1, '2020-04-29 04:20:07', '2020-04-29 04:20:07'),
(15, 'Task reopened', NULL, 14, 'task_activity', 1, 1, 1, '2020-04-29 04:20:58', '2020-04-29 04:20:58'),
(16, '<p>what you are doing&nbsp;</p>', NULL, 13, 'discussion_board', 1, 1, 1, '2020-04-29 04:25:05', '2020-04-29 04:25:05'),
(17, 'Task marked as done', NULL, 42, 'task_activity', 1, 2, 2, '2020-04-29 04:29:22', '2020-04-29 04:29:22'),
(18, 'Task marked as done', NULL, 39, 'task_activity', 1, 2, 2, '2020-04-29 04:29:43', '2020-04-29 04:29:43'),
(19, '<p>new comments</p>', NULL, 1, 'task_list', 1, 1, 1, '2020-04-29 04:44:15', '2020-04-29 04:44:15'),
(20, 'Task marked as done', NULL, 9, 'task_activity', 1, 1, 1, '2020-04-29 04:44:23', '2020-04-29 04:44:23'),
(21, 'Task marked as done', NULL, 10, 'task_activity', 1, 1, 1, '2020-04-29 04:44:24', '2020-04-29 04:44:24'),
(22, 'Task marked as done', NULL, 11, 'task_activity', 1, 1, 1, '2020-04-29 04:44:25', '2020-04-29 04:44:25'),
(23, '<p>system re-design comments</p>', NULL, 1, 'task_list', 1, 1, 1, '2020-04-29 04:44:57', '2020-04-29 04:44:57'),
(24, 'Task reopened', NULL, 1, 'task_activity', 1, 1, 1, '2020-04-29 04:45:17', '2020-04-29 04:45:17'),
(25, '<p>here is new discussion.</p>', NULL, 85, 'task', 1, 1, 1, '2020-04-29 04:48:47', '2020-04-29 04:48:47'),
(26, 'Task marked as done', NULL, 14, 'task_activity', 1, 1, 1, '2020-04-29 05:15:04', '2020-04-29 05:15:04'),
(27, 'Task marked as done', NULL, 58, 'task_activity', 1, 1, 1, '2020-04-29 05:15:05', '2020-04-29 05:15:05'),
(28, 'Task marked as done', NULL, 61, 'task_activity', 1, 1, 1, '2020-04-29 05:15:06', '2020-04-29 05:15:06'),
(29, 'Task marked as done', NULL, 63, 'task_activity', 1, 1, 1, '2020-04-29 05:15:09', '2020-04-29 05:15:09'),
(30, '<p>here is comments&nbsp;</p>', NULL, 1, 'file', 1, 1, 1, '2020-04-29 05:16:02', '2020-04-29 05:16:02'),
(31, 'Task reopened', NULL, 61, 'task_activity', 1, 1, 1, '2020-04-29 08:22:30', '2020-04-29 08:22:30'),
(32, 'Task reopened', NULL, 10, 'task_activity', 1, 1, 1, '2020-04-29 08:22:39', '2020-04-29 08:22:39'),
(33, 'Task marked as done', NULL, 4, 'task_activity', 1, 1, 1, '2020-04-29 08:22:50', '2020-04-29 08:22:50'),
(34, 'Task marked as done', NULL, 3, 'task_activity', 1, 1, 1, '2020-04-29 08:22:51', '2020-04-29 08:22:51'),
(35, 'Task marked as done', NULL, 12, 'task_activity', 1, 1, 1, '2020-04-29 08:22:52', '2020-04-29 08:22:52'),
(36, 'Task marked as done', NULL, 57, 'task_activity', 1, 1, 1, '2020-04-29 08:22:53', '2020-04-29 08:22:53'),
(37, 'Task marked as done', NULL, 84, 'task_activity', 1, 1, 1, '2020-04-29 08:22:56', '2020-04-29 08:22:56'),
(38, 'Task marked as done', NULL, 102, 'task_activity', 1, 1, 1, '2020-04-29 08:22:59', '2020-04-29 08:22:59'),
(39, 'Task marked as done', NULL, 85, 'task_activity', 1, 1, 1, '2020-04-29 08:23:04', '2020-04-29 08:23:04'),
(40, 'Task marked as done', NULL, 65, 'task_activity', 1, 1, 1, '2020-04-29 08:23:06', '2020-04-29 08:23:06'),
(41, 'Task marked as done', NULL, 62, 'task_activity', 1, 1, 1, '2020-04-29 08:23:07', '2020-04-29 08:23:07'),
(42, 'Task marked as done', NULL, 64, 'task_activity', 1, 1, 1, '2020-04-29 08:23:09', '2020-04-29 08:23:09'),
(43, 'Task marked as done', NULL, 76, 'task_activity', 1, 3, 3, '2020-05-05 11:40:02', '2020-05-05 11:40:02'),
(44, 'Task marked as done', NULL, 60, 'task_activity', 5, 1, 1, '2020-05-19 04:49:51', '2020-05-19 04:49:51'),
(45, '<p>comments</p>', NULL, 185, 'task', 8, 1, 1, '2020-05-19 04:50:40', '2020-05-19 04:50:40'),
(46, 'Task marked as done', NULL, 185, 'task_activity', 8, 1, 1, '2020-05-19 04:50:48', '2020-05-19 04:50:48'),
(47, 'Task marked as done', NULL, 183, 'task_activity', 8, 1, 1, '2020-05-19 04:52:44', '2020-05-19 04:52:44'),
(49, 'Task marked as done', NULL, 186, 'task_activity', 8, 1, 1, '2020-05-19 05:07:12', '2020-05-19 05:07:12'),
(50, 'Task marked as done', NULL, 195, 'task_activity', 9, 1, 1, '2020-05-20 08:18:13', '2020-05-20 08:18:13'),
(51, 'Task marked as done', NULL, 196, 'task_activity', 9, 1, 1, '2020-05-20 08:18:52', '2020-05-20 08:18:52'),
(52, 'Task marked as done', NULL, 197, 'task_activity', 9, 1, 1, '2020-05-20 08:19:52', '2020-05-20 08:19:52'),
(53, 'Task marked as done', NULL, 198, 'task_activity', 9, 1, 1, '2020-05-20 08:21:07', '2020-05-20 08:21:07'),
(54, 'Task marked as done', NULL, 199, 'task_activity', 9, 1, 1, '2020-05-20 08:21:56', '2020-05-20 08:21:56'),
(55, 'Task marked as done', NULL, 200, 'task_activity', 9, 1, 1, '2020-05-20 08:22:42', '2020-05-20 08:22:42'),
(56, 'Task marked as done', NULL, 201, 'task_activity', 9, 1, 1, '2020-05-20 08:23:24', '2020-05-20 08:23:24'),
(57, 'Task marked as done', NULL, 202, 'task_activity', 9, 1, 1, '2020-05-20 08:24:00', '2020-05-20 08:24:00'),
(58, 'Task marked as done', NULL, 203, 'task_activity', 9, 1, 1, '2020-05-20 08:25:01', '2020-05-20 08:25:01'),
(59, 'Task reopened', NULL, 195, 'task_activity', 9, 1, 1, '2020-05-20 08:32:56', '2020-05-20 08:32:56'),
(60, 'Task marked as done', NULL, 195, 'task_activity', 9, 1, 1, '2020-05-20 08:33:53', '2020-05-20 08:33:53'),
(61, 'Task reopened', NULL, 195, 'task_activity', 9, 1, 1, '2020-05-20 08:35:53', '2020-05-20 08:35:53'),
(62, 'Task marked as done', NULL, 195, 'task_activity', 9, 1, 1, '2020-05-20 08:36:21', '2020-05-20 08:36:21'),
(63, 'Task reopened', NULL, 195, 'task_activity', 9, 1, 1, '2020-05-20 08:38:18', '2020-05-20 08:38:18'),
(64, 'Task reopened', NULL, 203, 'task_activity', 9, 1, 1, '2020-05-20 08:47:09', '2020-05-20 08:47:09'),
(65, 'Task reopened', NULL, 202, 'task_activity', 9, 1, 1, '2020-05-20 08:50:30', '2020-05-20 08:50:30'),
(66, 'Task reopened', NULL, 201, 'task_activity', 9, 1, 1, '2020-05-20 08:50:31', '2020-05-20 08:50:31'),
(67, 'Task reopened', NULL, 200, 'task_activity', 9, 1, 1, '2020-05-20 08:50:32', '2020-05-20 08:50:32'),
(68, 'Task reopened', NULL, 199, 'task_activity', 9, 1, 1, '2020-05-20 08:50:33', '2020-05-20 08:50:33'),
(69, 'Task reopened', NULL, 198, 'task_activity', 9, 1, 1, '2020-05-20 08:50:34', '2020-05-20 08:50:34'),
(70, 'Task reopened', NULL, 197, 'task_activity', 9, 1, 1, '2020-05-20 08:50:38', '2020-05-20 08:50:38'),
(71, 'Task reopened', NULL, 196, 'task_activity', 9, 1, 1, '2020-05-20 08:50:39', '2020-05-20 08:50:39'),
(72, 'Task marked as done', NULL, 66, 'task_activity', 5, 2, 2, '2020-05-28 08:19:07', '2020-05-28 08:19:07'),
(73, 'Task marked as done', NULL, 159, 'task_activity', 8, 2, 2, '2020-05-28 08:19:29', '2020-05-28 08:19:29'),
(74, 'Task marked as done', NULL, 153, 'task_activity', 8, 2, 2, '2020-05-28 08:19:34', '2020-05-28 08:19:34'),
(75, 'Task marked as done', NULL, 149, 'task_activity', 8, 2, 2, '2020-05-28 08:19:39', '2020-05-28 08:19:39'),
(76, 'Task marked as done', NULL, 147, 'task_activity', 8, 2, 2, '2020-05-28 08:19:44', '2020-05-28 08:19:44'),
(77, 'Task marked as done', NULL, 171, 'task_activity', 8, 2, 2, '2020-05-28 08:23:23', '2020-05-28 08:23:23'),
(78, 'Task marked as done', NULL, 160, 'task_activity', 8, 2, 2, '2020-05-28 08:24:34', '2020-05-28 08:24:34'),
(79, 'Task marked as done', NULL, 53, 'task_activity', 5, 2, 2, '2020-05-28 08:30:37', '2020-05-28 08:30:37'),
(80, 'Task marked as done', NULL, 115, 'task_activity', 1, 2, 2, '2020-05-28 08:32:08', '2020-05-28 08:32:08'),
(81, 'Task marked as done', NULL, 144, 'task_activity', 8, 2, 2, '2020-05-28 09:51:47', '2020-05-28 09:51:47'),
(82, 'Task marked as done', NULL, 162, 'task_activity', 8, 2, 2, '2020-05-28 09:51:59', '2020-05-28 09:51:59'),
(83, 'Task marked as done', NULL, 170, 'task_activity', 8, 2, 2, '2020-05-28 09:52:20', '2020-05-28 09:52:20'),
(84, 'Task marked as done', NULL, 177, 'task_activity', 8, 2, 2, '2020-05-28 09:52:29', '2020-05-28 09:52:29'),
(85, 'Task marked as done', NULL, 98, 'task_activity', 1, 2, 2, '2020-05-28 09:52:37', '2020-05-28 09:52:37'),
(86, 'Task marked as done', NULL, 95, 'task_activity', 1, 2, 2, '2020-05-28 09:52:46', '2020-05-28 09:52:46'),
(87, 'Task marked as done', NULL, 89, 'task_activity', 1, 2, 2, '2020-05-28 09:52:55', '2020-05-28 09:52:55'),
(88, 'Task marked as done', NULL, 80, 'task_activity', 1, 2, 2, '2020-05-28 09:53:04', '2020-05-28 09:53:04'),
(89, 'Task marked as done', NULL, 61, 'task_activity', 1, 2, 2, '2020-05-28 09:53:14', '2020-05-28 09:53:14'),
(90, 'Task marked as done', NULL, 226, 'task_activity', 1, 2, 2, '2020-05-28 09:53:35', '2020-05-28 09:53:35'),
(91, 'Task marked as done', NULL, 231, 'task_activity', 1, 2, 2, '2020-05-28 10:22:09', '2020-05-28 10:22:09'),
(92, 'Task reopened', NULL, 226, 'task_activity', 1, 2, 2, '2020-05-28 11:06:01', '2020-05-28 11:06:01'),
(93, 'Task marked as done', NULL, 226, 'task_activity', 1, 2, 2, '2020-05-28 11:06:33', '2020-05-28 11:06:33'),
(94, 'Task marked as done', NULL, 229, 'task_activity', 1, 2, 2, '2020-05-28 11:06:34', '2020-05-28 11:06:34'),
(95, 'Task marked as done', NULL, 234, 'task_activity', 1, 2, 2, '2020-05-28 11:06:35', '2020-05-28 11:06:35'),
(96, 'Task marked as done', NULL, 232, 'task_activity', 1, 2, 2, '2020-05-28 11:06:36', '2020-05-28 11:06:36'),
(97, 'Task marked as done', NULL, 239, 'task_activity', 1, 2, 2, '2020-05-28 11:06:37', '2020-05-28 11:06:37'),
(98, 'Task marked as done', NULL, 238, 'task_activity', 1, 2, 2, '2020-05-28 11:06:38', '2020-05-28 11:06:38'),
(99, 'Task marked as done', NULL, 236, 'task_activity', 1, 2, 2, '2020-05-28 11:06:39', '2020-05-28 11:06:39'),
(100, 'Task marked as done', NULL, 242, 'task_activity', 1, 2, 2, '2020-05-28 11:06:40', '2020-05-28 11:06:40'),
(101, 'Task marked as done', NULL, 235, 'task_activity', 1, 2, 2, '2020-05-28 11:06:41', '2020-05-28 11:06:41'),
(102, 'Task reopened', NULL, 226, 'task_activity', 1, 2, 2, '2020-05-28 11:06:55', '2020-05-28 11:06:55'),
(103, 'Task reopened', NULL, 229, 'task_activity', 1, 2, 2, '2020-05-28 11:07:14', '2020-05-28 11:07:14'),
(104, 'Task reopened', NULL, 234, 'task_activity', 1, 2, 2, '2020-05-28 11:07:20', '2020-05-28 11:07:20'),
(105, 'Task reopened', NULL, 232, 'task_activity', 1, 2, 2, '2020-05-28 11:08:16', '2020-05-28 11:08:16'),
(106, 'Task reopened', NULL, 242, 'task_activity', 1, 2, 2, '2020-05-28 11:08:20', '2020-05-28 11:08:20'),
(107, 'Task reopened', NULL, 239, 'task_activity', 1, 1, 1, '2020-05-28 11:10:13', '2020-05-28 11:10:13'),
(108, 'Task reopened', NULL, 238, 'task_activity', 1, 1, 1, '2020-05-28 11:10:36', '2020-05-28 11:10:36'),
(109, 'Task reopened', NULL, 236, 'task_activity', 1, 2, 2, '2020-05-28 11:10:59', '2020-05-28 11:10:59'),
(110, 'Task reopened', NULL, 235, 'task_activity', 1, 2, 2, '2020-05-28 11:11:19', '2020-05-28 11:11:19'),
(111, 'Task reopened', NULL, 39, 'task_activity', 1, 2, 2, '2020-05-28 11:11:40', '2020-05-28 11:11:40'),
(112, 'Task reopened', NULL, 39, 'task_activity', 1, 2, 2, '2020-05-28 11:11:45', '2020-05-28 11:11:45'),
(113, 'Task marked as done', NULL, 248, 'task_activity', 1, 2, 2, '2020-05-28 11:12:00', '2020-05-28 11:12:00'),
(114, 'Task marked as done', NULL, 247, 'task_activity', 1, 2, 2, '2020-05-28 11:12:01', '2020-05-28 11:12:01'),
(115, 'Task marked as done', NULL, 240, 'task_activity', 1, 2, 2, '2020-05-28 11:12:05', '2020-05-28 11:12:05'),
(116, 'Task marked as done', NULL, 242, 'task_activity', 1, 2, 2, '2020-05-28 11:12:06', '2020-05-28 11:12:06'),
(117, 'Task marked as done', NULL, 237, 'task_activity', 1, 2, 2, '2020-05-28 11:12:11', '2020-05-28 11:12:11'),
(118, 'Task marked as done', NULL, 235, 'task_activity', 1, 2, 2, '2020-05-28 11:12:12', '2020-05-28 11:12:12'),
(119, 'Task reopened', NULL, 235, 'task_activity', 1, 2, 2, '2020-05-28 11:12:26', '2020-05-28 11:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_custom_fields`
--

CREATE TABLE `wp_pm_custom_fields` (
  `id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `type` varchar(50) DEFAULT NULL,
  `optional_value` text,
  `order` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_custom_fields`
--

INSERT INTO `wp_pm_custom_fields` (`id`, `project_id`, `title`, `description`, `type`, `optional_value`, `order`) VALUES
(2, 1, 'High', 'her is listing high', 'dropdown', 'a:1:{i:0;a:4:{s:5:\"title\";s:6:\"Issues\";s:5:\"color\";s:7:\"#BC3F3F\";s:3:\"key\";s:6:\"issues\";s:6:\"update\";s:5:\"false\";}}', 1),
(3, 1, 'Low', '', 'text', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_files`
--

CREATE TABLE `wp_pm_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fileable_id` int(11) DEFAULT NULL,
  `fileable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file',
  `attachment_id` bigint(20) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_files`
--

INSERT INTO `wp_pm_files` (`id`, `fileable_id`, `fileable_type`, `type`, `attachment_id`, `parent`, `project_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'discussion_board', 'discussion_board', 7, 0, 1, 1, 1, '2020-04-27 23:55:42', '2020-04-27 23:55:42'),
(2, 3, 'discussion_board', 'discussion_board', 8, 0, 1, 1, 1, '2020-04-27 23:55:42', '2020-04-27 23:55:42'),
(5, 10, 'discussion_board', 'discussion_board', 7, 0, 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(6, 10, 'discussion_board', 'discussion_board', 8, 0, 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(7, NULL, 'file', 'folder', NULL, 0, 1, 1, 1, '2020-04-28 08:22:21', '2020-04-28 08:22:21'),
(8, 16, 'comment', 'file', 9, 0, 1, 1, 1, '2020-04-29 04:25:06', '2020-04-29 04:25:06'),
(9, 13, 'discussion_board', 'discussion_board', 10, 0, 1, 1, 1, '2020-04-29 04:35:44', '2020-04-29 04:35:44'),
(10, 30, 'comment', 'file_comments_file', 11, 0, 1, 1, 1, '2020-04-29 05:16:03', '2020-04-29 05:16:03'),
(11, 0, 'file', 'pro_file', 12, 0, 1, 1, 1, '2020-04-29 05:16:22', '2020-04-29 05:16:22'),
(12, NULL, 'file', 'doc', NULL, 0, 1, 1, 1, '2020-04-29 05:17:31', '2020-04-29 05:17:31'),
(13, NULL, 'file', 'folder', NULL, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(14, 0, 'file', 'pro_file', 12, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(15, NULL, 'file', 'doc', NULL, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(16, 26, 'discussion_board', 'discussion_board', 7, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(17, 26, 'discussion_board', 'discussion_board', 8, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(18, 27, 'discussion_board', 'discussion_board', 10, 0, 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(19, 33, 'discussion_board', 'discussion_board', 16, 0, 1, 1, 1, '2020-04-30 06:25:06', '2020-04-30 06:25:06'),
(20, 34, 'discussion_board', 'discussion_board', 17, 0, 6, 1, 1, '2020-04-30 06:30:07', '2020-04-30 06:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_gantt_chart_links`
--

CREATE TABLE `wp_pm_gantt_chart_links` (
  `id` int(11) UNSIGNED NOT NULL,
  `source` int(11) UNSIGNED NOT NULL,
  `target` int(11) UNSIGNED NOT NULL,
  `type` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_imports`
--

CREATE TABLE `wp_pm_imports` (
  `id` int(20) UNSIGNED NOT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(15) UNSIGNED DEFAULT NULL,
  `source` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_integrations`
--

CREATE TABLE `wp_pm_integrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `project_id` int(20) DEFAULT NULL,
  `primary_key` int(20) DEFAULT NULL,
  `foreign_key` int(20) DEFAULT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_invoice`
--

CREATE TABLE `wp_pm_invoice` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `start_at` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `partial` tinyint(4) NOT NULL DEFAULT '0',
  `partial_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `terms` text COLLATE utf8mb4_unicode_ci,
  `client_note` text COLLATE utf8mb4_unicode_ci,
  `items` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_invoice`
--

INSERT INTO `wp_pm_invoice` (`id`, `title`, `client_id`, `project_id`, `status`, `start_at`, `due_date`, `discount`, `partial`, `partial_amount`, `terms`, `client_note`, `items`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'my invoice ', 3, 1, 0, '2020-04-28 18:00:00', '2020-04-29 18:00:00', 6.00, 0, 0.00, 'Here is the default terms', '', 'a:2:{s:10:\"entryTasks\";a:1:{i:0;a:7:{s:4:\"task\";s:9:\"main task\";s:11:\"description\";s:0:\"\";s:6:\"amount\";s:2:\"20\";s:4:\"hour\";s:1:\"1\";s:3:\"tax\";s:1:\"1\";s:16:\"descriptionField\";s:5:\"false\";s:7:\"srcItem\";s:0:\"\";}}s:10:\"entryNames\";a:1:{i:0;a:7:{s:4:\"task\";s:10:\"helen bens\";s:11:\"description\";s:0:\"\";s:6:\"amount\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:3:\"tax\";s:1:\"0\";s:16:\"descriptionField\";s:5:\"false\";s:7:\"srcItem\";s:0:\"\";}}}', 1, 1, '2020-04-29 04:17:46', '2020-04-29 04:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_meta`
--

CREATE TABLE `wp_pm_meta` (
  `id` int(11) UNSIGNED NOT NULL,
  `entity_id` int(11) UNSIGNED NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_meta`
--

INSERT INTO `wp_pm_meta` (`id`, `entity_id`, `entity_type`, `meta_key`, `meta_value`, `project_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'task_list', 'list-inbox', '1', 1, 1, 1, '2020-04-26 22:57:15', '2020-04-26 22:57:15'),
(3, 2, 'task_list', 'list-inbox', '1', 2, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(4, 15, 'task', 'privacy', '0', 2, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(5, 2, 'task_list', 'list-inbox', '2', 2, NULL, NULL, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(6, 3, 'discussion_board', 'privacy', '0', 1, 1, 1, '2020-04-27 23:55:21', '2020-04-27 23:55:21'),
(11, 4, 'task_list', 'list-inbox', '6', 4, 1, 1, '2020-04-27 23:59:36', '2020-04-27 23:59:36'),
(12, 7, 'task_list', 'privacy', '0', 1, 1, 1, '2020-04-28 00:20:11', '2020-04-28 00:20:11'),
(13, 8, 'milestone', 'achieve_date', '2020-04-30 00:00:00', 1, 1, 1, '2020-04-28 07:57:37', '2020-04-28 07:57:37'),
(14, 8, 'milestone', 'privacy', '0', 1, 1, 1, '2020-04-28 07:57:37', '2020-04-28 01:57:37'),
(15, 9, 'milestone', 'achieve_date', '2020-04-30 00:00:00', 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(16, 9, 'milestone', 'privacy', '0', 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(17, 10, 'discussion_board', 'privacy', '0', 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(18, 11, 'task_list', 'list-inbox', '1', 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(19, 43, 'task', 'privacy', '0', 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(21, 12, 'task_list', 'privacy', '0', 5, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(23, 13, 'discussion_board', 'privacy', '1', 1, 1, 1, '2020-04-28 08:21:48', '2020-04-29 04:35:44'),
(24, 14, 'milestone', 'achieve_date', '2020-04-30 00:00:00', 1, 1, 1, '2020-04-28 08:22:09', '2020-04-28 08:22:09'),
(25, 14, 'milestone', 'privacy', '0', 1, 1, 1, '2020-04-28 08:22:09', '2020-04-28 02:22:09'),
(26, 7, 'file', 'private', '0', 1, 1, 1, '2020-04-28 08:22:21', '2020-04-28 08:22:21'),
(27, 7, 'file', 'title', 'create folder', 1, 1, 1, '2020-04-28 08:22:21', '2020-04-28 08:22:21'),
(28, 1, 'list_view', 'list_view_type', 'list', 1, 1, 1, '2020-04-28 08:23:42', '2020-04-30 04:04:53'),
(29, 19, 'task_list', 'privacy', '1', 1, 1, 1, '2020-04-29 03:53:19', '2020-04-29 04:57:59'),
(30, 3, 'list_view', 'list_view_type', 'list', 1, 3, 3, '2020-04-29 03:54:05', '2020-04-29 03:54:05'),
(31, 17, 'kanboard', 'header_background', '#6287AD', 1, 1, 1, '2020-04-29 04:21:18', '2020-04-29 04:21:18'),
(32, 6, 'task_list', 'list-inbox', '21', 6, 1, 1, '2020-04-29 04:26:02', '2020-04-28 22:26:02'),
(36, 85, 'task', 'privacy', '1', 1, 1, 1, '2020-04-29 04:47:12', '2020-04-29 04:47:12'),
(37, 88, 'task', 'privacy', '1', 1, 1, 1, '2020-04-29 04:49:35', '2020-04-29 04:49:35'),
(38, 22, 'task_list', 'list-inbox', '21', 7, 1, 1, '2020-04-29 05:14:29', '2020-04-29 05:14:29'),
(39, 7, 'task_list', 'list-inbox', '22', 7, NULL, NULL, '2020-04-29 05:14:29', '2020-04-29 05:14:29'),
(40, 11, 'file', 'private', '0', 1, 1, 1, '2020-04-29 05:16:22', '2020-04-29 05:16:22'),
(41, 12, 'file', 'description', '<p>here is new documents here is new documents here is new documents here is new documents&nbsp;</p>', 1, 1, 1, '2020-04-29 05:17:31', '2020-04-29 05:17:31'),
(42, 12, 'file', 'private', '1', 1, 1, 1, '2020-04-29 05:17:31', '2020-04-29 05:17:31'),
(43, 12, 'file', 'title', 'here is new documents ', 1, 1, 1, '2020-04-29 05:17:31', '2020-04-29 05:17:31'),
(44, 23, 'task_list', 'privacy', '0', 1, 1, 1, '2020-04-29 05:25:59', '2020-04-28 23:25:59'),
(45, 125, 'task', 'privacy', '1', 1, 1, 1, '2020-04-30 03:58:09', '2020-04-30 03:58:11'),
(46, 2, 'list_view', 'list_view_type', 'list', 1, 2, 2, '2020-04-30 04:07:18', '2020-04-30 04:09:52'),
(47, 13, 'file', 'private', '0', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(48, 13, 'file', 'title', 'create folder', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(49, 14, 'file', 'private', '0', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(50, 15, 'file', 'description', '<p>here is new documents here is new documents here is new documents here is new documents&nbsp;</p>', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(51, 15, 'file', 'private', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(52, 15, 'file', 'title', 'here is new documents ', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(53, 24, 'milestone', 'achieve_date', '2020-04-30 00:00:00', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(54, 24, 'milestone', 'privacy', '0', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(55, 25, 'milestone', 'achieve_date', '2020-04-30 00:00:00', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(56, 25, 'milestone', 'privacy', '0', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(57, 26, 'discussion_board', 'privacy', '0', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(58, 27, 'discussion_board', 'privacy', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(59, 28, 'task_list', 'list-inbox', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(60, 139, 'task', 'privacy', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(61, 8, 'task_list', 'list-inbox', '28', 8, NULL, NULL, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(62, 29, 'task_list', 'privacy', '0', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(63, 29, 'task_list', 'list-inbox', '22', 8, NULL, NULL, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(64, 30, 'task_list', 'privacy', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(65, 164, 'task', 'privacy', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(66, 165, 'task', 'privacy', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(67, 32, 'task_list', 'privacy', '0', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(68, 182, 'task', 'privacy', '1', 8, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(69, 33, 'discussion_board', 'privacy', '0', 1, 1, 1, '2020-04-30 06:25:06', '2020-04-30 00:25:06'),
(70, 34, 'discussion_board', 'privacy', '0', 6, 1, 1, '2020-04-30 06:30:07', '2020-04-30 00:30:07'),
(71, 9, 'task_list', 'list-inbox', '35', 9, 1, 1, '2020-05-20 08:10:17', '2020-05-20 02:10:17'),
(72, 1, 'project', 'favourite_project', '2', 9, 1, 1, '2020-05-28 08:06:52', '2020-05-28 08:06:52'),
(73, 10, 'task_list', 'list-inbox', '36', 10, NULL, NULL, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(74, 11, 'task_list', 'list-inbox', '37', 11, 1, 1, '2020-05-28 08:10:01', '2020-05-28 02:10:01'),
(75, 226, 'task', 'privacy', '1', 1, 1, 1, '2020-05-28 09:47:51', '2020-05-28 09:47:51'),
(76, 38, 'task_list', 'privacy', '1', 1, 1, 1, '2020-05-28 09:48:11', '2020-05-28 03:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_projects`
--

CREATE TABLE `wp_pm_projects` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `budget` double(8,2) DEFAULT NULL,
  `pay_rate` double(8,2) DEFAULT NULL,
  `est_completion_date` timestamp NULL DEFAULT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `projectable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_projects`
--

INSERT INTO `wp_pm_projects` (`id`, `title`, `description`, `status`, `budget`, `pay_rate`, `est_completion_date`, `color_code`, `order`, `projectable_type`, `completed_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'system re-design', 'Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support. Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support.\nPlease enter your Project Manager Pro plugin license key to get the pro features, regular update and support.\n\nPlease enter your Project Manager Pro plugin license key to get the pro features, regular update and support.', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-04-26 22:57:15', '2020-04-29 08:22:02'),
(2, 'system re-design copy', '123 What’s the first thing that should be decided before starting a new test automation initiative? What’s the first thing that should be decided before starting a new test automation initiative?What’s the first thing that should be decided before starting a new test automation initiative?What’s the first thing that should be decided before starting a new test automation initiative?What’s the first thing that should be decided before starting a new test automation initiative?', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:56:29'),
(4, 'dev', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-04-27 23:59:36', '2020-04-29 05:14:43'),
(5, 'system re-design copy copy copy', '789 What’s the first thing that should be decided before starting a new test automation initiative? What’s the first thing that should be decided before starting a new test automation initiative?What’s the first thing that should be decided before starting a new test automation initiative?What’s the first thing that should be decided before starting a new test automation initiative?What’s the first thing that should be decided before starting a new test automation initiative?', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:58:52'),
(6, 'engineering', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-04-29 04:26:02', '2020-05-19 05:37:21'),
(7, 'dev copy', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-04-29 05:14:29', '2020-04-29 05:14:29'),
(8, 'system re-design copy copy copy copy', 'Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support. Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support.\nPlease enter your Project Manager Pro plugin license key to get the pro features, regular update and support.\n\nPlease enter your Project Manager Pro plugin license key to get the pro features, regular update and support.', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(9, 'Dokan', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-05-20 08:10:17', '2020-05-20 08:10:17'),
(10, 'Dokan copy', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(11, 'Re-design-2', 'Re-design Re-designRe-designRe-design Re-design Re-designRe-designRe-designRe-design Re-designRe-designRe-designRe-design Re-designRe-designRe-design', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-05-28 08:10:01', '2020-05-28 08:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_roles`
--

CREATE TABLE `wp_pm_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_roles`
--

INSERT INTO `wp_pm_roles` (`id`, `title`, `slug`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Manager', 'manager', 'Manager is a person who manages the project.', 1, 1, 1, '2020-04-26 22:56:04', '2020-04-26 22:56:04'),
(2, 'Co-Worker', 'co_worker', 'Co-worker is person who works under a project.', 1, 1, 1, '2020-04-26 22:56:04', '2020-04-26 22:56:04'),
(3, 'Client', 'client', 'Client is a person who provid the project.', 1, 1, 1, '2020-04-26 22:56:06', '2020-05-30 14:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_role_project`
--

CREATE TABLE `wp_pm_role_project` (
  `id` int(20) UNSIGNED NOT NULL,
  `project_id` int(20) UNSIGNED NOT NULL,
  `role_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_role_project`
--

INSERT INTO `wp_pm_role_project` (`id`, `project_id`, `role_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 1),
(10, 4, 2),
(11, 4, 3),
(12, 4, 1),
(13, 5, 2),
(14, 5, 3),
(15, 5, 1),
(16, 6, 2),
(17, 6, 3),
(18, 6, 1),
(19, 7, 2),
(20, 7, 3),
(21, 7, 1),
(22, 8, 2),
(23, 8, 3),
(24, 8, 1),
(25, 9, 2),
(26, 9, 3),
(27, 9, 1),
(28, 10, 2),
(29, 10, 3),
(30, 10, 1),
(31, 11, 2),
(32, 11, 3),
(33, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_role_project_capabilities`
--

CREATE TABLE `wp_pm_role_project_capabilities` (
  `role_project_id` int(20) UNSIGNED NOT NULL,
  `capability_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_role_project_capabilities`
--

INSERT INTO `wp_pm_role_project_capabilities` (`role_project_id`, `capability_id`) VALUES
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 1),
(5, 3),
(5, 5),
(5, 7),
(5, 9),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(11, 1),
(11, 3),
(11, 5),
(11, 7),
(11, 9),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(14, 1),
(14, 3),
(14, 5),
(14, 7),
(14, 9),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 7),
(1, 8),
(1, 5),
(1, 6),
(1, 9),
(1, 10),
(2, 1),
(2, 3),
(2, 7),
(2, 5),
(2, 9),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(16, 9),
(16, 10),
(17, 1),
(17, 3),
(17, 5),
(17, 7),
(17, 9),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 8),
(18, 9),
(18, 10),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(19, 10),
(20, 1),
(20, 3),
(20, 5),
(20, 7),
(20, 9),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(21, 6),
(21, 7),
(21, 8),
(21, 9),
(21, 10),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(23, 1),
(23, 3),
(23, 5),
(23, 7),
(23, 9),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 8),
(24, 9),
(24, 10),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(26, 1),
(26, 3),
(26, 5),
(26, 7),
(26, 9),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 10),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(29, 1),
(29, 3),
(29, 5),
(29, 7),
(29, 9),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(32, 1),
(32, 3),
(32, 5),
(32, 7),
(32, 9),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_role_project_users`
--

CREATE TABLE `wp_pm_role_project_users` (
  `role_project_id` int(20) UNSIGNED NOT NULL,
  `user_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_role_project_users`
--

INSERT INTO `wp_pm_role_project_users` (`role_project_id`, `user_id`) VALUES
(4, 2),
(6, 1),
(13, 2),
(14, 3),
(15, 1),
(12, 1),
(1, 5),
(1, 4),
(1, 2),
(2, 3),
(3, 1),
(16, 3),
(18, 1),
(25, 6),
(27, 1),
(31, 3),
(31, 6),
(33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_role_user`
--

CREATE TABLE `wp_pm_role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `assigned_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_role_user`
--

INSERT INTO `wp_pm_role_user` (`id`, `user_id`, `role_id`, `project_id`, `assigned_by`) VALUES
(7, 1, 1, 2, 0),
(8, 2, 2, 2, 0),
(11, 1, 1, 4, 0),
(14, 3, 3, 5, 0),
(15, 1, 1, 5, 0),
(16, 2, 2, 5, 0),
(33, 1, 1, 7, 0),
(34, 5, 2, 1, 0),
(35, 4, 2, 1, 0),
(36, 1, 1, 1, 0),
(37, 2, 2, 1, 0),
(38, 3, 3, 1, 0),
(39, 5, 2, 8, 0),
(40, 4, 2, 8, 0),
(41, 1, 1, 8, 0),
(42, 2, 2, 8, 0),
(43, 3, 3, 8, 0),
(44, 3, 2, 6, 0),
(45, 1, 1, 6, 0),
(46, 6, 2, 9, 0),
(47, 1, 1, 9, 0),
(50, 6, 2, 10, 0),
(51, 1, 1, 10, 0),
(56, 3, 2, 11, 0),
(57, 6, 2, 11, 0),
(58, 1, 1, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_settings`
--

CREATE TABLE `wp_pm_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_settings`
--

INSERT INTO `wp_pm_settings` (`id`, `key`, `value`, `project_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'managing_capability', 'a:3:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";}', NULL, 1, 1, '2020-04-26 22:56:04', '2020-04-26 22:56:04'),
(2, 'project_create_capability', 'a:3:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";}', NULL, 1, 1, '2020-04-26 22:56:04', '2020-04-26 22:56:04'),
(3, 'upload_limit', 's:1:\"2\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-04-26 23:04:19'),
(4, 'project_per_page', 's:2:\"10\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-04-26 23:04:19'),
(5, 'list_per_page', 's:1:\"5\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-05-28 11:00:23'),
(6, 'incomplete_tasks_per_page', 's:1:\"5\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-04-29 04:13:14'),
(7, 'complete_tasks_per_page', 's:1:\"5\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-04-29 04:13:14'),
(8, 'task_start_field', 's:4:\"true\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-04-26 23:04:19'),
(9, 'daily_digest', 's:4:\"true\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-04-26 23:04:19'),
(10, 'logo', 's:0:\"\";', NULL, 1, 1, '2020-04-26 23:04:19', '2020-04-26 23:04:19'),
(11, 'slack', 'a:3:{s:6:\"status\";s:6:\"enable\";s:7:\"webhook\";s:0:\"\";s:7:\"options\";a:2:{s:5:\"tasks\";a:6:{s:6:\"create\";s:4:\"true\";s:6:\"update\";s:4:\"true\";s:8:\"complete\";s:4:\"true\";s:10:\"incomplete\";s:4:\"true\";s:13:\"createComment\";s:4:\"true\";s:13:\"updateComment\";s:5:\"false\";}s:8:\"subTasks\";a:4:{s:6:\"create\";s:4:\"true\";s:6:\"update\";s:4:\"true\";s:8:\"complete\";s:4:\"true\";s:10:\"incomplete\";s:4:\"true\";}}}', 1, 1, 1, '2020-04-28 00:27:11', '2020-04-28 00:27:16'),
(12, 'git_bit', 'a:2:{s:10:\"project_id\";s:1:\"1\";s:6:\"status\";s:6:\"enable\";}', 1, 1, 1, '2020-04-28 00:27:25', '2020-04-28 00:27:25'),
(13, 'from_email', 's:21:\"farazi.test@gmail.com\";', NULL, 1, 1, '2020-04-28 08:13:26', '2020-04-28 02:13:26'),
(14, 'link_to_backend', 's:5:\"false\";', NULL, 1, 1, '2020-04-28 08:13:26', '2020-04-28 02:13:26'),
(15, 'email_type', 's:9:\"text/html\";', NULL, 1, 1, '2020-04-28 08:13:26', '2020-04-28 02:13:26'),
(16, 'enable_bcc', 's:5:\"false\";', NULL, 1, 1, '2020-04-28 08:13:26', '2020-04-28 02:13:26'),
(17, 'pusher_app_key', 's:0:\"\";', NULL, 1, 1, '2020-04-28 08:13:28', '2020-04-28 02:13:28'),
(18, 'pusher_secret', 's:0:\"\";', NULL, 1, 1, '2020-04-28 08:13:28', '2020-04-28 02:13:28'),
(19, 'pusher_app_id', 's:0:\"\";', NULL, 1, 1, '2020-04-28 08:13:28', '2020-04-28 02:13:28'),
(20, 'pusher_cluster', 's:0:\"\";', NULL, 1, 1, '2020-04-28 08:13:28', '2020-04-28 02:13:28'),
(21, 'invoice', 'a:20:{s:11:\"theme_color\";s:7:\"#82b541\";s:13:\"currency_code\";s:3:\"USD\";s:8:\"gateWays\";a:2:{i:0;a:3:{s:4:\"name\";s:6:\"paypal\";s:5:\"label\";s:6:\"Paypal\";s:6:\"active\";s:5:\"false\";}i:1;a:3:{s:4:\"name\";s:6:\"stripe\";s:5:\"label\";s:6:\"Stripe\";s:6:\"active\";s:5:\"false\";}}s:6:\"paypal\";s:5:\"false\";s:11:\"paypal_mail\";s:0:\"\";s:13:\"sand_box_mode\";s:5:\"false\";s:18:\"paypal_instruction\";s:0:\"\";s:12:\"organization\";s:0:\"\";s:14:\"address_line_1\";s:0:\"\";s:14:\"address_line_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:13:\"sate_province\";s:0:\"\";s:8:\"zip_code\";s:0:\"\";s:12:\"country_code\";s:2:\"BD\";s:18:\"stripe_instruction\";s:25:\"Pay with your credit card\";s:18:\"stripe_test_secret\";s:5:\"false\";s:10:\"secret_key\";s:0:\"\";s:22:\"secret_publishable_key\";s:0:\"\";s:15:\"live_secret_key\";s:0:\"\";s:20:\"live_publishable_key\";s:0:\"\";}', NULL, 1, 1, '2020-04-28 08:13:34', '2020-04-28 08:13:35'),
(22, 'front_end_page', 's:1:\"6\";', NULL, 1, 1, '2020-04-28 08:13:38', '2020-04-28 02:13:38'),
(23, 'capabilities', 'a:2:{s:9:\"co_worker\";a:10:{s:14:\"create_message\";s:4:\"true\";s:20:\"view_private_message\";s:4:\"true\";s:11:\"create_list\";s:4:\"true\";s:17:\"view_private_list\";s:4:\"true\";s:11:\"create_task\";s:4:\"true\";s:17:\"view_private_task\";s:4:\"true\";s:16:\"create_milestone\";s:4:\"true\";s:22:\"view_private_milestone\";s:4:\"true\";s:11:\"create_file\";s:4:\"true\";s:17:\"view_private_file\";s:4:\"true\";}s:6:\"client\";a:10:{s:14:\"create_message\";s:4:\"true\";s:20:\"view_private_message\";s:5:\"false\";s:11:\"create_list\";s:4:\"true\";s:17:\"view_private_list\";s:5:\"false\";s:11:\"create_task\";s:4:\"true\";s:17:\"view_private_task\";s:5:\"false\";s:16:\"create_milestone\";s:4:\"true\";s:22:\"view_private_milestone\";s:5:\"false\";s:11:\"create_file\";s:4:\"true\";s:17:\"view_private_file\";s:5:\"false\";}}', 1, 1, 1, '2020-04-28 08:23:21', '2020-04-28 02:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_sprints`
--

CREATE TABLE `wp_pm_sprints` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `order` int(11) UNSIGNED DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `start_at` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_sprints`
--

INSERT INTO `wp_pm_sprints` (`id`, `title`, `description`, `order`, `status`, `start_at`, `due_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'May-2020', 'here is new sprint', 1, 0, '2020-04-30 18:00:00', '2020-05-30 18:00:00', 1, 1, '2020-05-20 06:15:25', '2020-05-20 06:15:25'),
(2, 'May testing', '', 2, 0, '2020-05-19 18:00:00', '2020-05-19 18:00:00', 1, 1, '2020-05-20 08:15:01', '2020-05-20 08:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_sprint_projects`
--

CREATE TABLE `wp_pm_sprint_projects` (
  `id` int(11) UNSIGNED NOT NULL,
  `sprint_id` int(11) UNSIGNED DEFAULT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_sprint_projects`
--

INSERT INTO `wp_pm_sprint_projects` (`id`, `sprint_id`, `project_id`) VALUES
(1, 1, 1),
(2, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_sprint_project_tasks`
--

CREATE TABLE `wp_pm_sprint_project_tasks` (
  `sprint_id` int(11) UNSIGNED DEFAULT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `task_id` int(11) UNSIGNED DEFAULT NULL,
  `list_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_sprint_project_tasks`
--

INSERT INTO `wp_pm_sprint_project_tasks` (`sprint_id`, `project_id`, `task_id`, `list_id`) VALUES
(1, 1, 130, 1),
(1, 1, 92, 1),
(2, 9, 203, 35),
(2, 9, 202, 35),
(2, 9, 201, 35),
(2, 9, 200, 35),
(2, 9, 199, 35),
(2, 9, 198, 35),
(2, 9, 197, 35),
(2, 9, 196, 35),
(2, 9, 195, 35);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_tasks`
--

CREATE TABLE `wp_pm_tasks` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `estimation` int(11) DEFAULT '0',
  `start_at` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `complexity` tinyint(4) DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT '1',
  `payable` tinyint(1) NOT NULL DEFAULT '0',
  `recurrent` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_private` tinyint(2) UNSIGNED DEFAULT '0',
  `project_id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `completed_by` int(11) UNSIGNED DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_tasks`
--

INSERT INTO `wp_pm_tasks` (`id`, `title`, `description`, `estimation`, `start_at`, `due_date`, `complexity`, `priority`, `payable`, `recurrent`, `status`, `is_private`, `project_id`, `parent_id`, `completed_by`, `completed_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Task03', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:22:51', 1, 1, '2020-04-26 23:03:35', '2020-04-29 08:22:51'),
(4, 'Task04', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:22:50', 1, 1, '2020-04-26 23:03:43', '2020-04-29 08:22:50'),
(9, 'Task07', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-28 22:44:23', 1, 1, '2020-04-26 23:12:27', '2020-04-29 04:44:23'),
(11, 'Task09', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-28 22:44:25', 1, 1, '2020-04-26 23:13:36', '2020-04-29 04:44:25'),
(12, 'Task10', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:22:52', 1, 1, '2020-04-26 23:13:41', '2020-04-29 08:22:52'),
(14, 'Task12', '<p>here is description here is description here is description here is description here is description here is description here is description</p>', 0, '2020-04-27 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-28 23:15:04', 1, 1, '2020-04-26 23:14:48', '2020-04-29 05:15:04'),
(15, 'task01', '', 0, NULL, '2020-04-26 18:00:00', NULL, 1, 0, 0, 1, 0, 2, 0, 1, '2020-04-26 23:11:10', 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(16, 'Task03', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 2, 0, 1, '2020-04-26 23:12:52', 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(17, 'Task04', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 2, 0, 1, '2020-04-26 23:04:36', 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(18, 'Task05', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 2, 0, 1, '2020-04-26 23:12:54', 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(19, 'Task06', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(20, 'Task07', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(21, 'Task08', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(22, 'Task09', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(23, 'Task10', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(24, 'Task11', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(25, 'Task12', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, 1, 1, '2020-04-27 23:49:10', '2020-04-27 23:49:10'),
(37, 'sub task 1', NULL, 120, '2020-04-27 18:00:00', '2020-04-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 14, NULL, NULL, 1, 1, '2020-04-28 00:08:59', '2020-04-28 00:08:59'),
(39, 'Copy Task12', '<p>here is description here is description here is description here is description here is description here is description here is description</p>', 0, '2020-04-27 18:00:00', '2020-04-27 18:00:00', 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 2, '2020-04-28 00:17:54', '2020-05-28 11:11:40'),
(40, 'Co-worker task', '<p><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span></p>', 0, '2020-04-27 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-28 02:15:05', 1, 1, '2020-04-28 00:20:30', '2020-04-28 08:15:05'),
(41, 'sub taask', NULL, 2, '2020-04-27 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 40, NULL, NULL, 1, 1, '2020-04-28 00:21:46', '2020-04-28 00:21:46'),
(42, 'Copy Co-worker task', '<p><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span></p>', 0, '2020-04-22 18:00:00', '2020-04-30 18:00:00', 0, 1, 0, 0, 1, 0, 1, 0, 2, '2020-04-28 22:29:21', 1, 2, '2020-04-28 00:26:00', '2020-04-29 04:29:21'),
(43, 'task01', '', 0, NULL, '2020-04-26 18:00:00', NULL, 1, 0, 0, 1, 0, 5, 0, 1, '2020-04-26 23:11:10', 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(44, 'Task03', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 5, 0, 1, '2020-04-26 23:12:52', 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(45, 'Task04', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 5, 0, 1, '2020-04-26 23:04:36', 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(46, 'Task06', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(47, 'Task07', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(48, 'Task08', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(49, 'Task09', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(50, 'Task10', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(51, 'Task11', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 1, 1, '2020-04-28 07:57:51', '2020-04-28 07:57:51'),
(53, 'Copy Task12', '<p>here is description here is description here is description here is description here is description here is description here is description</p>', 0, '2020-04-27 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 0, 5, 0, 2, '2020-05-28 02:30:37', 1, 2, '2020-04-28 07:57:51', '2020-05-28 08:30:37'),
(57, 'admin task', NULL, 0, '2020-04-30 18:00:00', '2020-04-30 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:22:53', 1, 1, '2020-04-28 08:11:30', '2020-04-30 04:14:08'),
(58, 'system re-design', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-28 23:15:04', 1, 1, '2020-04-28 08:15:37', '2020-04-29 05:15:04'),
(60, 'new', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 5, 0, 1, '2020-05-18 22:49:51', 1, 1, '2020-04-28 08:18:44', '2020-05-19 04:49:51'),
(61, 'doing this task', NULL, 0, '2020-04-29 18:00:00', '2020-05-01 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 03:53:14', 1, 2, '2020-04-28 08:19:25', '2020-05-28 09:53:14'),
(62, 'create my task', NULL, 0, '2020-04-27 18:00:00', '2020-05-04 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:23:07', 1, 1, '2020-04-28 08:22:53', '2020-04-29 08:23:07'),
(63, 'Task 2020', '<p>this is new task assign</p>', 0, '2020-04-28 18:00:00', '2020-05-05 18:00:00', 0, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-28 23:15:08', 1, 1, '2020-04-29 03:33:00', '2020-04-29 05:15:08'),
(64, 'sub task 01', NULL, 120, '2020-04-28 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:23:08', 1, 1, '2020-04-29 03:34:17', '2020-04-29 08:23:08'),
(65, 'my sub task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:23:05', 1, 1, '2020-04-29 03:41:26', '2020-04-29 08:23:05'),
(66, '0909', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 5, 0, 2, '2020-05-28 02:19:07', 2, 2, '2020-04-29 03:45:30', '2020-05-28 08:19:07'),
(67, 'my new task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 2, 2, '2020-04-29 03:46:50', '2020-04-29 03:46:50'),
(68, 'client task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 5, 0, NULL, NULL, 3, 3, '2020-04-29 03:50:43', '2020-04-29 03:50:43'),
(69, 'new sub task 2020', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 03:53:09', '2020-04-29 03:53:30'),
(70, '1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 3, 3, '2020-04-29 03:54:33', '2020-04-29 03:54:33'),
(71, '2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 3, 3, '2020-04-29 03:54:37', '2020-04-29 03:54:37'),
(72, '3', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 3, 3, '2020-04-29 03:54:40', '2020-04-29 03:54:40'),
(73, '4', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 3, 3, '2020-04-29 03:54:46', '2020-04-29 03:54:46'),
(74, 'move', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 03:56:01', '2020-04-29 03:56:30'),
(75, '01 sub task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 57, NULL, NULL, 1, 1, '2020-04-29 04:12:19', '2020-04-29 04:12:26'),
(76, 'main task edit', '', 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 3, '2020-05-05 05:40:02', 1, 3, '2020-04-29 04:13:32', '2020-05-05 11:40:02'),
(78, 'new sub task for all', NULL, 120, '2020-04-27 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 76, NULL, NULL, 1, 1, '2020-04-29 04:15:34', '2020-04-29 04:15:34'),
(79, 'nmnmnmnm', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 76, 1, '2020-04-28 22:19:29', 1, 1, '2020-04-29 04:19:24', '2020-04-29 04:19:29'),
(80, 'my don task edit for all', '', 0, '2020-04-26 18:00:00', '2020-04-28 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 03:53:04', 1, 2, '2020-04-29 04:21:49', '2020-05-28 09:53:04'),
(81, 'In the name of Allah, the Entirely Merciful, the Especially Merciful.In the name of Allah, the Entirely Merciful, the Especially Merciful.In the name of Allah, the Entirely Merciful, the Especially Me', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 04:22:37', '2020-04-29 04:22:37'),
(84, 'system re-design discuss with dev 001', '', 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:22:55', 1, 1, '2020-04-29 04:42:46', '2020-04-29 08:22:55'),
(85, 'my new task', '<p>here is description</p>', 0, '2020-04-26 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 1, 1, 0, 1, '2020-04-29 02:23:04', 1, 1, '2020-04-29 04:46:10', '2020-04-29 08:23:04'),
(86, 'sub task 001', NULL, 0, '2020-04-27 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 85, NULL, NULL, 1, 1, '2020-04-29 04:47:01', '2020-04-29 04:47:01'),
(87, 'assign task', NULL, 180, '2020-04-28 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 85, NULL, NULL, 1, 1, '2020-04-29 04:47:42', '2020-04-29 04:47:52'),
(88, 'Copy my new task', '<p>here is description</p>', 0, '2020-04-26 18:00:00', '2020-05-05 18:00:00', 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 04:49:35', '2020-04-29 04:55:12'),
(89, 'my task for all users', NULL, 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 03:52:54', 1, 2, '2020-04-29 05:03:12', '2020-05-28 09:52:54'),
(90, 'sub 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 89, NULL, NULL, 1, 1, '2020-04-29 05:04:45', '2020-04-29 05:04:45'),
(91, 'sub 2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 89, NULL, NULL, 1, 1, '2020-04-29 05:04:48', '2020-04-29 05:04:48'),
(95, 'new Duplicate task list', '<p>Duplicate task list Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 03:52:46', 1, 2, '2020-04-29 05:26:19', '2020-05-28 09:52:46'),
(96, 'my new sub task', NULL, 120, '2020-04-28 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 95, NULL, NULL, 1, 1, '2020-04-29 05:27:05', '2020-04-29 05:27:05'),
(97, 'sub task 02', NULL, 240, '2020-04-28 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 95, NULL, NULL, 1, 1, '2020-04-29 05:27:43', '2020-04-29 05:27:43'),
(98, 'Copy new Duplicate task list', '<p>Duplicate task list Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 03:52:37', 1, 2, '2020-04-29 05:27:59', '2020-05-28 09:52:37'),
(99, 'my task 009', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 05:30:18', '2020-04-29 06:47:52'),
(100, 'sub 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 99, NULL, NULL, 1, 1, '2020-04-29 05:30:27', '2020-04-29 05:30:27'),
(101, 'sub 2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 05:30:31', '2020-04-29 08:49:45'),
(102, 'Copy my task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2020-04-29 02:22:59', 1, 1, '2020-04-29 05:31:04', '2020-04-29 08:22:59'),
(103, 'sub tak 3', '', 120, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 99, NULL, NULL, 1, 1, '2020-04-29 06:44:39', '2020-04-29 06:45:14'),
(104, 'Copy my task 009', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(105, 'sub 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 104, NULL, NULL, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(106, 'sub 2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 104, NULL, NULL, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(107, 'sub tak 3', '', 120, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 104, NULL, NULL, 1, 1, '2020-04-29 06:54:45', '2020-04-29 06:54:45'),
(109, '98', '', 540, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 57, NULL, NULL, 1, 1, '2020-04-29 08:16:02', '2020-04-29 08:16:02'),
(111, 'Copy my task 009', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 08:48:25', '2020-04-29 08:48:25'),
(112, 'sub 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 111, NULL, NULL, 1, 1, '2020-04-29 08:48:26', '2020-04-29 08:48:26'),
(113, 'sub 2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 111, NULL, NULL, 1, 1, '2020-04-29 08:48:26', '2020-04-29 08:48:26'),
(114, 'sub tak 3', '', 120, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 111, NULL, NULL, 1, 1, '2020-04-29 08:48:26', '2020-04-29 08:48:26'),
(115, 'Copy new Duplicate task list', '<p>Duplicate task list Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 02:32:08', 1, 2, '2020-04-29 08:48:32', '2020-05-28 08:32:08'),
(116, 'my new sub task', NULL, 120, '2020-04-28 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 115, NULL, NULL, 1, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(117, 'sub task 02', NULL, 240, '2020-04-28 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 115, NULL, NULL, 1, 1, '2020-04-29 08:48:32', '2020-04-29 08:48:32'),
(118, '90900', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 08:48:41', '2020-04-29 08:48:41'),
(119, '123232', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-29 08:49:00', '2020-04-29 08:49:00'),
(120, 'ilok', '', 120, '2020-04-29 18:00:00', NULL, NULL, 1, 0, 0, 0, 0, 1, 101, NULL, NULL, 1, 1, '2020-04-29 09:03:48', '2020-04-29 09:04:05'),
(121, 'Copy sub 2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-30 03:56:11', '2020-04-30 03:56:11'),
(122, 'ilok new', '', 7200, '2020-04-29 18:00:00', NULL, NULL, 1, 0, 0, 0, 0, 1, 121, NULL, NULL, 1, 1, '2020-04-30 03:56:11', '2020-04-30 03:56:25'),
(123, 'new one two 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-04-30 03:56:41', '2020-04-30 03:56:41'),
(124, 'one sub', '', 120, '2020-04-29 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 123, NULL, NULL, 1, 1, '2020-04-30 03:57:12', '2020-04-30 03:57:12'),
(125, 'Copy new one two 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 1, 1, 0, NULL, NULL, 1, 1, '2020-04-30 03:57:29', '2020-04-30 03:58:11'),
(126, 'one sub', '', 120, '2020-04-29 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 125, NULL, NULL, 1, 1, '2020-04-30 03:57:29', '2020-04-30 03:57:29'),
(132, 'Task03', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:22:51', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(133, 'Task04', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:22:50', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(134, 'Task06', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(135, 'Task07', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-28 22:44:23', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(136, 'Task08', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(137, 'Task09', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-28 22:44:25', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(138, 'Task10', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:22:52', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(139, 'Task11000', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(140, 'Copy Task12', '<p>here is description here is description here is description here is description here is description here is description here is description</p>', 0, '2020-04-27 18:00:00', '2020-04-27 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 2, '2020-04-28 22:29:43', 1, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(141, 'admin task', NULL, 0, '2020-04-30 18:00:00', '2020-04-30 18:00:00', NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:22:53', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(142, 'main task edit', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(143, 'system re-design discuss with dev 001', '', 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:22:55', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(144, 'my new task', '<p>here is new documents here is new documents here is new documents here is new documents here is new documents</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 03:51:47', 1, 2, '2020-04-30 06:19:31', '2020-05-28 09:51:47'),
(145, 'Copy my new task', '<p>here is new documents here is new documents here is new documents here is new documents here is new documents</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(146, 'mishu task', NULL, 0, '2020-04-21 18:00:00', '2020-04-21 18:00:00', NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 2, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(147, 'sdfsfsdf', NULL, 0, '2020-04-07 18:00:00', '2020-04-07 18:00:00', NULL, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 02:19:44', 2, 2, '2020-04-30 06:19:31', '2020-05-28 08:19:44'),
(148, 'Task12', '<p>here is description here is description here is description here is description here is description here is description here is description</p>', 0, '2020-04-27 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-28 23:15:04', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(149, 'Copy Task12', '<p>here is description here is description here is description here is description here is description here is description here is description</p>', 0, '2020-04-27 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 02:19:39', 1, 2, '2020-04-30 06:19:31', '2020-05-28 08:19:39'),
(150, 'Co-worker task', '<p><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span></p>', 0, '2020-04-27 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-28 02:15:05', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(151, 'Copy Co-worker task', '<p><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span><span style=\"font-family: Arial;font-size: 13px\">* **Update** Task duplicate and custom field and subtask are not duplicate.</span></p>', 0, '2020-04-22 18:00:00', '2020-04-30 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 2, '2020-04-28 22:29:21', 1, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(152, 'system re-design', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-28 23:15:04', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(153, 'doing this task', NULL, 0, '2020-04-29 18:00:00', '2020-05-01 18:00:00', NULL, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 02:19:34', 1, 2, '2020-04-30 06:19:31', '2020-05-28 08:19:34'),
(154, 'create my task', NULL, 0, '2020-04-27 18:00:00', '2020-05-04 18:00:00', NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:23:07', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(155, 'Task 2020', '<p>this is new task assign</p>', 0, '2020-04-28 18:00:00', '2020-05-05 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-28 23:15:08', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(156, 'sub task 01', NULL, 120, '2020-04-28 18:00:00', '2020-04-29 18:00:00', NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:23:08', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(157, 'my sub task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:23:05', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(158, 'move', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(159, 'my task for all users', NULL, 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', NULL, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 02:19:29', 1, 2, '2020-04-30 06:19:31', '2020-05-28 08:19:29'),
(160, 'asds', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 02:24:34', 2, 2, '2020-04-30 06:19:31', '2020-05-28 08:24:34'),
(161, 'new sub task 2020', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(162, 'my don task edit for all', '', 0, '2020-04-26 18:00:00', '2020-04-28 18:00:00', NULL, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 03:51:58', 1, 2, '2020-04-30 06:19:31', '2020-05-28 09:51:58'),
(163, 'In the name of Allah, the Entirely Merciful, the Especially Merciful.In the name of Allah, the Entirely Merciful, the Especially Merciful.In the name of Allah, the Entirely Merciful, the Especially Me', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(164, 'my new task', '<p>here is description</p>', 0, '2020-04-26 18:00:00', '2020-04-29 18:00:00', 0, 1, 0, 0, 1, 1, 8, 0, 1, '2020-04-29 02:23:04', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(165, 'Copy my new task', '<p>here is description</p>', 0, '2020-04-26 18:00:00', '2020-05-05 18:00:00', 0, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(166, '1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(167, '2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(168, '3', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(169, '4', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 3, 3, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(170, 'new Duplicate task list', '<p>Duplicate task list Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 03:52:19', 1, 2, '2020-04-30 06:19:31', '2020-05-28 09:52:19'),
(171, 'Copy new Duplicate task list', '<p>Duplicate task list Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 02:23:23', 1, 2, '2020-04-30 06:19:31', '2020-05-28 08:23:23'),
(172, 'my task 009', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(173, 'sub 2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(174, 'Copy my task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 1, 0, 8, 0, 1, '2020-04-29 02:22:59', 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(175, 'Copy my task 009', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(176, 'Copy my task 009', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(177, 'Copy new Duplicate task list', '<p>Duplicate task list Duplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task listDuplicate task list</p>', 0, '2020-04-28 18:00:00', '2020-05-04 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 2, '2020-05-28 03:52:29', 1, 2, '2020-04-30 06:19:31', '2020-05-28 09:52:29'),
(178, '90900', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(179, '123232', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(180, 'Copy sub 2', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(181, 'new one two 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(182, 'Copy new one two 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 1, 8, 0, NULL, NULL, 1, 1, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(184, 'happy task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 2, 2, '2020-04-30 06:19:31', '2020-04-30 06:19:31'),
(185, 'my new task-001', '<p>new discussion</p>', 0, NULL, '2020-05-18 18:00:00', 0, 1, 0, 0, 1, 0, 8, 0, 1, '2020-05-18 22:50:48', 1, 1, '2020-05-19 04:50:16', '2020-05-19 04:50:48'),
(188, 'new 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 3, 3, '2020-05-19 05:26:34', '2020-05-19 05:26:34'),
(189, 'new 1', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 6, 0, NULL, NULL, 1, 1, '2020-05-19 05:37:58', '2020-05-19 05:37:58'),
(190, 'new task 001', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 6, 0, NULL, NULL, 3, 3, '2020-05-19 05:39:09', '2020-05-19 05:39:09'),
(191, 'my task', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 8, 0, NULL, NULL, 3, 3, '2020-05-19 05:43:29', '2020-05-19 05:43:29'),
(195, 'Dokan-lite overall testing', '', 720, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:10:45', '2020-05-20 08:38:18'),
(196, 'Store listing filter does not work when its saved as frontpage	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:10:55', '2020-05-20 08:50:38'),
(197, 'Refactor Stripe Payment Gateway	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:11:06', '2020-05-20 08:50:37'),
(198, '8 digit number calculation issue	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:11:19', '2020-05-20 08:50:34'),
(199, 'Refactor of Vendor Subscription	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:11:30', '2020-05-20 08:50:33'),
(200, 'Hide vendor info if admin wants to	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:11:46', '2020-05-20 08:50:31'),
(201, 'deduct paypal gateway fee from vendor\'s earning', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:11:59', '2020-05-20 08:50:30'),
(202, 'Unable to purchase non recurring subscription with PayPal	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:12:08', '2020-05-20 08:50:29'),
(203, 'Product Knowledge Sharing on Dokan	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 9, 0, NULL, NULL, 1, 1, '2020-05-20 08:12:19', '2020-05-20 08:47:09'),
(204, 'testing', '', 720, '2020-05-03 18:00:00', NULL, NULL, 1, 0, 0, 0, 0, 9, 195, NULL, NULL, 1, 1, '2020-05-20 08:13:52', '2020-05-20 08:43:49'),
(205, 'testing', '', 120, '2020-05-03 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 196, 1, '2020-05-20 02:18:50', 1, 1, '2020-05-20 08:18:47', '2020-05-20 08:18:50'),
(206, 'testing', '', 240, '2020-05-04 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 197, 1, '2020-05-20 02:19:49', 1, 1, '2020-05-20 08:19:45', '2020-05-20 08:19:49'),
(207, 'testing', '', 180, '2020-05-05 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 198, 1, '2020-05-20 02:21:05', 1, 1, '2020-05-20 08:20:27', '2020-05-20 08:21:05'),
(208, 'testing', '', 240, '2020-05-05 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 199, 1, '2020-05-20 02:21:53', 1, 1, '2020-05-20 08:21:51', '2020-05-20 08:21:53'),
(209, 'testing', '', 180, '2020-05-07 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 200, 1, '2020-05-20 02:22:39', 1, 1, '2020-05-20 08:22:37', '2020-05-20 08:22:39'),
(210, 'testing', '', 720, '2020-05-12 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 201, 1, '2020-05-20 02:23:22', 1, 1, '2020-05-20 08:23:20', '2020-05-20 08:23:22'),
(211, 'testing', '', 360, '2020-05-17 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 202, 1, '2020-05-20 02:23:58', 1, 1, '2020-05-20 08:23:55', '2020-05-20 08:23:58'),
(212, 'testing', '', 180, '2020-05-18 18:00:00', NULL, NULL, 1, 0, 0, 1, 0, 9, 203, 1, '2020-05-20 02:24:58', 1, 1, '2020-05-20 08:24:54', '2020-05-20 08:24:58'),
(213, 'Dokan-lite overall testing', '', 720, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(214, 'Store listing filter does not work when its saved as frontpage	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(215, 'Refactor Stripe Payment Gateway	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(216, '8 digit number calculation issue	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(217, 'Refactor of Vendor Subscription	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(218, 'Hide vendor info if admin wants to	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(219, 'deduct paypal gateway fee from vendor\'s earning', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(220, 'Unable to purchase non recurring subscription with PayPal	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(221, 'Product Knowledge Sharing on Dokan	', '', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 10, 0, NULL, NULL, 1, 1, '2020-05-28 08:07:15', '2020-05-28 08:07:15'),
(226, 'task 1', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 2, '2020-05-28 09:29:09', '2020-05-28 11:06:55'),
(229, 'task 2', '', 0, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 2, '2020-05-28 09:48:25', '2020-05-28 11:07:14'),
(232, 'task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 2, '2020-05-28 10:23:34', '2020-05-28 11:08:16'),
(233, 'Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support. Please enter your Project Manager Pro plugin license key to get the pro features, regular ', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 2, '2020-05-28 10:24:11', '2020-05-28 10:24:11'),
(234, 'Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 2, '2020-05-28 10:33:31', '2020-05-28 11:07:20'),
(235, 'Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 2, '2020-05-28 10:33:32', '2020-05-28 11:12:26'),
(236, 'Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 2, '2020-05-28 10:33:34', '2020-05-28 11:10:59'),
(237, 'Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 05:12:10', 2, 2, '2020-05-28 10:33:34', '2020-05-28 11:12:10'),
(238, 'Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 1, '2020-05-28 10:33:34', '2020-05-28 11:10:35'),
(239, 'Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 1, '2020-05-28 10:33:35', '2020-05-28 11:10:13'),
(240, 'Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 05:12:05', 2, 2, '2020-05-28 10:33:35', '2020-05-28 11:12:05'),
(241, 'Copy Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 2, '2020-05-28 10:33:45', '2020-05-28 10:33:45'),
(242, 'Copy Copy task 5', NULL, 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 05:12:06', 2, 2, '2020-05-28 10:33:56', '2020-05-28 11:12:06'),
(243, 'Copy Please enter your Project Manager Pro plugin license key to get the pro features, regular update and support. Please enter your Project Manager Pro plugin license key to get the pro features, regular ', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 2, 2, '2020-05-28 10:34:06', '2020-05-28 10:34:06'),
(244, 'task 2020', NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-05-28 11:02:26', '2020-05-28 11:02:26'),
(245, 'Copy task 2020', '', 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-05-28 11:02:38', '2020-05-28 11:02:52'),
(246, 'Copy Copy task 2020', '', 0, NULL, '2020-05-28 18:00:00', NULL, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, '2020-05-28 11:03:10', '2020-05-28 11:03:10'),
(247, '01 Mishu task', '', 0, NULL, '2020-05-29 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 05:12:01', 2, 2, '2020-05-28 11:04:14', '2020-05-28 11:12:01'),
(248, 'Copy 01 Mishu task', '', 0, NULL, '2020-05-25 18:00:00', NULL, 1, 0, 0, 1, 0, 1, 0, 2, '2020-05-28 05:12:00', 2, 2, '2020-05-28 11:04:50', '2020-05-28 11:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_task_custom_fields`
--

CREATE TABLE `wp_pm_task_custom_fields` (
  `id` int(11) UNSIGNED NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `value` text,
  `color` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_task_custom_fields`
--

INSERT INTO `wp_pm_task_custom_fields` (`id`, `field_id`, `project_id`, `list_id`, `task_id`, `value`, `color`) VALUES
(1, 1, 1, 1, 14, 'Major', ''),
(2, 1, 1, 1, 38, 'Minor', ''),
(3, 2, 1, 1, 14, 'Issues', '#BC3F3F'),
(4, 2, 1, 7, 40, 'Issues', '#BC3F3F'),
(5, 2, 1, 1, 63, 'Issues', '#BC3F3F'),
(6, 3, 1, 1, 63, 'new tasks', NULL),
(7, 2, 1, 19, 85, 'Issues', '#BC3F3F'),
(8, 3, 1, 19, 85, 'system re-design for all', NULL),
(9, 2, 1, 7, 89, 'Issues', '#BC3F3F'),
(10, 3, 1, 7, 89, '011 issues', NULL),
(11, 2, 1, 1, 92, 'Issues', '#BC3F3F'),
(12, 3, 1, 1, 92, 'my new task 001', NULL),
(13, 2, 1, 23, 95, 'Issues', '#BC3F3F'),
(14, 2, 1, 23, 99, 'Issues', '#BC3F3F'),
(15, 3, 1, 23, 99, '23432424', NULL),
(16, 2, 1, 23, 104, 'Issues', '#BC3F3F'),
(17, 3, 1, 23, 104, '23432424', NULL),
(18, 2, 1, 23, 111, 'Issues', '#BC3F3F'),
(19, 3, 1, 23, 111, '23432424', NULL),
(20, 2, 1, 23, 115, 'Issues', '#BC3F3F'),
(21, 3, 1, 23, 115, '', ''),
(22, 2, 1, 23, 121, '', ''),
(23, 3, 1, 23, 121, '', ''),
(24, 2, 1, 23, 125, '', ''),
(25, 3, 1, 23, 125, '', ''),
(26, 2, NULL, NULL, NULL, '', ''),
(27, 3, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_task_label`
--

CREATE TABLE `wp_pm_task_label` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_task_label`
--

INSERT INTO `wp_pm_task_label` (`id`, `title`, `description`, `color`, `status`, `project_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'major', 'major', '#8E5757', 1, 1, 1, 1, '2020-04-27 23:46:46', '2020-04-27 23:46:46'),
(3, 'minor', 'minor issues', '#452727', 1, 1, 1, 1, '2020-04-27 23:47:02', '2020-04-27 23:47:02'),
(4, 'Testing', 'Testing', '#B76767', 1, 9, 1, 1, '2020-05-20 08:35:13', '2020-05-20 08:35:13'),
(5, 'Documentation', 'Documentation', '#574E4E', 1, 9, 1, 1, '2020-05-20 08:35:35', '2020-05-20 08:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_task_label_task`
--

CREATE TABLE `wp_pm_task_label_task` (
  `id` int(11) UNSIGNED NOT NULL,
  `task_id` int(11) UNSIGNED NOT NULL,
  `label_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pm_task_label_task`
--

INSERT INTO `wp_pm_task_label_task` (`id`, `task_id`, `label_id`) VALUES
(1, 14, 3),
(2, 14, 2),
(3, 38, 2),
(4, 38, 3),
(5, 39, 2),
(6, 39, 3),
(7, 40, 3),
(8, 42, 3),
(9, 52, 2),
(10, 52, 3),
(11, 53, 2),
(12, 53, 3),
(13, 54, 2),
(14, 54, 3),
(15, 55, 3),
(17, 85, 2),
(18, 88, 2),
(19, 140, 2),
(20, 140, 3),
(21, 148, 2),
(22, 148, 3),
(23, 149, 2),
(24, 149, 3),
(25, 150, 3),
(26, 151, 3),
(27, 164, 2),
(28, 165, 2),
(29, 195, 4),
(30, 213, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_task_types`
--

CREATE TABLE `wp_pm_task_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_task_types`
--

INSERT INTO `wp_pm_task_types` (`id`, `title`, `description`, `type`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Enhancement ', 'Enhancement ', 'subtask', 1, 1, 1, NULL, NULL),
(2, 'New Feature', 'New Feature', 'subtask', 1, 1, 1, NULL, NULL),
(3, 'Others', 'Others', 'subtask', 1, 1, 1, NULL, NULL),
(4, 'Plugin Issue', '', 'subtask', 1, 1, 1, NULL, NULL),
(5, 'Client Issue', '', 'subtask', 1, 1, 1, NULL, NULL),
(6, 'Testing', 'Testing', 'subtask', 1, 1, 1, NULL, NULL),
(7, 'Documentation ', 'Documentation ', 'subtask', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_task_type_task`
--

CREATE TABLE `wp_pm_task_type_task` (
  `type_id` int(11) UNSIGNED NOT NULL,
  `task_id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_pm_task_type_task`
--

INSERT INTO `wp_pm_task_type_task` (`type_id`, `task_id`, `project_id`, `list_id`) VALUES
(0, 193, 1, 1),
(0, 194, 1, 1),
(3, 204, 9, 35),
(0, 205, 9, 35),
(0, 206, 9, 35),
(0, 207, 9, 35),
(0, 208, 9, 35),
(0, 209, 9, 35),
(0, 210, 9, 35),
(0, 211, 9, 35),
(0, 212, 9, 35);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pm_time_tracker`
--

CREATE TABLE `wp_pm_time_tracker` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) UNSIGNED NOT NULL,
  `task_id` int(11) UNSIGNED NOT NULL,
  `start` int(11) UNSIGNED NOT NULL,
  `stop` int(11) UNSIGNED NOT NULL,
  `total` int(11) UNSIGNED NOT NULL,
  `run_status` tinyint(4) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 9, '_wp_attached_file', '2020/04/Screenshot-2020-04-08-at-8.07.00-PM-6.png'),
(8, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1078;s:6:\"height\";i:212;s:4:\"file\";s:49:\"2020/04/Screenshot-2020-04-08-at-8.07.00-PM-6.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screenshot-2020-04-08-at-8.07.00-PM-6-300x59.png\";s:5:\"width\";i:300;s:6:\"height\";i:59;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"Screenshot-2020-04-08-at-8.07.00-PM-6-1024x201.png\";s:5:\"width\";i:1024;s:6:\"height\";i:201;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.07.00-PM-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.07.00-PM-6-768x151.png\";s:5:\"width\";i:768;s:6:\"height\";i:151;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 10, '_wp_attached_file', '2020/04/Screenshot-2020-04-06-at-4.01.35-PM-1.png'),
(10, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:760;s:4:\"file\";s:49:\"2020/04/Screenshot-2020-04-06-at-4.01.35-PM-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-06-at-4.01.35-PM-1-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"Screenshot-2020-04-06-at-4.01.35-PM-1-1024x707.png\";s:5:\"width\";i:1024;s:6:\"height\";i:707;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-06-at-4.01.35-PM-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-06-at-4.01.35-PM-1-768x531.png\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 11, '_wp_attached_file', '2020/04/Screenshot-2020-04-08-at-8.07.00-PM-7.png'),
(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1078;s:6:\"height\";i:212;s:4:\"file\";s:49:\"2020/04/Screenshot-2020-04-08-at-8.07.00-PM-7.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screenshot-2020-04-08-at-8.07.00-PM-7-300x59.png\";s:5:\"width\";i:300;s:6:\"height\";i:59;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"Screenshot-2020-04-08-at-8.07.00-PM-7-1024x201.png\";s:5:\"width\";i:1024;s:6:\"height\";i:201;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.07.00-PM-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.07.00-PM-7-768x151.png\";s:5:\"width\";i:768;s:6:\"height\";i:151;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 12, '_wp_attached_file', '2020/04/document.pdf'),
(14, 13, '_edit_lock', '1588142654:1'),
(17, 16, '_wp_attached_file', '2020/04/Screenshot-2020-04-08-at-8.38.35-PM-2.png'),
(18, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1102;s:6:\"height\";i:744;s:4:\"file\";s:49:\"2020/04/Screenshot-2020-04-08-at-8.38.35-PM-2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.38.35-PM-2-300x203.png\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"Screenshot-2020-04-08-at-8.38.35-PM-2-1024x691.png\";s:5:\"width\";i:1024;s:6:\"height\";i:691;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.38.35-PM-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.38.35-PM-2-768x519.png\";s:5:\"width\";i:768;s:6:\"height\";i:519;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 17, '_wp_attached_file', '2020/04/Screenshot-2020-04-08-at-8.07.26-PM-1.png'),
(20, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1090;s:6:\"height\";i:336;s:4:\"file\";s:49:\"2020/04/Screenshot-2020-04-08-at-8.07.26-PM-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screenshot-2020-04-08-at-8.07.26-PM-1-300x92.png\";s:5:\"width\";i:300;s:6:\"height\";i:92;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"Screenshot-2020-04-08-at-8.07.26-PM-1-1024x316.png\";s:5:\"width\";i:1024;s:6:\"height\";i:316;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.07.26-PM-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"Screenshot-2020-04-08-at-8.07.26-PM-1-768x237.png\";s:5:\"width\";i:768;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-27 04:55:17', '2020-04-27 04:55:17', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-04-27 04:55:17', '2020-04-27 04:55:17', '', 0, 'http://localhost/pm-features/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-27 04:55:17', '2020-04-27 04:55:17', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/pm-features/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-04-27 04:55:17', '2020-04-27 04:55:17', '', 0, 'http://localhost/pm-features/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-27 04:55:17', '2020-04-27 04:55:17', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/pm-features.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-04-27 04:55:17', '2020-04-27 04:55:17', '', 0, 'http://localhost/pm-features/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-04-27 04:56:05', '2020-04-27 04:56:05', '[pm_invoice]', 'Invoice', '', 'publish', 'close', 'close', '', 'invoice', '', '', '2020-04-27 04:56:05', '2020-04-27 04:56:05', '', 0, 'http://localhost/pm-features/invoice/', 0, 'page', '', 0),
(6, 1, '2020-04-27 04:56:05', '2020-04-27 04:56:05', '[pm]', 'Projects', '', 'publish', 'close', 'close', '', 'projects', '', '', '2020-04-27 04:56:05', '2020-04-27 04:56:05', '', 0, 'http://localhost/pm-features/projects/', 0, 'page', '', 0),
(9, 1, '2020-04-29 10:25:05', '2020-04-29 04:25:05', '', 'Screenshot-2020-04-08-at-8.07.00-PM-6', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-08-at-8-07-00-pm-6', '', '', '2020-04-29 10:25:05', '2020-04-29 04:25:05', '', 0, 'http://localhost/pm-features/screenshot-2020-04-08-at-8-07-00-pm-6/', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-04-29 10:35:43', '2020-04-29 04:35:43', '', 'Screenshot-2020-04-06-at-4.01.35-PM-1', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-06-at-4-01-35-pm-1', '', '', '2020-04-29 10:35:43', '2020-04-29 04:35:43', '', 0, 'http://localhost/pm-features/screenshot-2020-04-06-at-4-01-35-pm-1/', 0, 'attachment', 'image/png', 0),
(11, 1, '2020-04-29 11:16:02', '2020-04-29 05:16:02', '', 'Screenshot-2020-04-08-at-8.07.00-PM-7', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-08-at-8-07-00-pm-7', '', '', '2020-04-29 11:16:02', '2020-04-29 05:16:02', '', 0, 'http://localhost/pm-features/screenshot-2020-04-08-at-8-07-00-pm-7/', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-04-29 11:16:22', '2020-04-29 05:16:22', '', 'document', '', 'inherit', 'open', 'closed', '', 'document', '', '', '2020-04-29 11:16:22', '2020-04-29 05:16:22', '', 0, 'http://localhost/pm-features/document/', 0, 'attachment', 'application/pdf', 0),
(13, 1, '2020-04-29 12:40:00', '0000-00-00 00:00:00', '', 'test', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-29 12:40:00', '2020-04-29 06:40:00', '', 0, 'http://localhost/pm-features/?page_id=13', 0, 'page', '', 0),
(16, 1, '2020-04-30 12:25:05', '2020-04-30 06:25:05', '', 'Screenshot-2020-04-08-at-8.38.35-PM-2', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-08-at-8-38-35-pm-2', '', '', '2020-04-30 12:25:05', '2020-04-30 06:25:05', '', 0, 'http://localhost/pm-features/screenshot-2020-04-08-at-8-38-35-pm-2/', 0, 'attachment', 'image/png', 0),
(17, 1, '2020-04-30 12:30:06', '2020-04-30 06:30:06', '', 'Screenshot-2020-04-08-at-8.07.26-PM-1', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-08-at-8-07-26-pm-1', '', '', '2020-04-30 12:30:06', '2020-04-30 06:30:06', '', 0, 'http://localhost/pm-features/screenshot-2020-04-08-at-8-07-26-pm-1/', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '18'),
(18, 2, 'nickname', 'mishu'),
(19, 2, 'first_name', 'Mishu'),
(20, 2, 'last_name', 'bhai'),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(30, 2, 'wp_user_level', '0'),
(31, 2, '_user_daily_digets_status', 'off'),
(32, 2, '_cpm_email_notification', 'off'),
(33, 2, '_cpm_email_notification_new_project', 'off'),
(34, 2, '_cpm_email_notification_update_project', 'off'),
(35, 2, '_cpm_email_notification_new_message', 'off'),
(36, 2, '_cpm_email_notification_new_comment', 'off'),
(37, 2, '_cpm_email_notification_update_comment', 'off'),
(38, 2, '_cpm_email_notification_new_task', 'off'),
(39, 2, '_cpm_email_notification_update_task', 'off'),
(40, 2, '_cpm_email_notification_complete_task', 'off'),
(41, 2, 'session_tokens', 'a:2:{s:64:\"1c3a6440892eaf53545dae4fa627d333c74d992643c81205c1e5cd744c3e1637\";a:4:{s:10:\"expiration\";i:1590826632;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:76.0) Gecko/20100101 Firefox/76.0\";s:5:\"login\";i:1590653832;}s:64:\"c92a54542b29b9775df7a496b3c32f2c52236766f4ef3ec8549a891d41b39c8a\";a:4:{s:10:\"expiration\";i:1590834348;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1590661548;}}'),
(42, 3, 'nickname', 'deniel'),
(43, 3, 'first_name', 'Daniel'),
(44, 3, 'last_name', 'Bo'),
(45, 3, 'description', ''),
(46, 3, 'rich_editing', 'true'),
(47, 3, 'syntax_highlighting', 'true'),
(48, 3, 'comment_shortcuts', 'false'),
(49, 3, 'admin_color', 'fresh'),
(50, 3, 'use_ssl', '0'),
(51, 3, 'show_admin_bar_front', 'true'),
(52, 3, 'locale', ''),
(53, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(54, 3, 'wp_user_level', '0'),
(55, 3, '_user_daily_digets_status', 'off'),
(56, 3, '_cpm_email_notification', 'off'),
(57, 3, '_cpm_email_notification_new_project', 'off'),
(58, 3, '_cpm_email_notification_update_project', 'off'),
(59, 3, '_cpm_email_notification_new_message', 'off'),
(60, 3, '_cpm_email_notification_new_comment', 'off'),
(61, 3, '_cpm_email_notification_update_comment', 'off'),
(62, 3, '_cpm_email_notification_new_task', 'off'),
(63, 3, '_cpm_email_notification_update_task', 'off'),
(64, 3, '_cpm_email_notification_complete_task', 'off'),
(65, 3, 'session_tokens', 'a:1:{s:64:\"88f2bd88fc482e82cc35ba0b9e32c1afe0a7a93a53e99c498c9d648f61c25de8\";a:4:{s:10:\"expiration\";i:1590038756;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:76.0) Gecko/20100101 Firefox/76.0\";s:5:\"login\";i:1589865956;}}'),
(66, 4, 'nickname', 'luki'),
(67, 4, 'first_name', 'Luki'),
(68, 4, 'last_name', 'Buk'),
(69, 4, 'description', ''),
(70, 4, 'rich_editing', 'true'),
(71, 4, 'syntax_highlighting', 'true'),
(72, 4, 'comment_shortcuts', 'false'),
(73, 4, 'admin_color', 'fresh'),
(74, 4, 'use_ssl', '0'),
(75, 4, 'show_admin_bar_front', 'true'),
(76, 4, 'locale', ''),
(77, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(78, 4, 'wp_user_level', '0'),
(79, 4, '_user_daily_digets_status', 'off'),
(80, 4, '_cpm_email_notification', 'off'),
(81, 4, '_cpm_email_notification_new_project', 'off'),
(82, 4, '_cpm_email_notification_update_project', 'off'),
(83, 4, '_cpm_email_notification_new_message', 'off'),
(84, 4, '_cpm_email_notification_new_comment', 'off'),
(85, 4, '_cpm_email_notification_update_comment', 'off'),
(86, 4, '_cpm_email_notification_new_task', 'off'),
(87, 4, '_cpm_email_notification_update_task', 'off'),
(88, 4, '_cpm_email_notification_complete_task', 'off'),
(89, 5, 'nickname', 'luchifar'),
(90, 5, 'first_name', 'Luchifar'),
(91, 5, 'last_name', 'uki'),
(92, 5, 'description', ''),
(93, 5, 'rich_editing', 'true'),
(94, 5, 'syntax_highlighting', 'true'),
(95, 5, 'comment_shortcuts', 'false'),
(96, 5, 'admin_color', 'fresh'),
(97, 5, 'use_ssl', '0'),
(98, 5, 'show_admin_bar_front', 'true'),
(99, 5, 'locale', ''),
(100, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(101, 5, 'wp_user_level', '0'),
(102, 5, '_user_daily_digets_status', 'off'),
(103, 5, '_cpm_email_notification', 'off'),
(104, 5, '_cpm_email_notification_new_project', 'off'),
(105, 5, '_cpm_email_notification_update_project', 'off'),
(106, 5, '_cpm_email_notification_new_message', 'off'),
(107, 5, '_cpm_email_notification_new_comment', 'off'),
(108, 5, '_cpm_email_notification_update_comment', 'off'),
(109, 5, '_cpm_email_notification_new_task', 'off'),
(110, 5, '_cpm_email_notification_update_task', 'off'),
(111, 5, '_cpm_email_notification_complete_task', 'off'),
(113, 6, 'nickname', 'shanjidah'),
(114, 6, 'first_name', 'Shanjidah'),
(115, 6, 'last_name', ''),
(116, 6, 'description', ''),
(117, 6, 'rich_editing', 'true'),
(118, 6, 'syntax_highlighting', 'true'),
(119, 6, 'comment_shortcuts', 'false'),
(120, 6, 'admin_color', 'fresh'),
(121, 6, 'use_ssl', '0'),
(122, 6, 'show_admin_bar_front', 'true'),
(123, 6, 'locale', ''),
(124, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(125, 6, 'wp_user_level', '0'),
(126, 6, '_user_daily_digets_status', 'off'),
(127, 6, '_cpm_email_notification', 'off'),
(128, 6, '_cpm_email_notification_new_project', 'off'),
(129, 6, '_cpm_email_notification_update_project', 'off'),
(130, 6, '_cpm_email_notification_new_message', 'off'),
(131, 6, '_cpm_email_notification_new_comment', 'off'),
(132, 6, '_cpm_email_notification_update_comment', 'off'),
(133, 6, '_cpm_email_notification_new_task', 'off'),
(134, 6, '_cpm_email_notification_update_task', 'off'),
(135, 6, '_cpm_email_notification_complete_task', 'off'),
(136, 1, 'session_tokens', 'a:1:{s:64:\"2e0513e2650080d1ea3a8859df7ad2d3134b40c8ecc07f83c1b822625dcd5920\";a:4:{s:10:\"expiration\";i:1591042815;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1590870015;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BizCfKdFYArxqcaJC6pZcWeTbZlAJ/.', 'admin', 'farazi.test@gmail.com', 'http://localhost/pm-features', '2020-04-27 04:55:17', '', 0, 'admin'),
(2, 'mishu', '$P$BuJwhaS2HUb1btLAXcL0keTjl/t6qY1', 'mishu', 'mishu@g.c', '', '2020-04-27 04:57:08', '', 0, 'Mishu bhai'),
(3, 'deniel', '$P$BdMqiesSmU12iBQViR4BVQoHoTdqut0', 'deniel', 'daniel@g.c', '', '2020-04-28 07:58:43', '1588060723:$P$BT.0YKjF2GjIXmd91X9Y5xIv.WOAmh/', 0, 'Daniel Bo'),
(4, 'luki', '$P$B.jRyxhzKZSEhev503mb.grF2yxWAz1', 'luki', 'luki@g.c', '', '2020-04-29 04:24:19', '1588134259:$P$B13Ssi.8/8kWMRS4UC8CqO.1Ue5D/h/', 0, 'Luki Buk'),
(5, 'luchifar', '$P$BciRxFq93OKUSWspGxURgcD1FvJlR..', 'luchifar', 'luchifar@g.c', '', '2020-04-29 04:33:30', '1588134810:$P$BA4YxZpuTfBY0u5oqVi8HLiGHEHiRj.', 0, 'Luchifar uki'),
(6, 'shanjidah', '$P$BY2Ox74pUrBIR90.Dcv7NwRK4Cc4ZC0', 'shanjidah', 'shanjidah@g.c', '', '2020-05-20 08:10:13', '1589962213:$P$Ba.qgjoK5KWxqAkPYTwz1q877rkZHZ/', 0, 'Shanjidah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_email_log`
--
ALTER TABLE `wp_email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_pm_activities`
--
ALTER TABLE `wp_pm_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `actor_id` (`actor_id`),
  ADD KEY `resource_id` (`resource_id`);

--
-- Indexes for table `wp_pm_assignees`
--
ALTER TABLE `wp_pm_assignees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_boardables`
--
ALTER TABLE `wp_pm_boardables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `board_id` (`board_id`),
  ADD KEY `boardable_id` (`boardable_id`);

--
-- Indexes for table `wp_pm_boards`
--
ALTER TABLE `wp_pm_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_capabilities`
--
ALTER TABLE `wp_pm_capabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_categories`
--
ALTER TABLE `wp_pm_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_category_project`
--
ALTER TABLE `wp_pm_category_project`
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `wp_pm_comments`
--
ALTER TABLE `wp_pm_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `commentable_id` (`commentable_id`);

--
-- Indexes for table `wp_pm_custom_fields`
--
ALTER TABLE `wp_pm_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_files`
--
ALTER TABLE `wp_pm_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fileable_id` (`fileable_id`);

--
-- Indexes for table `wp_pm_gantt_chart_links`
--
ALTER TABLE `wp_pm_gantt_chart_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source` (`source`),
  ADD KEY `target` (`target`);

--
-- Indexes for table `wp_pm_imports`
--
ALTER TABLE `wp_pm_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_integrations`
--
ALTER TABLE `wp_pm_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_invoice`
--
ALTER TABLE `wp_pm_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `wp_pm_meta`
--
ALTER TABLE `wp_pm_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_projects`
--
ALTER TABLE `wp_pm_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_roles`
--
ALTER TABLE `wp_pm_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_role_project`
--
ALTER TABLE `wp_pm_role_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_role_project_capabilities`
--
ALTER TABLE `wp_pm_role_project_capabilities`
  ADD KEY `role_project_id` (`role_project_id`);

--
-- Indexes for table `wp_pm_role_project_users`
--
ALTER TABLE `wp_pm_role_project_users`
  ADD KEY `role_project_id` (`role_project_id`);

--
-- Indexes for table `wp_pm_role_user`
--
ALTER TABLE `wp_pm_role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `assigned_by` (`assigned_by`);

--
-- Indexes for table `wp_pm_settings`
--
ALTER TABLE `wp_pm_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_sprints`
--
ALTER TABLE `wp_pm_sprints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_title` (`title`);

--
-- Indexes for table `wp_pm_sprint_projects`
--
ALTER TABLE `wp_pm_sprint_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sprint_id` (`sprint_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_sprint_project_tasks`
--
ALTER TABLE `wp_pm_sprint_project_tasks`
  ADD KEY `sprint_id` (`sprint_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_tasks`
--
ALTER TABLE `wp_pm_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_task_custom_fields`
--
ALTER TABLE `wp_pm_task_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `wp_pm_task_label`
--
ALTER TABLE `wp_pm_task_label`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_pm_task_label_task`
--
ALTER TABLE `wp_pm_task_label_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `label_id` (`label_id`);

--
-- Indexes for table `wp_pm_task_types`
--
ALTER TABLE `wp_pm_task_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pm_task_type_task`
--
ALTER TABLE `wp_pm_task_type_task`
  ADD UNIQUE KEY `task_id` (`task_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `wp_pm_time_tracker`
--
ALTER TABLE `wp_pm_time_tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_email_log`
--
ALTER TABLE `wp_email_log`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

--
-- AUTO_INCREMENT for table `wp_pm_activities`
--
ALTER TABLE `wp_pm_activities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `wp_pm_assignees`
--
ALTER TABLE `wp_pm_assignees`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `wp_pm_boardables`
--
ALTER TABLE `wp_pm_boardables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `wp_pm_boards`
--
ALTER TABLE `wp_pm_boards`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wp_pm_capabilities`
--
ALTER TABLE `wp_pm_capabilities`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pm_categories`
--
ALTER TABLE `wp_pm_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_pm_comments`
--
ALTER TABLE `wp_pm_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `wp_pm_custom_fields`
--
ALTER TABLE `wp_pm_custom_fields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_pm_files`
--
ALTER TABLE `wp_pm_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_pm_gantt_chart_links`
--
ALTER TABLE `wp_pm_gantt_chart_links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pm_imports`
--
ALTER TABLE `wp_pm_imports`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pm_integrations`
--
ALTER TABLE `wp_pm_integrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pm_invoice`
--
ALTER TABLE `wp_pm_invoice`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_pm_meta`
--
ALTER TABLE `wp_pm_meta`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `wp_pm_projects`
--
ALTER TABLE `wp_pm_projects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_pm_roles`
--
ALTER TABLE `wp_pm_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_pm_role_project`
--
ALTER TABLE `wp_pm_role_project`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_pm_role_user`
--
ALTER TABLE `wp_pm_role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `wp_pm_settings`
--
ALTER TABLE `wp_pm_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_pm_sprints`
--
ALTER TABLE `wp_pm_sprints`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_pm_sprint_projects`
--
ALTER TABLE `wp_pm_sprint_projects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_pm_tasks`
--
ALTER TABLE `wp_pm_tasks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `wp_pm_task_custom_fields`
--
ALTER TABLE `wp_pm_task_custom_fields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_pm_task_label`
--
ALTER TABLE `wp_pm_task_label`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_pm_task_label_task`
--
ALTER TABLE `wp_pm_task_label_task`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_pm_task_types`
--
ALTER TABLE `wp_pm_task_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_pm_time_tracker`
--
ALTER TABLE `wp_pm_time_tracker`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_pm_gantt_chart_links`
--
ALTER TABLE `wp_pm_gantt_chart_links`
  ADD CONSTRAINT `wp_pm_gantt_chart_links_ibfk_1` FOREIGN KEY (`source`) REFERENCES `wp_pm_tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wp_pm_gantt_chart_links_ibfk_2` FOREIGN KEY (`target`) REFERENCES `wp_pm_tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wp_pm_invoice`
--
ALTER TABLE `wp_pm_invoice`
  ADD CONSTRAINT `wp_pm_invoice_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `wp_pm_projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wp_pm_time_tracker`
--
ALTER TABLE `wp_pm_time_tracker`
  ADD CONSTRAINT `wp_pm_time_tracker_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `wp_pm_tasks` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
