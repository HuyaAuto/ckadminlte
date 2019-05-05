-- MySQL dump 10.13  Distrib 5.7.10, for osx10.9 (x86_64)
--
-- Host: localhost    Database: dydb
-- ------------------------------------------------------
-- Server version	5.7.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dydb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dydb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dydb`;

--
-- Table structure for table `cktb`
--

DROP TABLE IF EXISTS `cktb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cktb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nickname` char(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `regdate` int(10) unsigned NOT NULL COMMENT '注册时间',
  `lastdate` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次更新时间',
  `colddate` int(11) NOT NULL DEFAULT '0' COMMENT '冷却时间',
  `lastip` char(15) NOT NULL DEFAULT '' COMMENT '最后一次取用ip',
  `usednum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '取用次数',
  `cookie` text NOT NULL COMMENT 'cookie',
  `update_fail` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'cookie 更新失败次数',
  `old` tinyint(1) DEFAULT '0' COMMENT '账号熟悉，1表示旧账号，0表示新账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nickname` (`nickname`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16806 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cktb`
--

LOCK TABLES `cktb` WRITE;
/*!40000 ALTER TABLE `cktb` DISABLE KEYS */;
INSERT INTO `cktb` VALUES (16723,0,'用户74116972','N0qHfXQi',1556429594,1556429594,1556429594,'',0,'acf_did=e9bf3b6e1cacce2e3c64f41768201501; Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550034960; acf_devid=8b1e0351ae5462baf9a1773670f18a27; acf_biz=1; acf_stk=b88d7e6b629c159e; acf_ltkid=48794720; dy_did=e9bf3b6e1cacce2e3c64f41768201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265786013; wan_auth37wan=c4460b7f0855jqI3%2B%2B1z6uIYECuNM93yrilYxgrpGz6q1jUflTsJ2G7XfW7penCOmk8055rslapAlWHhiOcSXbyHbz%2BZv%2FsPvW1nv6S%2BsfMGjxHLm0g; acf_auth=b38f477AS4rDOIj1%2BNE30UeYKlox3Ta1TWX5MewTNiO2hcdJiRraCCRzKHyiDd4ZuSAJqiJXZ28AKUjIVopbfgLY99E%2FXkdHmkSDFj9uV1EWxgy1wktwSZE; acf_groupid=1; acf_username=265786013; PHPSESSID=dbom7km5l77sl8m0torbt8cia1; acf_nickname=%E7%94%A8%E6%88%B774116972; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550034894; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F03_; smidV2=20190213131450d3f86467eaa7c615faaafde37e2ab152004ab85e7a84d4620\r',0,0),(16805,1,'test','test',0,0,0,'',0,'test@test',0,0),(16704,0,'用户85927612','i0GuAjtX',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550024531; acf_did=92d8eeaae52665d6fffd320a62201501; acf_devid=ab3da98e04364520c13c0bd244eaba88; acf_biz=1; acf_stk=d9eb02c4c23650fc; acf_ltkid=40190618; dy_did=92d8eeaae52665d6fffd320a62201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265729641; wan_auth37wan=cc179bc31dd3pHmuDLE6WlsTTHLQ%2Fsi8lGDbqKe4SZDsvL9mYIPgB1Z60PlgZBYPUX4iosKQ%2F2IHhnwSLIlXcNLTXwC80%2FaWSskb7YBF2gWE49SAKCY; acf_auth=4bc2lC%2FPlmppzi%2B%2BQq6916jhiUe3Q5bG0kpTU%2Fatw6Si3fm2QYMXC2nFcqiYL8d9fCMi49Ev0j9YmzxzRfPTIZQ4Wku3ZQcbSUvOblKKiW8muYSXacCuz3g; acf_nickname=%E7%94%A8%E6%88%B785927612; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550024447; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F12_; smidV2=2019021310205171a3718fad5ca412b088691babfecf1400b55009335c967e0; acf_groupid=1; acf_username=265729641; PHPSESSID=s801d32lcfl4fq0pg5laqp9vj0\r',0,0),(16722,0,'用户94203250','Zi0ol9vY',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550034677; acf_did=ae36765c798542e511686f5868201501; acf_devid=4cb170893a0778b17a0028f5ddd4da23; acf_biz=1; acf_stk=8431b38e3a2acf84; acf_ltkid=75943453; dy_did=ae36765c798542e511686f5868201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265784382; wan_auth37wan=736ed3da2d2c0HApNIeezUZTB1Y2x7cwx2NIs6VJxd4tlKkKBmdl502OCSGiI835gYwhPlZZHllE2khXazkV5ffxqLPVT7VCQ4aYku1dQtnaNOjLCX4; acf_auth=448cO9ud0XIWJfl2yB33kA2SjNNMqWvgcNKyKyiBEYRItR5FSI9P4ONGZ6EP0F2THXUaxqMdVTMlNpZ9mttnNWuhPEyYLp9k%2FO11TXpwX8PZGAtdXEHi7uw; acf_nickname=%E7%94%A8%E6%88%B794203250; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550034613; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F05_; smidV2=20190213131013b6d98063e12bec8b2f3d82c62fdf47b500439a88155197790; acf_groupid=1; acf_username=265784382; PHPSESSID=e6afj3ui4fs2eqp80unnuuoqg0\r',0,0),(16721,0,'用户86692193','4cE6Woz0',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550033981; acf_did=a5c6736742fdb79f4180009c68201501; acf_devid=0d67ce7ece728e20985f021394b93b15; acf_biz=1; acf_stk=bb3ec22b0a538165; acf_ltkid=40513243; dy_did=a5c6736742fdb79f4180009c68201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265780335; wan_auth37wan=215a8cd573f9pyFSfpCN1AcFK3QT77pCW6MX3HJK2IP%2BBcp9AW6KoHMhJaWnoFABbyhUBnyvm7V3VhwKq6YtKrQZ7ytY3ezR%2Bte9rLWK6tizvDDSflA; acf_auth=32c7wu4mp%2BowmEbS%2FT3yzKY7HRaW7Mmyx4ItuQSZ4THhxKegMlz3xAuCTkDwlrwg6rOojcaFtCV9sezjf%2FrJpp943BE7iQPu5mN4JUggoenSjqv3HTy61Q4; acf_nickname=%E7%94%A8%E6%88%B786692193; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550033912; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F09_; smidV2=201902131258325c75f63749cd669b579003892dee648800778d5084b46bda0; acf_groupid=1; acf_username=265780335; PHPSESSID=vbna0slqsur3ke80j33hrn8hq5\r',0,0),(16720,0,'用户25799221','sZOjh22b',1556429594,1556429594,1556429594,'',0,'acf_did=9f6a337eab4777bb8a5ba78267201501; Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550033767; acf_devid=1891458e4d8d5439629bdf983c9b3061; acf_biz=1; acf_stk=e175c72245e762d1; acf_ltkid=59326607; dy_did=9f6a337eab4777bb8a5ba78267201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265779087; wan_auth37wan=224ddf877b90YHGv9XMhn9M9Ibz5IA4HqTpi5oRCoPrHDdRWQmUIrU%2FUqRm9Cmm6EqxQKRnhc9LigTPqRwR%2BFAD8PNj2UrQUM4QEmRRGfb5VUQ7bxcs; acf_auth=37c7AqcN%2FWMs9U%2FL77lmBd55cQb9zjU1w7d%2Bs2CZCCx273DRfgA5%2F7gKEGoVpxZ6afuYP%2BbnGXvmBk462MQ%2FqlSzmChie4O86j4ucEGP3AvjiY9dC9%2FL1Xs; acf_groupid=1; acf_username=265779087; PHPSESSID=e36ie4tp6tm7khu3o5431bffk4; acf_nickname=%E7%94%A8%E6%88%B725799221; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550033709; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F06_; smidV2=2019021312550320b1a41462b12d1ab06bf1549fde6d4000c8db2409c9a7630\r',0,0),(16719,0,'用户14794380','93ahegIz',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550032390; acf_did=8e5cb1c98822b118a63fc72567201501; acf_devid=4a86c2c601e7608d89ccb9c007172772; acf_biz=1; acf_stk=b1b62836350fa948; acf_ltkid=11378455; dy_did=8e5cb1c98822b118a63fc72567201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265771656; wan_auth37wan=a976d726429fidKMfzUy6oq5gwHz1J81%2F2eO84hvlE2ghSzLVseyDAao1DILfSD%2BTTwpzr5LxbOXrsLKpNLPDKBIiS0ue0k7Moc%2FUv5xEB4uLStW6qs; acf_auth=b6c6AtO7idgrxQ7DoLiJf1LV7qOKn8jXQbNzshbfglKmdaUj5HN3S%2FCEhU%2B9Qy9hhwZaOeNaAnrp7E1VfGH%2BUakP3pDTGqRphnNapz8JB72xRFKq%2B6GhYBA; acf_nickname=%E7%94%A8%E6%88%B714794380; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550032323; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F07_; smidV2=20190213123209d89aeac5ebedf836ce403c15c263259c00317a60fc14f09e0; acf_groupid=1; acf_username=265771656; PHPSESSID=sbmlbbumiros7tkcllb3idnqk2\r',0,0),(16718,0,'用户28725179','0UrmaGnA',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550032120; acf_did=efc9f9511fd19d54132c362667201501; acf_devid=bf201a29fea3fb2abce678f20828a448; acf_biz=1; acf_stk=0c74365578aa8f9a; acf_ltkid=12767643; dy_did=efc9f9511fd19d54132c362667201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265770130; wan_auth37wan=ac4d380a9873dpQdtNxm6qUHl0%2Bh4SRIfIaWsmua3B7jXbGzgrg3UU%2FdMSyUnsA78Hf8VhQ93tPT7ytz0XYynk2f1tb7ugB472oI196rnibLXL4nrwQ; acf_auth=ebb0Iy45FFBAWLdv5W8pWW6809O%2F0CpSrAgNe7MySQFlzD29H3IhRRyJUqmy%2FX3p7Wr7yCQlYvlEFATcSJ96B2FhShhxTm6FizIISINaF4iXMiTwTQA3%2Ff0; acf_nickname=%E7%94%A8%E6%88%B728725179; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550032028; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F07_; smidV2=201902131227215c1abbd6b84b93de65313c08a5fa22ac00965aea02f0c0dc0; acf_groupid=1; acf_username=265770130; PHPSESSID=33mkee8qciaecntdidfe2dqh73\r',0,0),(16717,0,'用户81226321','AcbjN7oI',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550031666; acf_did=4afa5fd1b0c5796e126fdc3e66201501; acf_devid=efa9ad45a4854379776916cb937cfb48; acf_biz=1; acf_stk=470c7f31d844eeeb; acf_ltkid=23662624; dy_did=4afa5fd1b0c5796e126fdc3e66201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265767581; wan_auth37wan=bde9018346540YSvZlFf%2BAeXKylgBAzNf4hoSfLrKpaPvsqKx4j0Q2xBlV890zis2G1rTtXJTB%2B2rzWSN5srZ9CDtN9mfSxzFxPrGgLE4nrnHq1PcrQ; acf_auth=d4d0LgYXsu5T08AZ0gjMQY1%2BODktT8DxVALjvtWNWVJjrsV3KH614y1LSlX4Tjplu6kFyPeDtyq6t%2BknrLC0qwBxxaFiW52n2nHkTHiAMB%2By8wvkuAWnn0Q; acf_nickname=%E7%94%A8%E6%88%B781226321; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550031596; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F09_; smidV2=20190213121958dfe6e7b9a6b6b5d17cd776f9e9739353000bf65f11533f950; acf_groupid=1; acf_username=265767581; PHPSESSID=h5hfttq0i055nfg05ahtkq0262\r',0,0),(16716,0,'用户59084249','LY4hJ20H',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550031455; acf_did=287234d8daf4ef2711272ad566201501; acf_devid=e2bf49719b190a435eac3a60d7d3c0e7; acf_biz=1; acf_stk=a7f4a6524b72ad10; acf_ltkid=15831886; dy_did=287234d8daf4ef2711272ad566201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265766397; wan_auth37wan=ea08dc0de3135BpvCBqvUHZVO3EEDBjUgo4HOeg3PeewAqdy511jl8WN%2BX%2BZnNNxBqqL%2BHuFLPPmv57K%2BD8MOEAOfwU7Z4zBIW7WoJu8ZQu9KSZoAiw; acf_auth=8a5eczh2McamKOmkc9uahqz2pfLxpi3%2Fs972f9J67vbX83sBVPQBxuj9bsqlOVzewAiTPFWDTZMAYDfww7SsZFI3ZnLxcpuzLUEaBoJtxxgncinj7Vi3I0Y; acf_nickname=%E7%94%A8%E6%88%B759084249; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550031385; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F08_; smidV2=20190213121627f06041c1a23b0c28769f1a49e1260f5e00f6618f06d2e8e40; acf_groupid=1; acf_username=265766397; PHPSESSID=qcpsr6nv7jrurvei8bcelga3j3\r',0,0),(16715,0,'用户26062383','iIAe6rxn',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550031066; acf_did=166e318821979b57df3ddac066201501; acf_devid=8b91663a6bff695b294726550d81257e; acf_biz=1; acf_stk=a0d507263ba78dc7; acf_ltkid=68934194; dy_did=166e318821979b57df3ddac066201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265764111; wan_auth37wan=318b84c9a54cyJ%2Bi4uscCtj12axruoNIgFlJmK2Rx%2B57xoXhjVebcumYtLvLs1CLrHuc929ivEOQtw1fUPO%2FzII5TUUDpgP7aGIPQdcwfMwJ%2BClJVl0; acf_auth=e7d9rhcmDSFi4uowquzYa9w%2BB6wvO5Q1J4dHNs6bsmbcls6dR9KHgOlw%2FGk6wzLUVoQ3SiXjOb6HKNmaY74iMtwcL4HE1AgEoEDCWoUrVe2C%2FYy0yXyiNsE; acf_nickname=%E7%94%A8%E6%88%B726062383; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550030999; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F08_; smidV2=20190213120959b2c1aaa535fe9d47361af0f4ab5f439000193d1f0b6665ce0; acf_groupid=1; acf_username=265764111; PHPSESSID=vevckert1qgvbgcg082n9hc9i5\r',0,0),(16714,0,'用户58372056','g6WHBwyA',1556429594,1556429594,1556429594,'',0,'acf_did=bba92581884b84de9349c00a66201501; Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550030773; acf_devid=4bd17535d1fdcc83556432fe2f96b655; acf_biz=1; acf_stk=2b53aaafed8841c5; acf_ltkid=63170190; dy_did=bba92581884b84de9349c00a66201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265762385; wan_auth37wan=475ddbda78abjIw7uLEvOLecFuQkCGOWww8wt15dM78xEmwJk45aSHsj2foGxSMNlYtBsUABn1iF17KLPjPTo3o9D9luYJJ%2BfeyF4lY9wKz18aZQhR4; acf_auth=abadsSyF6Cdy7epYOm4HzsovDcb1Ifo0e7L3zUxAeMCmk2OXJx2myUthFxlh74Xko%2BOQ3v1l73%2Fn%2Ba%2BvBMh85JzS0hzVudVReT2CLfTx5j4vrKT9zB7vcuY; acf_groupid=1; acf_username=265762385; PHPSESSID=u5onmf3693144j70ss09k13ah6; acf_nickname=%E7%94%A8%E6%88%B758372056; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550030704; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F02_; smidV2=201902131205030678a7d2a70fef0aaefe173cc63beb54001c6cc11d744b6b0\r',0,0),(16713,0,'用户01724474','L0SyRZse',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550030470; acf_did=74a6b5ecd715adfae661493a66201501; acf_devid=ca9d5cdc9f3c97d6ea7a822a5ef820de; acf_biz=1; acf_stk=6dea51ee1340948b; acf_ltkid=47190745; dy_did=74a6b5ecd715adfae661493a66201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265760606; wan_auth37wan=fedfe354156eL90%2FlWNB5VXQ%2Bj3xWUZLvwukebEIv51kuWEhiyEPJSiLB9wDGcCMNjqUgOKJooh0VLnLu3mS7DIsqfdY1n8Eet370Ws%2B%2BkCWKkJ2tWs; acf_auth=3cd6q9NxiZef3Ip1%2FfRVYfCqmhyQjrU8wldeg4MCr%2B9FSYusLOoaRhWmA3JPIREnJ8IDiCoK2FCa69Bu%2FVQ61jS3253S%2FmuknQHXomly4PJ1mZVdLTYuXzQ; acf_groupid=1; acf_username=265760606; PHPSESSID=ti25lfjbqdrsniqc6fhmhskuo1; acf_nickname=%E7%94%A8%E6%88%B701724474; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550030395; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F10_; smidV2=20190213115953c1dc81a5cbd494300bea5dfff2567fa5002cb195064a6b5d0\r',0,0),(16712,0,'用户16288438','eN2fgteU',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550030253; acf_did=fc0806cdd6c06bbf0c5fa47f65201501; acf_devid=ce3faa334c5aab6af918aac118cf756a; acf_biz=1; acf_stk=9fe910018a0532ea; acf_ltkid=77260508; dy_did=fc0806cdd6c06bbf0c5fa47f65201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265759357; wan_auth37wan=3a483408489abEI4oMFBi5HagC7VTIHloqAd2bmy5GBPHEsezlJOKUefy7t8mAu7Ic%2BYGUpbK%2BXMvPA2idC9jjwTE%2BLQCOAifb26YP31Ejgjmt%2Bj%2FPw; acf_auth=fd8cEf3a%2BQPqL5N3rJCDnnfNP3N8J5TBatzNvfduqAl8EiCMtPmeqniYnKgR4DmZ2YCO%2BmBFM2%2Fv%2Bk8Gl5rcb4ns%2Fa9pZMlgTSCTHZbp1Pys9Qwe3Cwzdck; acf_nickname=%E7%94%A8%E6%88%B716288438; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550030183; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F01_; smidV2=201902131156254bdc078352405d4414b787c2e4d047c400ad95b22a5eb9af0; acf_groupid=1; acf_username=265759357; PHPSESSID=36uqcm8ogqfkvs05jp4edbdhv1\r',0,0),(16711,0,'用户00334348','Po0NOSay',1556429594,1556429594,1556429594,'',0,'acf_did=d6b7027676bc8d888c6ed73465201501; Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550029849; acf_devid=5840a9ee207780fd0d3e441dc064c6bf; acf_biz=1; acf_stk=68f2f01f11abc012; acf_ltkid=20389372; dy_did=d6b7027676bc8d888c6ed73465201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265757084; wan_auth37wan=aaa704560cc37fw%2Br7I%2FYpfnVEMxJX2pBx%2Ff9YLYtwaqSeMT9%2BpsskqVhGbBKis6dHINUO8UovBnfBu4VXRy89DhhhHnfEpek3yOra3nIzww53u24O0; acf_auth=b77bZs7HHHiCPWWLe1ZY4U4dhTpsD%2B7eUhx5K0kI8%2BmzBeXEu6x6zgxkHyB7YxihMJcrBm29ToZqm0E%2FEFnn5TkPvKRJoiCSqkBBmfa7RsBjMAh%2FgoydHeQ; acf_nickname=%E7%94%A8%E6%88%B700334348; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550029786; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F13_; smidV2=20190213114948fb32c52cb690a9958aca328f376795f800388e25288f50a60; acf_groupid=1; acf_username=265757084; PHPSESSID=fnd8ujlp49ib290rb41k7nbvg5\r',0,0),(16710,0,'用户15289362','HaC3h9ba',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550029385; acf_did=ad402d0b7226b95d2f02280465201501; acf_devid=7e0e21d1d8b04c100b5175846330e9ff; acf_biz=1; acf_stk=c1221978d3e09b4c; acf_ltkid=11006383; dy_did=ad402d0b7226b95d2f02280465201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265754583; wan_auth37wan=e869ac09d48b8e7S2GNyRGblfBP9vwVkc%2F5DnBKqiT4MGLaSFnHVb1RWx%2BSUZI3bHLA8CIoXumW63lOIbTmL8k%2FbTAssitsL8p%2FOrquhIl2iMTVH12g; acf_auth=a9b2D8a07ZbJOKaYQ7ilhd5uiDw6iIFGAd5jfo2ZiDNvrFAoxxNB7pV9UQ%2FYQ5DS21aXgo8yV5GKEbv5ySFuiovZ10TWyjE2Wj18tVSIVGYcQHD%2FVokbDVI; acf_groupid=1; acf_username=265754583; PHPSESSID=fl2ftff4d00le4f2ngka0pgon6; acf_nickname=%E7%94%A8%E6%88%B715289362; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550029319; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F04_; smidV2=20190213114157cb57ec557e10ef1ac7cb2a06aa534e1d00166b918e4ff1d60\r',0,0),(16709,0,'用户98334359','v1jSiFmK',1556429594,1556429594,1556429594,'',0,'acf_did=186ce7c9303fcccc3d1153f264201501; Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550028081; acf_devid=9092ea8392c481a0adab3f6e0bb2790a; acf_biz=1; acf_stk=50b1700ea88ec077; acf_ltkid=18881517; dy_did=186ce7c9303fcccc3d1153f264201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265747860; wan_auth37wan=652c0105fba3hBMkHMG7mxp9mnJu4HJIzCzN7ZSjKSudStxjNRk1fqq998OLcD9TCUf2J0c%2BQcJZyvUv%2FgbYua8mEJO5PbABNnNxnBBHF%2BMr5bzfmaI; acf_auth=8778vz%2FPasbdj3Ixyh15EvdexQVg2Kcy8o1nlAKJESYeTxMHw09y3%2FLU5hMJs5jcGGS%2FHwuPFVuj%2BB57jt6eEFZumDMHiIIn35xM%2B0rkXkkc2XBQRIgGlks; acf_nickname=%E7%94%A8%E6%88%B798334359; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550028018; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F13_; smidV2=201902131120187d1d20e5f01e9b796106315cb9f94b6f00847f8af80b44830; acf_groupid=1; acf_username=265747860; PHPSESSID=trpj7nak63ahrqdc8dbi43hep7\r',0,0),(16708,0,'用户27306884','9oDTnObE',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550027882; acf_did=e94dd92461e2e9e19efaa37464201501; acf_devid=1088199ee60861dde3eda42c77c2eac2; acf_biz=1; acf_stk=91c18f796c1b9dd0; acf_ltkid=61190269; dy_did=e94dd92461e2e9e19efaa37464201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265746851; wan_auth37wan=e5303ffc3bb0plGUvbvr%2FptsuKYj%2FRtAeR%2BGh6Di8Y8Y%2FWp%2B%2BGNph9SAxfWbOtGZ5h7U3a%2FjQDrBBZw9YKIlQuSPxmDzgHoQOoouSRrxneNvqBikrQs; acf_auth=9172oYV6kCAzD5lHUBkGWatn1P89vBMdtl32oxAtJAMzK3OQeKMKY2QgL803t89GKHDrZR95AAXojBDO4SLFjc0CtNBuB2Iyn7YZRkYFhBkBZr1Ol5q2Ijg; acf_nickname=%E7%94%A8%E6%88%B727306884; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550027812; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F04_; smidV2=20190213111652946f69b2ebcae3cc2be75a2de5cb8ab400e40299e48ade460; acf_groupid=1; acf_username=265746851; PHPSESSID=5lqph4aubo3clvjvhm8t2d2vc6\r',0,0),(16707,0,'用户73081550','sW1OfUPa',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550027277; acf_did=fbcb211ae2a02e0b855446fd64201501; acf_devid=f15d05325d21f11c98bf3ef969ec728e; acf_biz=1; acf_stk=bfbb7a11d8779d9f; acf_ltkid=92854424; dy_did=fbcb211ae2a02e0b855446fd64201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265743799; wan_auth37wan=45bcba7b291eTtxnsFJ1bySKBn%2FRrjAmTg2yW1wiynnshJbyENwC5r9kPTyeEAwO4%2FO5esm25KaU1AmXasYFWX9DpFIzVdetDjv3PYhvt2IA9kATSp0; acf_auth=c84bYH1aWQt6rfQbimB2vQk7gwDAIPGApEUNL19IGD5lW7dt12erZOBbNu%2BciYhFTutadvwqQtBd0%2BWdCSgYvfFjIHs33YhE%2FqspsqeWOYUeHDwwXYuzq5E; acf_groupid=1; acf_username=265743799; PHPSESSID=7qggj272ak50ui76gfat1ps3t7; acf_nickname=%E7%94%A8%E6%88%B773081550; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550027210; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F03_; smidV2=20190213110649c9c111c1c6281f18d723eafb168f292500677e8ab5c141970\r',0,0),(16706,0,'用户79778662','AtVzbXG4',1556429594,1556429594,1556429594,'',0,'Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550025774; acf_did=53295c056a1980a8aaccc9a163201501; acf_devid=400fded35b80046321c55399ab7faa00; acf_biz=1; acf_stk=51909f21dcfd0d8c; acf_ltkid=36089114; dy_did=53295c056a1980a8aaccc9a163201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265736158; wan_auth37wan=d73a26d4f158lSLSD0BQuhLXxIbLoL9BceBtrN4U54ysCWnQdIadZp7eOjJ8gOMeCarWKXVFB5szPyIFyBHq7PiaE%2BU250j1IduwNwcRE8hOKoUbfZc; acf_auth=e8b7rb%2F3QfAmhjgX93AAYmVKZozAWfM7eoZnCjMN0UJDbkZFIZKY2A%2BsLeg0gk%2BmBy%2BXKgDtrnqHQdegxnO8A%2FJWwzFI31XeDdMPtGUmL%2FadkygN1%2FrmKbY; acf_nickname=%E7%94%A8%E6%88%B779778662; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550025703; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F06_; smidV2=2019021310414611497d0c8d43bbd1e9b7bcb8ed995fcb0086d053197ee2e80; acf_groupid=1; acf_username=265736158; PHPSESSID=i2n40ovji56u3vgn2n2n9ik7m2\r',0,0),(16705,0,'用户99938792','JGcPS6mp',1556429594,1556429594,1556429594,'',0,'acf_did=5cd240eb3c1a0f080fa0a9b863201501; Hm_lpvt_e99aee90ec1b2106afe7ec3b199020a7=1550024906; acf_devid=fbcdaaa954bcea8bba24e1b182621cf6; acf_biz=1; acf_stk=da1ffbcef3182696; acf_ltkid=61260082; dy_did=5cd240eb3c1a0f080fa0a9b863201501; acf_ct=0; acf_phonestatus=1; acf_isNewUser=1; acf_own_room=0; acf_uid=265731643; wan_auth37wan=71da52835f6bAhlYu7yzdk8e7iQzEhWxxOl1R7VzIwqBWkuDqeF%2B9ywHmMK5deTtPqVV5TT6G4TO8xqtVAOPSlYriW0XAlhkvCAOHBp1Xcce1E%2Fi4fw; acf_auth=543cI0IuDu24D%2BCZtIHb08g5uj6nv4vFZCBLUXgXaSAGOSXoVzDXsyWpJw6oWOzlkhiYMGNpvnyb6yt%2F%2FRuKqUFM83YJZ4J%2FZR69piB%2BXgBeswbldYBAM7g; acf_nickname=%E7%94%A8%E6%88%B799938792; Hm_lvt_e99aee90ec1b2106afe7ec3b199020a7=1550024840; acf_avatar=https%3A%2F%2Fapic.douyucdn.cn%2Fupload%2Favatar%2Fdefault%2F10_; smidV2=201902131027243e5f6a211533d3c7deb4a5a0b4cf3b0200548e3acfaa31fe0; acf_groupid=1; acf_username=265731643; PHPSESSID=4jck9dedtdl73jvc6pch00to30\r',0,0);
/*!40000 ALTER TABLE `cktb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'user',NULL),(2,'superuser',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2),(2,1);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `task_id` char(32) NOT NULL DEFAULT '' COMMENT '任务ID',
  `effective` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '任务有效的标志位，0表示无效，1表示有效',
  `reset_done` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '任务开始前，重置ck标志位',
  `submit_time` char(32) NOT NULL DEFAULT '' COMMENT '任务提交时间',
  `begin_timestamp` int(10) unsigned NOT NULL COMMENT '任务开始的时间戳',
  `total_time` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '任务总时间，单位为分钟',
  `last_time_from` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '任务持续开始时间，单位为分钟',
  `last_time_to` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '任务持续结束时间，单位为分钟',
  `time_gap` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '放量时间间隔，单位为秒',
  `gap_num` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '放量间隔次数',
  `user_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '需求终端用户数量',
  `req` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经请求任务的终端用户数量',
  `ck_req` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经请求的ck的终端用户数量',
  `ck_url` char(128) NOT NULL DEFAULT '' COMMENT '获取ck的url链接',
  `room_url` char(128) NOT NULL DEFAULT '' COMMENT '房间url链接',
  `content` char(255) NOT NULL DEFAULT '' COMMENT '组装返回给终端的任务内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,0,'user000000',1,0,'05-05 21:56:15',1554472571,30,23,25,6,100,10000,0,0,'http://47.244.4.117:8200/useradmin/cookie?user=0&id=user000000','https://www.douyu.com/657158','<t a=\"1800|20\" flash=\"1\" isBoot=\"0\" ckul=http://47.244.4.117:8200/useradmin/cookie?user=0&id=user000000 s=https://www.douyu.com/657158><p a=\"1380,1500|0|0|5\" /></t>'),(2,0,'user000000',1,0,'05-05 22:17:29',1554473845,30,23,25,6,100,10000,0,0,'http://47.244.4.117:8200/useradmin/cookie?user=0&id=user000000','https://www.douyu.com/657158','<t a=\"1800|20\" flash=\"1\" isBoot=\"0\" ckul=http://47.244.4.117:8200/useradmin/cookie?user=0&id=user000000 s=https://www.douyu.com/657158><p a=\"1380,1500|0|0|5\" /></t>');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin',NULL,'admin','$pbkdf2-sha512$25000$LYUQQuhday1lDCGktNaasw$kVOLgqvN1C9RO2WPG8SDuzicJVxe/dYenMLVJLjitGHa2C87vAZxO5k4DN9hJxoS7Koa9ZUEhUrUlrlUYAG3Zw',1,NULL),(2,'Harry','Brown','harry.brown@example.com','$pbkdf2-sha512$25000$Z4wxRkjpfa/1ntNaC.F8bw$M0GWNVZTEn4RUhCSJFhw3lk96xlRD/ixtrApL6kd9/tMAUxL2UX58yhbjFhOUULq.XgbYSwyCAPP4XsnDGRrQA',1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 22:19:20
