-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2020 at 03:23 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweoj`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `des` longtext DEFAULT NULL,
  `aid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `cname`, `des`, `aid`) VALUES
(13, 'TLE Testing Contest', 'Finding Divisors Had Wrong Test Cases in Data Sets . Please Submit It Again .', 1),
(12, 'Testing Contest 3', 'Problem of naughty boys is updated. Check out Description .', 2),
(112, 'balamoy', 'hayhay', 3),
(112, 'balamoy', 'haha', 5),
(112, 'balamoy', 'sss', 6),
(112, 'balamoy', 'ssss', 10);

-- --------------------------------------------------------

--
-- Table structure for table `archieve`
--

CREATE TABLE `archieve` (
  `id` int(11) NOT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `pbdes` longtext DEFAULT NULL,
  `pbauthor` varchar(100) DEFAULT NULL,
  `tc` mediumtext DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `uoutput` longtext DEFAULT NULL,
  `tlimit` double(100,2) DEFAULT 3.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archieve`
--

INSERT INTO `archieve` (`id`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`, `tlimit`) VALUES
(1, 'Trick41', '1->1->2->4->8->?\r\n\r\n1->2 2>4 3->6 4->16 5->10 6->?\r\n\r\n\r\noutput example\r\nx\r\ny\r\n\r\nnewline mendatory**\r\nhaah\r\ns', 'Ranak', 'ab', '16\r\n26\r\n', '', 1.00),
(55, 'Google feeling lucky.', 'Google is one of the most famous Internet search engines which hosts and develops a number of Internetbased\r\nservices and products. On its search engine website, an interesting button â€˜Iâ€™m feeling luckyâ€™\r\nattracts our eyes. This feature could allow the user skip the search result page and goes directly to the\r\nfirst ranked page. Amazing! It saves a lot of time.\r\nThe question is, when one types some keywords and presses â€˜Iâ€™m feeling luckyâ€™ button, which web\r\npage will appear? Google does a lot and comes up with excellent approaches to deal with it. In this\r\nsimplified problem, let us just consider that Google assigns every web page an integer-valued relevance.\r\nThe most related page will be chosen. If there is a tie, all the pages with the highest relevance are\r\npossible to be chosen.\r\nYour task is simple, given 10 web pages and their relevance. Just pick out all the possible candidates\r\nwhich will be served to the user when â€˜Iâ€™m feeling luckyâ€™.\r\nInput\r\nThe input contains multiple test cases. The number of test cases T is in the first line of the input file.\r\nFor each test case, there are 10 lines, describing the web page and the relevance. Each line contains\r\na character string without any blank characters denoting the URL of this web page and an integer\r\nVi denoting the relevance of this web page. The length of the URL is between 1 and 100 inclusively.\r\n(1 â‰¤ Vi â‰¤ 100)\r\nOutput\r\nFor each test case, output several lines which are the URLs of the web pages which are possible to be\r\nchosen. The order of the URLs is the same as the input. Please look at the sample output for further\r\ninformation of output format.\r\n\r\n\r\nSample Input\r\n2\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 10\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nwww.university.edu.cn 9\r\nacm.university.edu.cn 10\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 11\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nacm.university.edu.cn 9\r\nacm.university.edu.cn 10\r\n\r\n\r\nSample Output\r\nCase #1:\r\nwww.alibaba.com\r\nwww.bad.com\r\nacm.university.edu.cn\r\nCase #2:\r\nwww.alibaba.com', 'uva', '2\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 10\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nwww.university.edu.cn 9\r\nacm.university.edu.cn 10\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 11\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nacm.university.edu.cn 9\r\nacm.university.edu.cn 10', 'Case #1:\r\nwww.alibaba.com\r\nwww.bad.com\r\nacm.university.edu.cn\r\nCase #2:\r\nwww.alibaba.com\r\n', '2', 3.00),
(58, 'IP Checking1', 'An IP address is a 32 bit address formatted in the following way\r\n\r\na.b.c.d\r\n\r\nwhere a, b, c, d are integers each ranging from 0 to 255. Now you are given two IP addresses, first one in decimal form and second one in binary form, your task is to find if they are same or not.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 100), denoting the number of test cases.\r\n\r\nEach case starts with two lines. First line contains an IP address in decimal form, and second line contains an IP address in binary form. In binary form, each of the four parts contains 8 digits. Assume that the given addresses are valid.\r\n\r\nOutput\r\nFor each case, print the case number and \"Yes\" if they are same, otherwise print \"No\".\r\n\r\nSample Input\r\n\r\n2\r\n192.168.0.100\r\n11000000.10101000.00000000.11001000\r\n65.254.63.122\r\n01000001.11111110.00111111.01111010\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: No\r\nCase 2: Yes\r\n \r\n\r\nPROBLEM SETTER: JANE ALAM JAN', 'lightoj', '3\r\n80.239.242.53\r\n01010000.11101111.11110010.00110101\r\n118.98.235.40\r\n01000001.11111110.00111111.01111010\r\n141.0.11.253\r\n10001101.00000000.00001011.11111101', 'Case 1: Yes\r\nCase 2: No\r\nCase 3: Yes\r\n', '17wwwwwwwwwwwwwwwwwwwwww', 2.00),
(60, 'Alice And ChessBoard', 'Itâ€™s Sunday afternoon, and Alice is in her room trying to figure out the rules of the game called Chess. She thinks sheâ€™s almost got it, but sheâ€™d like your help.\r\n\r\nAlice has placed a bishop on an empty chessboard. Given the position of the bishop and the positon of another square on the chessboard, Alice would like to know if the bishop can travel to that square in one move or not.\r\n\r\nChess is a game played on an 8*8 rectangular board. The rows of the board are numbered from 1â€¦8 and similarly the columns are numbered from 1â€¦8. (For this problem, you may assume that the rows are numbered from 1 to 8 from top to bottom and the columns are numbered from 1 to 8 from left to right). The bishop occupies a single square on the board (as does every other piece) and it can move any number of squares diagonally, but it cannot travel outside the board. Below is a picture demonstrating the moves of a bishop. The dotted squares are the squares the bishop can travel to in one move.\r\n\r\nlink\r\n\r\nInput\r\n\r\nIn the first line of input, there is a number T (1 â‰¤ T â‰¤ 200) denoting the number of test cases. Each of the next T lines contains the description of the T testcases. Each testcase contains four integers in a single line. The first two integer denotes the row and the column of the position of the bishop respectively and the second two integers denotes the row and the column of the postion of the targeted square respectively. It is guaranteed that the two squares wonâ€™t be the same. And of course, each of these integers will be between 1 and 8.\r\n\r\nOutput\r\n\r\nFor each test case, print â€œYesâ€ (without the quote) in a single line if the bishop can travel to the targeted square in one move. Otherwise print â€œNoâ€ (without the quote) in a single line.\r\n\r\nSample\r\n\r\nInput	\r\n3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2\r\n\r\nOutput\r\n\r\nNo\r\nNo\r\nYes', 'toph', '3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2', 'No\r\nNo\r\nYes\r\n', 'aa', 3.00),
(63, 'Greetings', 'After that the code will select a random problem for you from my problems database based on your previously solved problems, your skills and your weaknesses. But while I was coding for implementing this great idea, I found that, all of my problems are scattered in 2 computers. So, I have to merge them before running my code.\r\n\r\nNow you are given the number of problems in each of the computers, you have to find the total number of problems. You can safely assume that no problem is stored in multiple computers. So, all the problems are distinct.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 125), denoting the number of test cases.\r\n\r\nEach case starts with a line containing two integers a and b. a denotes the number of problems in the first computer and b denotes the number of problems in the second computer. You can safely assume that a and b will be non-negative and not greater than 10.\r\n\r\nOutput\r\nFor each case, print the case number and the total number of problems. See the samples for exact formatting.\r\n\r\nSample Input\r\n2\r\n1 7\r\n9 8\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: 8\r\nCase 2: 17', 'lightoj', '2\r\n1 7\r\n9 8\r\n', 'Case 1: 8\r\nCase 2: 17\r\n', '', 3.00),
(100, 'YFYFYTFTF', ' GFF GF G ', 'RakibulRanak', 'fcef', 'Durjoy means Foga\r\nFoga doesn\'t mean Durjoy\r\nFoga means Vxd', '', 3.00),
(987, 'hvj', 'bbmvh', 'RakibulRanak', 'hfj', 'nbvb', 'aaa', 3.00),
(5444, 'vewgbt3b3', '3thth', 'RakibulRanak', 'gber', '4g5h3', 'gt4h', 3.00),
(5556, 'bdsvrwbbb', 'evt', 'RakibulRanak', 'vb', 'fvgjv', 'gvcj', 3.00),
(44646, 're3trn3', 'hwttrh', 'RakibulRanak', 'rwbe', '3ttt', 'wt', 3.00),
(55557, 'Vxd Foga', 'Sylhet is a division in Bangladesh mostly famous for tea gardens and other tourist attractions. MoulviBazar is a southeastern district of Sylhet division.\r\nOnce Alex went to Sylhet and met a person from MoulviBazar. When Alex asked him his name,he said it was \"Durjoy\".But one of Durjoy\'s friends said that it should be \"Foga\" and another one mentioned that Foga\'s are vxd\'s,so it should be \"Vxd\" .So,Alex was confused about the name of that MoulviBazar guy.Alex wanted to make himself clear. He was an investigator in his earlier life.As Durjoy and his friends weren\'t helping him in that regard ,Alex went to Moulovibazar to look for \"Foga\" .He was asking people about \"Foga\" and everyone was saying,\"it\'s me.What\'s the matter?\" He found everyone in MoulviBazar saying himself \"Foga\" .Then he smiled and said , \"All of you are vxd\'s. Am I right?? \" Alex found himself in the hospital later.Now he is more confused than ever and wants you to write a program for him to make himself calm.\r\n\r\nInput\r\n\r\n1st line contains an integer t denoting the number of test cases.For each test case there will be 4 lines of input.1st line contains two String N and D denoting the name and district of a person.each of the next 3 lines will contain two strings A,B ( A,B =N/Foga/Vxd )\r\n\r\nOutput\r\n\r\nAlex hopes you know the relation between A and B. For each line of input ,print two lines of output showing the relation between them as follows:\r\n\r\nA means/doesn\'t mean B\r\nB means/doesn\'t mean A\r\n\r\n\r\n\r\nSample Input\r\n2\r\nDurjoy MouloviBazar\r\nDurjoy Foga\r\nFoga Vxd\r\nVxd Durjoy\r\nShifat Barishal\r\nFoga Vxd\r\nShifat Foga\r\nVxd Shifat\r\n\r\nSample Output\r\nDurjoy means Foga\r\nFoga doesn\'t mean Durjoy\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nVxd doesn\'t mean Durjoy\r\nDurjoy means Vxd\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nShifat doesn\'t mean Foga\r\nFoga doesn\'t mean Shifat\r\nVxd doesn\'t mean Shifat\r\nShifat doesn\'t mean Vxd', 'RakibulRanak', '2\r\nDurjoy MouloviBazar\r\nDurjoy Foga\r\nFoga Vxd\r\nVxd Durjoy\r\nShifat Barishal\r\nFoga Vxd\r\nShifat Foga\r\nVxd Shifat', 'Durjoy means Foga\r\nFoga doesn\'t mean Durjoy\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nVxd doesn\'t mean Durjoy\r\nDurjoy means Vxd\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nShifat doesn\'t mean Foga\r\nFoga doesn\'t mean Shifat\r\nVxd doesn\'t mean Shifat\r\nShifat doesn\'t mean Vxd\r\n', 'Durjoy means Foga\nFoga doesnt mean Durjoy\nFoga means Vxd\nVxd doesnt mean Foga\nVxd doesnt mean Durjoy\nDurjoy means Vxd\nFoga means Vxd\nVxd doesnt mean Foga\nShifat doesnt mean Foga\nFoga doesnt mean Shifat\nVxd doesnt mean Shifat\nShifat doesnt mean Vxd\n', 1.00),
(55558, 'testkori', 'hello Ranaks Brother', 'RakibulRanak', 'qx', 'sqx', '', 1.00),
(55559, 'testkori2', 'hb hj', 'RakibulRanak', 'v jh', 'hh', '', 2.00),
(55560, 'testkori3', 'Ranak\'s bro', 'RakibulRanak', 'v jh', 'hh', '', 2.00),
(55561, '4g3q', 'wqg', 'dvs', 'wfw', 'wef', '', 1.00),
(55562, 'hudai0', 'vjhvj\'jn\'', 'RakibulRanak', 'ss', 'ss', '', 1.00),
(55563, 'bala', 'cShcbs3bjcjSb says \"hi\" nnm', 'RakibulRanak', '2\r\n252', 'efwe', 'efwe', 1.00),
(55568, 'rakib', 'rwgreg', 'rgw', 'rwr', 'cwdc', '', 1.00),
(55573, '3', 's', 'dqef', 'deq', 'rqeg', '', 1.00),
(55574, 'test1', 'output5', 'RakibulRanak', 's', 's', '', 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `submit_name` varchar(100) DEFAULT NULL,
  `source_code` longtext DEFAULT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`submit_name`, `source_code`, `id`) VALUES
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<2<<endl;\r\n}', 362),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<3l;\r\n}', 363),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<2;\r\n}', 364),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<2<<endl;\r\n}', 365),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<2;\r\n}', 366),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<2<<endl;\r\n}', 367),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<2;\r\n}', 368),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<3l;\r\n}', 369),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 370),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 371),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 372),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 373),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 374),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 375),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 376),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 377),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 378),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 379),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 380),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 381),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 382),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 383),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 384),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 385),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 386),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 387),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 388),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 389),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 390),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 391),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 392),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 393),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 394),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 395),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 396),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 397),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 398),
('Ranak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<3;\r\n}', 399),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 400),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 401),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 402),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 403),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 404),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 405),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 406),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 407),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 408),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 409),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 410),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 411),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{  cout<<\"3\";\r\n}', 412),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<3;\r\n}', 413),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<3;\r\n}', 414),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 415),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 416),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 417),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 418),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 419),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 420),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 421),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 422),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 423),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 424),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 425),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 426),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 427),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<4;\r\n}', 428),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 429),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2<<endl\r\n}', 430),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2<<endl;\r\n}', 431);

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `submit_name` varchar(50) DEFAULT NULL,
  `source_code` longtext DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`submit_name`, `source_code`, `id`) VALUES
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<16<<endl<<36<<endl;\r\n}', 323),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<16<<endl<<36<<endl;\r\n}', 324),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<16<<endl<<36<<endl;\r\n}', 325),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<16<<endl<<36<<endl;\r\n}', 326),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<16<<endl<<37<<endl;\r\n}', 327),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<16<<endl<<37<<endl;\r\n}', 328),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<16<<endl<<37<<endl;\r\n}', 329),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<17;\r\n}', 330),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"17\";\r\n}', 331),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"17ww\";\r\n}', 332),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"17wwww\";\r\n}', 333),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"17wwwwwww\";\r\n}', 334),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"17wwwwwwwwww\";\r\n}', 335),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 336),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 337),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nstring a;\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 338),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nstring a;\r\na=\"aaa\";\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 339),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nstring a;\r\na=\"aaa\";\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 340),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nstring a;\r\na=\"aaa\";\r\ncout<<a<<endl;\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 341),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nstring a;\r\na=\"aaa\";\r\ncout<<a<<endl;\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 342),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nstring a;\r\na=\"aaa\";\r\ncout<<a<<endl;\r\n	cout<<\"17wwwwwwwwwwwwwwwwwwwwww\";\r\n}', 343),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"hi\"<<endl;\r\n}', 344),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"aaaaaaaaaa\";\r\n}', 345),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"aaaaaaaaaa\";\r\n}', 346),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"bbbb\";\r\n}', 348),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	string a=\"aaaaaaaa\";\r\n        cout<<a;\r\n}', 349),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	string a=\"aaaaaaaa\";\r\n        cout<<a;\r\n}', 350),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	string a=\"aaaaaaaa\";\r\n        cout<<a;\r\n}', 351),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	string a=\"aaaaaaaa\";\r\n        cout<<a;\r\n}', 352),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	string a=\"aaaaaaaa\";\r\n        cout<<a;\r\n}', 353),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<string(8,48);\r\n}', 354),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	//cout<<string(8,\nz\n);\r\ncout<<\"hi\"<<endl;\r\n}', 355),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<string(8,\nz\n);\r\n//cout<<\"hi\"<<endl;\r\n}', 356),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<string(8,\nz\n);\r\n//cout<<\"hi\"<<endl;\r\n}', 357),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<string(8,\nz\n);\r\n//cout<<\"hi\"<<endl;\r\n}', 358),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<string(8,\nz\n);\r\n//cout<<\"hi\"<<endl;\r\n}', 359),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<string(8,\nz\n);\r\n//cout<<\"hi\"<<endl;\r\n}', 360),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<string(8,\nz\n);\r\n//cout<<\"hi\"<<endl;\r\n}', 361),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"hi\";\r\n}', 362),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"gi\";\r\n}', 363),
('RakibulRanak', '#include <bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n	cout<<\"gi\";\r\n}', 364),
('ranak', 'ranak', 365),
('ranak', 'ranak', 366),
('ranak', 'ranak', 367),
('ranak', 'ranak', 368),
('$us', '$source', 369),
('$us', '$source', 370),
('$us', '$source', 371),
('$us', '$source', 372),
('$us', '$source', 373),
('$us', '$source', 374),
('$us', '$source', 375),
('RakibulRanak', 'scs', 376),
('RakibulRanak', 'ijn jm ko', 377),
('$us', '$source', 378),
('$us', '$source', 379),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int n;\r\n    cin >> n;\r\n    while(n--)\r\n    {\r\n        bool mou = false;\r\n        string name,area,foga,vxd,name1,str1,str2,str3,str4;\r\n        cin >> name >> area;\r\n        if(area == \"MouloviBazar\")\r\n            mou = true;\r\n        cin >> name1 >> vxd >> str1 >> str2 >> str3 >> str4;\r\n        cout << name1 << \" means \" << vxd << endl;\r\n        cout << vxd << \" doesnt mean \" << name1 << endl;\r\n        if(mou)\r\n        {\r\n            cout << str1 << \" means \" << str2 << endl;\r\n            cout << str2 << \" doesnt mean \" << str1 << endl;\r\n            cout << str3 << \" doesnt mean \" << str4 << endl;\r\n            cout << str4 << \" means \" << str3 << endl;\r\n        }\r\n        else\r\n        {\r\n            cout << str1 << \" doesnt mean \" << str2 << endl;\r\n            cout << str2 << \" doesnt mean \" << str1 << endl;\r\n            cout << str3 << \" doesnt mean \" << str4 << endl;\r\n            cout << str4 << \" doesnt mean \" << str3 << endl;\r\n        }\r\n    }\r\n    return 0;\r\n}\r\n', 380),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int n;\r\n    cin >> n;\r\n    while(n--)\r\n    {\r\n        bool mou = false;\r\n        string name,area,foga,vxd,name1,str1,str2,str3,str4;\r\n        cin >> name >> area;\r\n        if(area == \"MouloviBazar\")\r\n            mou = true;\r\n        cin >> name1 >> vxd >> str1 >> str2 >> str3 >> str4;\r\n        cout << name1 << \" means \" << vxd << endl;\r\n        cout << vxd << \" doesnt mean \" << name1 << endl;\r\n        if(mou)\r\n        {\r\n            cout << str1 << \" means \" << str2 << endl;\r\n            cout << str2 << \" doesnt mean \" << str1 << endl;\r\n            cout << str3 << \" doesnt mean \" << str4 << endl;\r\n            cout << str4 << \" means \" << str3 << endl;\r\n        }\r\n        else\r\n        {\r\n            cout << str1 << \" doesnt mean \" << str2 << endl;\r\n            cout << str2 << \" doesnt mean \" << str1 << endl;\r\n            cout << str3 << \" doesnt mean \" << str4 << endl;\r\n            cout << str4 << \" doesnt mean \" << str3 << endl;\r\n        }\r\n    }\r\n    return 0;\r\n}\r\n', 381),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int n;\r\n    cin >> n;\r\n    while(n--)\r\n    {\r\n        bool mou = false;\r\n        string name,area,foga,vxd,name1,str1,str2,str3,str4;\r\n        cin >> name >> area;\r\n        if(area == \"MouloviBazar\")\r\n            mou = true;\r\n        cin >> name1 >> vxd >> str1 >> str2 >> str3 >> str4;\r\n        cout << name1 << \" means \" << vxd << endl;\r\n        cout << vxd << \" doesnt mean \" << name1 << endl;\r\n        if(mou)\r\n        {\r\n            cout << str1 << \" means \" << str2 << endl;\r\n            cout << str2 << \" doesn\'t mean \" << str1 << endl;\r\n            cout << str3 << \" doesn\'t mean \" << str4 << endl;\r\n            cout << str4 << \" means \" << str3 << endl;\r\n        }\r\n        else\r\n        {\r\n            cout << str1 << \" doesn\'t mean \" << str2 << endl;\r\n            cout << str2 << \" doesnt mean \" << str1 << endl;\r\n            cout << str3 << \" doesnt mean \" << str4 << endl;\r\n            cout << str4 << \" doesnt mean \" << str3 << endl;\r\n        }\r\n    }\r\n    return 0;\r\n}\r\n', 382),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int n;\r\n    cin >> n;\r\n    while(n--)\r\n    {\r\n        bool mou = false;\r\n        string name,area,foga,vxd,name1,str1,str2,str3,str4;\r\n        cin >> name >> area;\r\n        if(area == \"MouloviBazar\")\r\n            mou = true;\r\n        cin >> name1 >> vxd >> str1 >> str2 >> str3 >> str4;\r\n        cout << name1 << \" means \" << vxd << endl;\r\n        cout << vxd << \" doesn\'t mean \" << name1 << endl;\r\n        if(mou)\r\n        {\r\n            cout << str1 << \" means \" << str2 << endl;\r\n            cout << str2 << \" doesn\'t mean \" << str1 << endl;\r\n            cout << str3 << \" doesn\'t mean \" << str4 << endl;\r\n            cout << str4 << \" means \" << str3 << endl;\r\n        }\r\n        else\r\n        {\r\n            cout << str1 << \" doesn\'t mean \" << str2 << endl;\r\n            cout << str2 << \" doesn\'t mean \" << str1 << endl;\r\n            cout << str3 << \" doesn\'t mean \" << str4 << endl;\r\n            cout << str4 << \" doesn\'t mean \" << str3 << endl;\r\n        }\r\n    }\r\n    return 0;\r\n}\r\n', 383),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int n;\r\n    cin >> n;\r\n    while(n--)\r\n    {\r\n        bool mou = false;\r\n        string name,area,foga,vxd,name1,str1,str2,str3,str4;\r\n        cin >> name >> area;\r\n        if(area == \"MouloviBazar\")\r\n            mou = true;\r\n        cin >> name1 >> vxd >> str1 >> str2 >> str3 >> str4;\r\n        cout << name1 << \" means \" << vxd << endl;\r\n        cout << vxd << \" doesn\'t mean \" << name1 << endl;\r\n        if(mou)\r\n        {\r\n            cout << str1 << \" means \" << str2 << endl;\r\n            cout << str2 << \" doesn\'t mean \" << str1 << endl;\r\n            cout << str3 << \" doesn\'t mean \" << str4 << endl;\r\n            cout << str4 << \" means \" << str3 << endl;\r\n        }\r\n        else\r\n        {\r\n            cout << str1 << \" doesn\'t mean \" << str2 << endl;\r\n            cout << str2 << \" doesn\'t mean \" << str1 << endl;\r\n            cout << str3 << \" doesn\'t mean \" << str4 << endl;\r\n            cout << str4 << \" doesn\'t mean \" << str3 << endl;\r\n        }\r\n    }\r\n    return 0;\r\n}', 384),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int n;\r\n    cin >> n;\r\n    while(n--)\r\n    {\r\n        bool mou = false;\r\n        string name,area,foga,vxd,name1,str1,str2,str3,str4;\r\n        cin >> name >> area;\r\n        if(area == \"MouloviBazar\")\r\n            mou = true;\r\n        cin >> name1 >> vxd >> str1 >> str2 >> str3 >> str4;\r\n        cout << name1 << \" means \" << vxd << endl;\r\n        cout << vxd << \" doesn\'t mean \" << name1 << endl;\r\n        if(mou)\r\n        {\r\n            cout << str1 << \" means \" << str2 << endl;\r\n            cout << str2 << \" doesn\'t mean \" << str1 << endl;\r\n            cout << str3 << \" doesn\'t mean \" << str4 << endl;\r\n            cout << str4 << \" means \" << str3 << endl;\r\n        }\r\n        else\r\n        {\r\n            cout << str1 << \" doesn\'t mean \" << str2 << endl;\r\n            cout << str2 << \" doesn\'t mean \" << str1 << endl;\r\n            cout << str3 << \" doesn\'t mean \" << str4 << endl;\r\n            cout << str4 << \" doesn\'t mean \" << str3 << endl;\r\n        }\r\n    }\r\n    return 0;\r\n}', 385),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"efwe\"<<endl;\r\n}', 386),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"efwe\"l;\r\n}', 387),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"efwe\";\r\n}', 388),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"can\'t\"<<endl;\r\n}', 389),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"can\'t\"<<endl;\r\n}', 390),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"can\'t\"<<endl;\r\n}', 391),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"can\'t\"<<endl;\r\n}', 392),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"can\'t\n\");\r\n}', 393),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"can\'t\n\");\r\n}', 394),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"16\n36\n\");\r\n}', 395),
('Maraz Mia', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\ncout<<\"16\"<<endl<<\"35\"<<endl;\r\n}', 396),
('Maraz Mia', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\ncout<<\"16\"<<endl<<\"36\"<<endl;\r\n}', 397),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 398),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 399),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 400),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 401),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 402),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 403),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 404),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 405),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 406),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 407),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 408),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 409),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 410),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 411),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 412),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 413),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 414),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 415),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 416),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 417),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 418),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 419),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 420),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 421),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 422),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 423),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 424),
('RakibulRanak', 'header(\"Cache-Control: no cache\");\r\n	session_cache_limiter(\"private_no_expire\");', 425),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 426),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 427),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 428),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 429),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 430),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 431),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 432),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 433),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 434),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 435),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 436),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 437),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 438),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 439),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 440),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 441),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 442),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 443),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl;\r\n}', 444),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 445),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 446),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 447),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 448),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 449),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 450),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 451),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 452),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 453),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 454),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 455),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"h\"<<endl\r\n}', 456),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2<<endl\r\n}', 457),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2<<endl\r\n}', 458),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2<<endl\r\n}', 459),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0<<endl;\r\n}', 460),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0<<endl;\r\n}', 461),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0<<endl;\r\n}', 462),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0;\r\n}', 463),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl;\r\n}', 464),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl\r\n}', 465),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl\r\n}', 466),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl;\r\n}', 467),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl\r\n}', 468),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl\r\n}', 469),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl\r\n}', 470),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"hi\"<<endl\r\n}', 471),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0;\r\n}', 472),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 473),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 474),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 475),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 476),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 477),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 478),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 479),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 480),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 481),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 482),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 483),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 484),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 485),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 486),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 487),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 488),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 489),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 490),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 491),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 492),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 493),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 494),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 495),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 496),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 497),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 498),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 499),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 500),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 501),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 502),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 503),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 504),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 505),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 506),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 507),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 508),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2;\r\n}', 509),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2;\r\n}', 510),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2;\r\n}', 511),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2;\r\n}', 512),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 513),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 514),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 515),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 516),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 517),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2/0\r\n}', 518),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 519),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 520),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2\r\n}', 521),
('bala', 'sdfghjhasdf', 522),
('bala', 'sdfghjhasdf', 523),
('bala', 'sdfghjhasdf', 524),
('bala', 'sdfghjhasdf', 525),
('bala', 'sdfghjhasdf', 526),
('bala', 'sdfghjhasdf', 527),
('bala', 'dfxghjfwertyujhgfdsadcvbn', 528),
('bala', 'dfxghjfwertyujhgfdsadcvbn', 529),
('bala', 'dfxghjfwertyujhgfdsadcvbn', 530),
('bala', 'dfxghjfwertyujhgfdsadcvbn', 531),
('bala', 'dfxghjfwertyujhgfdsadcvbn', 532),
('bala', 'dfxghjfwertyujhgfdsadcvbn', 533),
('bala', 'sdfvbn', 534),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nint a;\r\ncin>>a;\r\ncout<<a;\r\n}', 535);

-- --------------------------------------------------------

--
-- Table structure for table `element`
--

CREATE TABLE `element` (
  `id` int(11) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `pbname` varchar(400) DEFAULT NULL,
  `pbdes` longtext DEFAULT NULL,
  `pbauthor` varchar(100) DEFAULT NULL,
  `tc` longtext DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `uoutput` longtext DEFAULT NULL,
  `pbid` int(12) NOT NULL,
  `tlimit` double(100,2) DEFAULT 3.00,
  `sts` tinyint(1) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `element`
--

INSERT INTO `element` (`id`, `cname`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`, `pbid`, `tlimit`, `sts`) VALUES
(890, 'checking', 'Ranak1', 'ece', 'cdwcdw', 'xqs', 'acd', '', 42, 1.00, 1),
(0, 'contest0', 'Ranak', 'cqe', 'RakibulRanak', 'a', 'qc', '', 43, 1.00, 2),
(1, 'contest4', 'Ranakvai', 'cdw', 'RakibulRanak', 'vf', 'vfe', '', 44, 1.00, 2),
(555, 'contest6', 'fyugiyg', 'gygku', 'dvs', 'rt', 'lj', '', 45, 1.00, 2),
(556, 'contest7', 'gjhjv', 'hfcj', 'RakibulRanak', 'q', 'qc', '', 46, 1.00, 2),
(557, 'contest8', 'Ranak', 'cg', 'RakibulRanak', 'wef', 'we', '', 47, 1.00, 2),
(558, 'contest9', 'wdqd', 'wdcwcd', 'wdc', 'wdc', 'c s', '', 48, 1.00, 2),
(558, 'contest9', 'wdqd', 'wdcwcd', 'wdc', 'wdc', 'c s', '', 49, 1.00, 2),
(112, 'balamoy', 'aa', 'aaaax', 'CA', 'a', 'a3', '2\n', 64, 1.00, 1),
(555, 'contest60', '1', 's', 'dqef', 'deq', 'rqeg', '', 65, 1.00, 1),
(555, 'contest60', '2', 's', 'dqef', 'deq', 'rqeg', '', 66, 1.00, 1),
(555, 'contest60', '3', 's', 'dqef', 'deq', 'rqeg', '', 67, 1.00, 1),
(555, 'contest60', 'Ranak12', 'd', 'deq', 'deq', 'deq', '', 70, 1.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `exdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `des`, `exdate`) VALUES
(2, 'Eid mubarak', '2020-01-28'),
(3, 'contest cancelled', '2020-01-24'),
(11, 'hayhay', '2020-01-24'),
(13, 'qc', '2020-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `rapl_oj_contest`
--

CREATE TABLE `rapl_oj_contest` (
  `id` int(11) NOT NULL,
  `cname` varchar(4000) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `date_on` date DEFAULT NULL,
  `owner` varchar(100) DEFAULT 'shawon'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rapl_oj_contest`
--

INSERT INTO `rapl_oj_contest` (`id`, `cname`, `start_at`, `end_at`, `date_on`, `owner`) VALUES
(0, 'contest0', '2019-10-24 12:45:32', '2019-10-24 12:50:53', '2019-10-24', 'RakibulRanak'),
(1, 'contest4', '2019-10-24 18:15:20', '2019-10-24 18:20:43', '2019-10-24', 'RakibulRanak'),
(3, 'ncpc_sust', '2016-10-08 03:00:00', '2016-10-08 07:00:00', '2016-10-08', 'RakibulRanak'),
(4, 'ncpc 2016', '2016-10-07 22:00:00', '2016-10-07 00:00:00', '2016-10-07', 'shawon'),
(5, 'Toph Contest 2016', '2016-10-09 01:00:00', '2016-10-09 02:00:00', '2016-10-09', 'shawon'),
(6, 'Toph Contest 2', '2016-10-10 22:00:00', '2016-10-10 01:00:00', '2016-10-10', 'shawon'),
(7, 'RUET Analytical Lab Contest', '2016-10-27 20:00:00', '2016-10-27 22:00:00', '2016-10-27', 'shawon'),
(8, 'RAPL Contest 2', '2016-10-28 20:00:00', '2016-10-28 22:00:00', '2016-10-28', 'shawon'),
(111, 'contest1', '2019-10-19 03:30:00', '2019-10-19 05:15:00', '2017-06-19', 'RakibulRanak'),
(112, 'balamoy', '2020-01-18 21:40:07', '2020-01-18 22:00:22', '2020-01-18', 'RakibulRanak'),
(127, 'Bokachoda emon', '2019-08-31 16:00:07', '2019-08-31 16:20:07', '2019-08-31', 'RakibulRanak'),
(191, 'contest1', '2019-10-19 03:30:00', '2019-10-19 05:15:00', '2017-06-19', 'RakibulRanak'),
(192, 'contest1', '2019-10-19 03:30:00', '2019-10-19 05:15:00', '2017-06-19', 'RakibulRanak'),
(555, 'contest60', '2019-10-25 15:10:56', '2019-10-26 15:10:09', '2019-10-25', 'RakibulRanak'),
(557, 'contest8', '2019-10-25 15:35:49', '2019-10-25 15:40:00', '2019-10-25', 'RakibulRanak'),
(890, 'checking', '2019-09-14 14:00:05', '2019-09-14 14:30:19', '2019-09-14', 'RakibulRanak'),
(1111, 'Check', '2019-08-31 04:15:23', '2019-08-31 04:25:45', '2019-08-31', 'RakibulRanak');

-- --------------------------------------------------------

--
-- Table structure for table `solve`
--

CREATE TABLE `solve` (
  `sname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `solved` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `sid` int(100) NOT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `point` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`sid`, `sname`, `verdict`, `pbname`, `cid`, `status`, `point`) VALUES
(362, 'Ranak', 'Wrong Answer', 'a', 112, 0, '-5.00'),
(363, 'Ranak', 'Accepted', 'b', 112, 1, '193.89'),
(364, '1', 'Accepted', 'a', 112, 1, '181.89'),
(366, '2', 'Accepted', 'a', 112, 1, '169.56'),
(367, '2', 'Wrong Answer', 'b', 112, 0, '-5.00'),
(368, '3', 'Accepted', 'a', 112, 1, '151.78'),
(371, '1', 'Accepted', 'b', 112, 1, '161.41'),
(411, '3', 'Accepted', 'b', 112, 1, '66.67'),
(415, '3', 'Accepted', 'c', 112, 1, '89.95'),
(417, '3', 'Wrong Answer', 'b', 112, 0, '-5.00'),
(418, '3', 'Wrong Answer', 'b', 112, 0, '-5.00'),
(419, '3', 'Wrong Answer', 'b', 112, 0, '-5.00'),
(431, '1', 'Wrong Answer', 'aa', 112, 0, '-5.00');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbname` varchar(500) DEFAULT NULL,
  `time` float(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`sid`, `sname`, `verdict`, `pbname`, `time`) VALUES
(323, 'RakibulRanak', 'Accepted', 'Trick', 0.00),
(324, 'RakibulRanak', 'Accepted', 'Trick', 0.00),
(325, 'RakibulRanak', 'Accepted', 'Trick', 0.00),
(326, 'RakibulRanak', 'Accepted', 'Trick', 0.00),
(327, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(328, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(329, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(330, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(331, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(332, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(333, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(334, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(335, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(336, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(337, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(338, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(339, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00),
(340, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(341, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(342, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(343, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(344, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(345, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(346, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(348, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(349, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(356, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(359, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(360, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(361, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(362, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(363, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(364, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(365, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(366, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(367, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(368, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(369, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(370, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(371, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(372, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(374, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(375, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(376, 'RakibulRanak', 'Compilation Error', 'Trick', 0.00),
(377, 'RakibulRanak', 'Compilation Error', 'Trick', 0.00),
(378, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.02),
(379, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.00),
(380, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.00),
(381, 'emonnn', 'Accepted', 'Vxd Foga', 0.00),
(382, 'RakibulRanak', 'Wrong Answer', 'Vxd Foga', 0.00),
(383, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.00),
(384, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.01),
(385, 'emonnn', 'Accepted', 'Vxd Foga', 0.00),
(386, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00),
(388, 'RakibulRanak', 'Accepted', 'bala', 0.00),
(389, 'RakibulRanak', 'Wrong Answer', 'bala', 0.02),
(390, 'RakibulRanak', 'Wrong Answer', 'bala', 0.01),
(391, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00),
(392, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00),
(393, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00),
(394, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00),
(395, 'RakibulRanak', 'Accepted', 'Trick', 0.00),
(396, 'Maraz Mia', 'Wrong Answer', 'Trick', 0.00),
(397, 'Maraz Mia', 'Accepted', 'Trick', 0.00),
(399, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.01),
(400, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(401, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(402, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(403, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(404, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(406, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(407, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(408, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.01),
(409, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(410, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(411, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(412, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(413, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(414, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(421, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(422, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(423, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(424, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(425, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00),
(426, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00),
(511, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00),
(516, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00),
(517, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00),
(519, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00),
(520, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00),
(535, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.01);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `pass` varchar(40) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'student',
  `email` varchar(100) NOT NULL DEFAULT '',
  `photo` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `pass`, `status`, `email`, `photo`) VALUES
('', '202cb962ac59075b964b07152d234b70', 'Developer', 'rakibulhasanranak123123@gmail.com', 0x4453435f303635392e4a5047),
('1', 'c4ca4238a0b923820dcc509a6f75849b', 'user', '12@gmail.com', 0x53637265656e73686f742066726f6d20323031392d31302d30382031382d32362d34352e706e67),
('2', 'c81e728d9d4c2f636f067f89cc14862c', 'user', '2@gmail.com', NULL),
('3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'user', '3@gmail.com', NULL),
('abala', '9215d2e245c38d12ac26f46559b1ebe1', 'user', 'abala@gmail.com', NULL),
('bala', '81dc9bdb52d04dc20036dbd8313ed055', 'Teacher', 'dipubala466@gmail.com', 0x37383637323432325f323537393330393335353435313236305f343430383139383339363435323533363332305f6e2e6a7067),
('bla', 'df5ea29924d39c3be8785734f13169c6', 'user', 'blabla@gmail.com', ''),
('Dipu Bala', '2c216b1ba5e33a27eb6d3df7de7f8c36', 'user', 'dipubala466@gmail.com', ''),
('emonnn', '594f803b380a41396ed63dca39503542', 'user', 'emon.swe.sust@gmail.com', ''),
('hfcgjch', '89243631b6a69884c9d11f923f5d1517', 'user', 'rakibul@gmail.com', ''),
('Maraz Mia', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'maraj262000@gmail.com', 0x746573742e6a7067),
('Pulock', 'f3c4571f3fe5108b1176c6ee6eb09908', 'user', 'pulockkamol50@gmail.com', ''),
('RakibulRa', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'khairgyuykh@vvh', ''),
('RakibulRanak', '202cb962ac59075b964b07152d234b70', 'Developer', 'rakibulhasanranak100@gmail.com', 0x38323339313835345f3132343039343938393038323834355f383231383635353034303239303638343932385f6e2e6a7067),
('RakibulRanak05', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'rakaaaibul2@gmail.com', NULL),
('RakibulRanak1111111111111', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'abc@abc.com', NULL),
('RakibulRanak2', 'bb4aba0633e187d42afb56ac43d605af', 'Teacher', 'rakibul2@gmail.com', 0x4453435f303635372e4a5047),
('RakibulRanak3', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'rakibulhasanranak3@gmail.com', 0x4453435f303636322e4a5047),
('RakibulRanakdd', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'dipuddbala466@gmail.com', NULL),
('Ranak', '202cb962ac59075b964b07152d234b70', 'user', '123@gmail.com', NULL),
('rrr', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'rrr@gmail.com', 0x4453435f303635392e4a5047),
('rumi', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'rumi@gmail.com', ''),
('shaswata56', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'shaswata56@gmail.com', ''),
('Souhardya Saha', '57b363f2e3ffdc33a578fe750af1aec7', 'user', 'souhardya24@student.sust.edu', ''),
('toph', '83f5c3ad94b1b97af822d643d1e83281', 'user', 'aq@gmail.com', NULL),
('xyz', 'd16fb36f0911f878998c136191af705e', 'Problem Setter', 'xyz@gmail.com', 0x4453435f303636392e4a5047);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `archieve`
--
ALTER TABLE `archieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`pbid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rapl_oj_contest`
--
ALTER TABLE `rapl_oj_contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `aid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `archieve`
--
ALTER TABLE `archieve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55575;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT for table `element`
--
ALTER TABLE `element`
  MODIFY `pbid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
