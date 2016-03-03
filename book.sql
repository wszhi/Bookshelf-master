CREATE DATABASE book DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use book;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bookinfo`
-- ----------------------------
DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `bookurl` varchar(500) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `introduce` varchar(10000) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookinfo
-- ----------------------------
INSERT INTO `bookinfo` VALUES ('15', 'http://api.douban.com/v2/book/1024981', '玻利瓦尔', '[\"舒 风\",\"文 峰\"]', '内容提要本书是人物传记故事，记述了南美“解放者”西蒙・玻利瓦尔充满传奇色彩的一生。玻利瓦尔出生于富豪之家，很早就成了孤儿。他青年时期目睹西班牙南美殖民地的黑暗统治，决心终身奉献于南美洲的解放事业。他带领爱国军，出生入死，几经挫折，终于解放了南美洲。他为南美洲的民族民主革命指明了方向，在南美以至世界都产生了广泛而深刻的影响。', '9.30', 'https://img3.doubanio.com/mpic/s1017320.jpg');
INSERT INTO `bookinfo` VALUES ('16', 'http://api.douban.com/v2/book/24843780', 'ハッピ－トラブル', '[\"風\"]', '実家ののっぴきならない事情で、仕送りも大学の学費ももらえなくなった姫野蓬。このままじゃ休学もやむなし、いや、それどころか日々の生活でさえ…と悩む彼女に紹介されたのは、とある人の夕食作りのバイトだった。ところが、その雇い主、柊崎圭は、女性が近くにいるだけで気分が悪くなってしまうという特異体質の持ち主。そこで、蓬は高校生の男の子に変装してバイトをすることに。ところが、柊崎に気に入られて、同居する羽目になってしまい―イケメン御曹司とのあたふた同居ラブストーリー。', 'A$ 28.20', 'https://img1.doubanio.com/mpic/s26815068.jpg');
INSERT INTO `bookinfo` VALUES ('17', 'http://api.douban.com/v2/book/26678611', '円周率を計算した男', '[\"鳴海 風\"]', '', 'JPY 1944', 'https://img3.doubanio.com/mpic/s28354771.jpg');
INSERT INTO `bookinfo` VALUES ('18', 'http://api.douban.com/v2/book/3177087', '风玫瑰', '[\"沧月\"]', '“这就是我们难以摆脱的诅咒么？凡是我们身边的人，都会遭到不幸；凡是我们走过的地方，都会流出无数的血；我们终身都不会得到我们想要的——哪怕身在大海也喝不到一滴水；哪怕被无数人所爱也会孤独而死。”战和爱，毒与策，背叛或救赎……她对爱情已然绝望，后宫里的骑士往何处驰骋？这就是我们毕生无法摆脱的诅咒吗？凡是我们身边的人，都会遭到不幸，凡是我们经过的地方，都会流出无数的血，我们终身都不会得到我们想要的，哪怕身在大海也喝不到一滴水，哪怕被无数人所爱也会孤独而死。', '25.00元', 'https://img3.doubanio.com/mpic/s3229840.jpg');
INSERT INTO `bookinfo` VALUES ('19', 'http://api.douban.com/v2/book/4264027', '一瞬化作风1', '[\"[日]佐藤多佳子\"]', '一个是傻乎乎只能在奔跑中找到自我的新二；一个是闪烁着光芒，被誉为足坛天才的健一；还有一个是带着轻蔑微笑拥有最美丽速度的连。是死党？是战友？还是对手？他们追着对方的背影，勇往直前。而他们的友谊，则在青春的跑道上化作转瞬即逝的轻风。训练时的辛苦，比赛前夕的紧张，站在起跑点上的未知与等待，一切感受都被深入田径现场四年巨细靡遗观察每一个瞬间的作者准确地描述出来。它会让你的呼吸与之同步，会还原你最单纯的感动与快乐，会让你想起《灌篮高手》，更重要的是，每一个看到结局的人都会哭！', '18.00', 'https://img1.doubanio.com/mpic/s4263492.jpg');
INSERT INTO `bookinfo` VALUES ('20', 'http://api.douban.com/v2/book/1123614', '作文高手/中学生快乐学作文丛书', '[\"黄政海\",\"杰 风\"]', '本书介绍中学生的作文，包括“与心同存”、“生命之爱”、“尺素寸心”、“标语者说”、“旷世奇缘”等共170篇左右的文章，每篇文章后面都有富有创意的评语并对写作技巧都作了要求。适合中学生阅读。', '24.80', 'https://img3.doubanio.com/mpic/s1145685.jpg');
