-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-20 13:07:52
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycms`
--

-- --------------------------------------------------------

--
-- 表的结构 `friend`
--

CREATE TABLE IF NOT EXISTS `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `limits` int(10) NOT NULL,
  `portrait` varchar(30) NOT NULL,
  `names` varchar(30) NOT NULL,
  `user` varchar(10) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `friend`
--

INSERT INTO `friend` (`id`, `tel`, `email`, `limits`, `portrait`, `names`, `user`, `pass`) VALUES
(1, '12801238012', '123123123@123.com', 1, '', '韩笑', 'zhangsan', '123123'),
(2, '12801238012', '123123123@123.com', 1, '', '韩笑', 'zheshilisi', '123123'),
(4, '12801238012', '123123123@123.com', 0, '', '韩笑', 'hanxiao', '123123'),
(5, '12801238012', '123123123@123.com', 0, '', '韩笑', 'hanxiao1', '123123'),
(6, '12801238012', '123123123@123.com', 0, '', '韩笑', 'hanxiao2', '123123'),
(7, '12801238012', '123123123@123.com', 0, '', '韩笑', 'hanxiao3', '123123');

-- --------------------------------------------------------

--
-- 表的结构 `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `thumbImg` varchar(1000) NOT NULL,
  `titles` varchar(100) NOT NULL,
  `cid` int(10) NOT NULL,
  `author` varchar(10) NOT NULL,
  `con` varchar(10000) NOT NULL,
  `rec` int(10) NOT NULL,
  `recond` varchar(30) NOT NULL,
  `notes` varchar(30) NOT NULL,
  `times` varchar(19) NOT NULL,
  `banner` varchar(10) NOT NULL,
  `hot` varchar(10) NOT NULL,
  `keywords` varchar(10) NOT NULL,
  `hot2` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `lists`
--

INSERT INTO `lists` (`id`, `thumbImg`, `titles`, `cid`, `author`, `con`, `rec`, `recond`, `notes`, `times`, `banner`, `hot`, `keywords`, `hot2`) VALUES
(20, '../upload/17-06-15/9eaf4f8f6c8f849bb3eed9f6090025e72.jpg', '到远方去，熟悉的地方没有景色', 16, '张三', '<p>李四</p>', 0, '', '', '2017-06-19', '1', '1', '碎碎念', '1'),
(21, '../upload/17-06-15/0d02087817d13d42ce2bdd65229736574.jpg', '希望，每一次微笑，从我心扉，到你心田', 16, '李四', '<p>很棒</p>', 0, '', '', '2017-06-19', '1', '1', '碎碎念', '0'),
(22, '../upload/17-06-15/843cd07ecdbd78331df1d3768402805abanner-1.jpg', '世间所有相遇，都是久别重逢', 16, 'admin', '<p>123</p>', 0, '', '', '2017-06-17', '1', '0', '', ''),
(23, '../upload/17-06-16/3461eef54b76c0f0230f977b5f88687120160114122701_47482.jpg', '新站SEO优化步骤', 17, 'DD博客', '<h4 style="margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-weight: 400; font-stretch: normal; line-height: 24px; font-family: ">一、分析网站产品</h4><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: ">开始分析网站的产品、客户群体、关键词、最重要的还是要去分析下首页排名较好的网站的布局以及其他的一些优化信息、俗话说知己知彼方能百战不殆、好好的分析下、从里到外、从外到里、内容、外链、友链这些都要去分析</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: "><br/></p><h4 style="margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-weight: 400; font-stretch: normal; line-height: 24px; font-family: ">二、想想自己的优势</h4><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: ">分析好了以后、着重想一下自己的网站的优势、并把优势放大、要想下自己怎么才能去拼的过他、文章数量、文章质量、外链的数量与质量、要想好自己的网站的着手点</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: "><br/></p><h4 style="margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-weight: 400; font-stretch: normal; line-height: 24px; font-family: ">三、挖掘关键词</h4><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px;">开始想好关键词、目标关键词、长尾词等等、这些关键词怎样去布局、修改网站的结构、整理好网站的层次、设置好标题等、做好一些网站要附带的东西、比如百度的一些产品、百度分享百度统计等、我发现这些会对网站有好处的</p>', 1, '', '', '2017-06-19', '0', '0', 'SEO', '1'),
(24, '../upload/17-06-16/13be8a0ecb94c569bd1c4a04d86988b220170613061939_10872.jpg', '年薪百万的运营日志', 17, 'DD博客', '<h2 style="margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-weight: 400; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: ">习惯1：文章编辑规范</h2><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: ">对新媒体从业者来说、SOP（标准作业程序）是每个小编要精心设计的、培养好习惯、才是一名合格小编的开始、这些流程作业会为我们节省时间、提高效率、并且减少错误、在准备微信公众号文章时、小编们要进行：内容编辑、排版编辑、预览审核、推送跟踪等相关步骤、才算真正的完成一次消息推送</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: ">部分小伙伴习惯于将内容从文档复制到公众号编辑器、附上标题和图片就开始在手机上发预览......但有时可能会忘记修改摘要、这样的情况下、微信会抓取前54个字、结果就会很尴尬……因此要做一名合格的运营君、首先要为自己设定一套标准的SOP、并严格执行</p><h2 style="margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-weight: 400; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: ">习惯2：坚持记录运营日志</h2><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px;">运营日志是提升运营能力的秘密武器、要知道、一些运营动作对于用户的影响是长期并缓慢的、有些用户行为的变化也有可能是不经意的一个改变带来的、坚持记录运营日志、可以方便对运营工作进行横向对比和观察</p>', 1, '', '', '2017-06-19', '0', '0', '', '0'),
(25, '../upload/17-06-16/bb2a4284ade3580c088a1f41f1dc410520170607082721_83347.jpg', '开发者的中年危机', 17, 'DD博客', '<p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);">这周、我辞掉了我那份舒适、薪水又高的工作、我之所以会走这一步、是因为在我回顾过去已经取得的成绩之后、我不知道接下来的30年应该做什么</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><h2 style="margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-weight: 400; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Droid Sans&quot;, sans-serif; word-wrap: break-word; color: rgb(51, 51, 51); text-transform: uppercase; white-space: normal; background-color: rgb(255, 255, 255);">那就是中年危机</h2><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);">这里所谓的中年危机指的是、作为一个开发者、你总会到达一个已经做了一段时间并且开始思考下一个选择是什么的阶段、只是能挣到钱再也不够了：你需要额外的动力来继续下去、直到退休</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);">你可以认为自己已经写了足够多的代码、想往上晋升、成为领导者/管理者、为什么不这么做呢?团队需要领导者、管理者和Scrum Masters等、但是没有听上去的那么简单、你需要处理的事情比你认为得更多、但这都是业务的重要组成部分</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);">你可以抓住机遇、成为一名自由顾问、四处旅游并在公司呼叫你寻求帮助的时候为他们解决问题、或更进一步、自己创办机构、承接更大的项目、旨在成为一个可以为其他企业带来完全定制解决方案的一站式商店</p><p><br/></p>', 1, '', '', '2017-06-16', '0', '0', '', ''),
(26, '../upload/17-06-16/b32b67e3f9756e2ec83d8d37465a273820170531053609_89092.jpg', '微信运营的坑', 17, 'DD博客', '<h2 style="margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-weight: 400; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Droid Sans&quot;, sans-serif; word-wrap: break-word; color: rgb(51, 51, 51); text-transform: uppercase; white-space: normal; background-color: rgb(255, 255, 255);">一、企业公众号是不是真的是企业低成本获客的最佳渠道</h2><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);">现在微信公众号都已经成为每个企业的标配、当然这里深度规划的有之、跟风的有之、但不管跟风也好还是专业化策划也好、都是期望微信公众号可以为企业带来用户、而且是低成本的</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; clear: both; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);">这句话对吗？对的！但是放在现在绝对也是一个失误、我们需要老板认识到、任何推广都是需要花费成本的、尤其在产品的初期、因为要花更多的精力去培养用户的习惯、所以用户成本会更高、但是我们的小编也会在老板面前会遇见这样的质问、比如谁谁也是没有花一分钱的哦、怎么会增长那么多粉丝的呢？</p><p style="margin-top: 0px; margin-bottom: 4px; padding: 0px; border: 0px; outline: 0px; font-stretch: normal; font-size: 14px; line-height: 24px; font-family: &quot;Droid serif&quot;, serif; word-wrap: break-word; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);">一般来说、不管任何一个例子、说是没有花钱、但是其吸引用户也绝对是内容、内容其实是运营界非常具有高技术含量的活了、人们说研发技术牛逼让世界变得更智能、但是牛逼的文案也许可以改变一个人的一生、因此、哪些没有花钱就单靠内容吸粉的案例背后都是一群牛逼的文案在起作用、这些牛逼的文案光工资就是大大的开销、他们不是成本吗？</p>', 1, '', '', '2017-06-16', '0', '0', '', ''),
(27, '../upload/17-06-18/5a312f2318aea2484e516e18835016a220170615064005_99033.jpg', 'ANDROID 8.0新特性_安卓8.0改进告别卡慢还更耗电', 17, 'DD博客', '<p><span style="color: rgb(102, 102, 102); font-family: ">一直以来人们都有这样的印象、认为搭载iOS系统的iPhone一定比搭载Android系统的安卓手机流畅、潜移默化中、不少果粉甚至是普通吃瓜群众都形成了这样的思维定式：安卓就是卡、慢的代名词、然而、就是这样一个群众眼中的“卡、慢”的系统、不知不觉间已经走过了第十个年头、这么多年过去了这个观点还成立吗？</span></p><p><span style="color: rgb(102, 102, 102); font-family: ">Android 8.0不久前已经发布了、尽管Android对比iOS似乎有“先天缺陷”、但一直以来谷歌都在不遗余力地提升安卓系统的流畅度、我们不妨来看看谷歌在这方面都做了哪些努力</span></p>', 0, '', '', '2017-06-19', '0', '1', 'android8.0', '');

-- --------------------------------------------------------

--
-- 表的结构 `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkid` int(10) NOT NULL,
  `pid` varchar(10) NOT NULL,
  `users` int(10) NOT NULL,
  `contents` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `notes`
--

INSERT INTO `notes` (`id`, `checkid`, `pid`, `users`, `contents`) VALUES
(1, 1, '8', 1, '这是我的第一个留言');

-- --------------------------------------------------------

--
-- 表的结构 `show`
--

CREATE TABLE IF NOT EXISTS `show` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `con` varchar(30) NOT NULL,
  `img` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `tablename` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `tables`
--

INSERT INTO `tables` (`id`, `pid`, `tablename`) VALUES
(16, 0, '碎碎念'),
(17, 0, '博文');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` char(10) NOT NULL,
  `pass` char(10) NOT NULL,
  `sex` char(10) DEFAULT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `email` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `sex`, `tel`, `email`) VALUES
(1, 'hanxiao', '123', '1', 18035182254, '18035182254@126.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
