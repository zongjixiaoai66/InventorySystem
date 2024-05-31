/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t082`;
CREATE DATABASE IF NOT EXISTS `t082` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t082`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootk6oce/upload/1619019249146.png'),
	(2, 'picture2', 'http://localhost:8080/springbootk6oce/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootk6oce/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusstushuxinxi`;
CREATE TABLE IF NOT EXISTS `discusstushuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='图书信息评论表';

DELETE FROM `discusstushuxinxi`;
INSERT INTO `discusstushuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(131, '2021-04-21 15:28:38', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(132, '2021-04-21 15:28:38', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(133, '2021-04-21 15:28:38', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(134, '2021-04-21 15:28:38', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(135, '2021-04-21 15:28:38', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(136, '2021-04-21 15:28:38', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `gongyingshang`;
CREATE TABLE IF NOT EXISTS `gongyingshang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `gongyingshangleixing` varchar(200) DEFAULT NULL COMMENT '供应商类型',
  `zhugongshangpin` varchar(200) DEFAULT NULL COMMENT '主供商品',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `xiangqingbeizhu` longtext COMMENT '详情备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangbianhao` (`gongyingshangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019120155 DEFAULT CHARSET=utf8mb3 COMMENT='供应商';

DELETE FROM `gongyingshang`;
INSERT INTO `gongyingshang` (`id`, `addtime`, `gongyingshangbianhao`, `gongyingshangmingcheng`, `gongyingshangleixing`, `zhugongshangpin`, `fuzeren`, `lianxidianhua`, `lianxidizhi`, `xiangqingbeizhu`) VALUES
	(81, '2021-04-21 15:28:37', '供应商编号1', '供应商名称1', '供应商类型1', '主供商品1', '负责人1', '13823888881', '联系地址1', '详情备注1'),
	(82, '2021-04-21 15:28:37', '供应商编号2', '供应商名称2', '供应商类型2', '主供商品2', '负责人2', '13823888882', '联系地址2', '详情备注2'),
	(84, '2021-04-21 15:28:37', '供应商编号4', '供应商名称4', '供应商类型4', '主供商品4', '负责人4', '13823888884', '联系地址4', '详情备注4'),
	(85, '2021-04-21 15:28:37', '供应商编号5', '供应商名称5', '供应商类型5', '主供商品5', '负责人5', '13823888885', '联系地址5', '详情备注5'),
	(86, '2021-04-21 15:28:37', '供应商编号6', '供应商名称6', '供应商类型6', '主供商品6', '负责人6', '13823888886', '联系地址6', '详情备注6'),
	(1619019120154, '2021-04-21 15:31:59', '1619019109424', '1', '1', '1', '1', '12345678999', '1', '1');

DROP TABLE IF EXISTS `jinhuodingdan`;
CREATE TABLE IF NOT EXISTS `jinhuodingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tushudanjia` varchar(200) DEFAULT NULL COMMENT '图书单价',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `dingdanjine` varchar(200) DEFAULT NULL COMMENT '订单金额',
  `jinhuoshijian` datetime DEFAULT NULL COMMENT '进货时间',
  `shenheren` varchar(200) DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019029144 DEFAULT CHARSET=utf8mb3 COMMENT='进货订单';

DELETE FROM `jinhuodingdan`;
INSERT INTO `jinhuodingdan` (`id`, `addtime`, `dingdanbianhao`, `gongyingshangbianhao`, `gongyingshangmingcheng`, `tushubianhao`, `tushumingcheng`, `tushuleixing`, `tushuzuozhe`, `chubanshe`, `tupian`, `tushudanjia`, `shuliang`, `dingdanjine`, `jinhuoshijian`, `shenheren`) VALUES
	(31, '2021-04-21 15:28:37', '订单编号1', '供应商编号1', '供应商名称1', '图书编号1', '图书名称1', '图书类型1', '图书作者1', '出版社1', 'http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian1.jpg', '图书单价1', '数量1', '订单金额1', '2021-04-21 23:28:37', '审核人1'),
	(32, '2021-04-21 15:28:37', '订单编号2', '供应商编号2', '供应商名称2', '图书编号2', '图书名称2', '图书类型2', '图书作者2', '出版社2', 'http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian2.jpg', '图书单价2', '数量2', '订单金额2', '2021-04-21 23:28:37', '审核人2'),
	(33, '2021-04-21 15:28:37', '订单编号3', '供应商编号3', '供应商名称3', '图书编号3', '图书名称3', '图书类型3', '图书作者3', '出版社3', 'http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian3.jpg', '图书单价3', '数量3', '订单金额3', '2021-04-21 23:28:37', '审核人3'),
	(34, '2021-04-21 15:28:37', '订单编号4', '供应商编号4', '供应商名称4', '图书编号4', '图书名称4', '图书类型4', '图书作者4', '出版社4', 'http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian4.jpg', '图书单价4', '数量4', '订单金额4', '2021-04-21 23:28:37', '审核人4'),
	(35, '2021-04-21 15:28:37', '订单编号5', '供应商编号5', '供应商名称5', '图书编号5', '图书名称5', '图书类型5', '图书作者5', '出版社5', 'http://localhost:8080/springbootk6oce/upload/jinhuodingdan_tupian5.jpg', '图书单价5', '数量5', '订单金额5', '2021-04-21 23:28:37', '审核人5'),
	(1619019029143, '2021-04-21 15:30:28', '1619019008506', '11', '1', '1619019008506', '1', '图书类型1', '1', '11', 'http://localhost:8080/springbootk6oce/upload/1619019023692.png', '1', '1', '1', '2021-04-21 23:30:08', '1');

DROP TABLE IF EXISTS `kehuxinxi`;
CREATE TABLE IF NOT EXISTS `kehuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehubianhao` varchar(200) DEFAULT NULL COMMENT '客户编号',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehubianhao` (`kehubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019098780 DEFAULT CHARSET=utf8mb3 COMMENT='客户信息';

DELETE FROM `kehuxinxi`;
INSERT INTO `kehuxinxi` (`id`, `addtime`, `kehubianhao`, `kehumingcheng`, `fuzeren`, `lianxidianhua`, `dizhi`, `beizhu`, `tupian`) VALUES
	(71, '2021-04-21 15:28:37', '客户编号1', '客户名称1', '负责人1', '13823888881', '地址1', '备注1', 'http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian1.jpg'),
	(72, '2021-04-21 15:28:37', '客户编号2', '客户名称2', '负责人2', '13823888882', '地址2', '备注2', 'http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian2.jpg'),
	(73, '2021-04-21 15:28:37', '客户编号3', '客户名称3', '负责人3', '13823888883', '地址3', '备注3', 'http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian3.jpg'),
	(74, '2021-04-21 15:28:37', '客户编号4', '客户名称4', '负责人4', '13823888884', '地址4', '备注4', 'http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian4.jpg'),
	(75, '2021-04-21 15:28:37', '客户编号5', '客户名称5', '负责人5', '13823888885', '地址5', '备注5', 'http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian5.jpg'),
	(76, '2021-04-21 15:28:37', '客户编号6', '客户名称6', '负责人6', '13823888886', '地址6', '备注6', 'http://localhost:8080/springbootk6oce/upload/kehuxinxi_tupian6.jpg'),
	(1619019098779, '2021-04-21 15:31:38', '1619019087138', '1', '1', '12345678909', '1', '1', 'http://localhost:8080/springbootk6oce/upload/1619019096678.png');

DROP TABLE IF EXISTS `kucunfenxi`;
CREATE TABLE IF NOT EXISTS `kucunfenxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `dangqiankucun` varchar(200) DEFAULT NULL COMMENT '当前库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019129115 DEFAULT CHARSET=utf8mb3 COMMENT='库存分析';

DELETE FROM `kucunfenxi`;
INSERT INTO `kucunfenxi` (`id`, `addtime`, `tushubianhao`, `tushumingcheng`, `riqi`, `dangqiankucun`) VALUES
	(92, '2021-04-21 15:28:38', '图书编号2', '图书名称2', '日期2', '当前库存2'),
	(93, '2021-04-21 15:28:38', '图书编号3', '图书名称3', '日期3', '当前库存3'),
	(95, '2021-04-21 15:28:38', '图书编号5', '图书名称5', '日期5', '当前库存5'),
	(96, '2021-04-21 15:28:38', '图书编号6', '图书名称6', '日期6', '当前库存6'),
	(1619019129114, '2021-04-21 15:32:08', '1', '1', '1', '1');

DROP TABLE IF EXISTS `pixiaodingdan`;
CREATE TABLE IF NOT EXISTS `pixiaodingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `tushuzuozhe` int DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tushudanjia` longtext COMMENT '图书单价',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `dingdanjine` varchar(200) DEFAULT NULL COMMENT '订单金额',
  `jinhuoshijian` datetime DEFAULT NULL COMMENT '进货时间',
  `shenheren` varchar(200) DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019066865 DEFAULT CHARSET=utf8mb3 COMMENT='批销订单';

DELETE FROM `pixiaodingdan`;
INSERT INTO `pixiaodingdan` (`id`, `addtime`, `dingdanbianhao`, `gongyingshangbianhao`, `gongyingshangmingcheng`, `tushubianhao`, `tushumingcheng`, `tushuleixing`, `tushuzuozhe`, `chubanshe`, `tupian`, `tushudanjia`, `shuliang`, `dingdanjine`, `jinhuoshijian`, `shenheren`) VALUES
	(51, '2021-04-21 15:28:37', '订单编号1', '供应商编号1', '供应商名称1', '图书编号1', '图书名称1', '图书类型1', 1, '', 'http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian1.jpg', '图书单价1', '数量1', '订单金额1', '2021-04-21 23:28:37', '审核人1'),
	(53, '2021-04-21 15:28:37', '订单编号3', '供应商编号3', '供应商名称3', '图书编号3', '图书名称3', '图书类型3', 3, '', 'http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian3.jpg', '图书单价3', '数量3', '订单金额3', '2021-04-21 23:28:37', '审核人3'),
	(54, '2021-04-21 15:28:37', '订单编号4', '供应商编号4', '供应商名称4', '图书编号4', '图书名称4', '图书类型4', 4, '', 'http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian4.jpg', '图书单价4', '数量4', '订单金额4', '2021-04-21 23:28:37', '审核人4'),
	(55, '2021-04-21 15:28:37', '订单编号5', '供应商编号5', '供应商名称5', '图书编号5', '图书名称5', '图书类型5', 5, '', 'http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian5.jpg', '图书单价5', '数量5', '订单金额5', '2021-04-21 23:28:37', '审核人5'),
	(56, '2021-04-21 15:28:37', '订单编号6', '供应商编号6', '供应商名称6', '图书编号6', '图书名称6', '图书类型6', 6, '', 'http://localhost:8080/springbootk6oce/upload/pixiaodingdan_tupian6.jpg', '图书单价6', '数量6', '订单金额6', '2021-04-21 23:28:37', '审核人6'),
	(1619019066864, '2021-04-21 15:31:06', '1619019053420', '1', '1', '1619019053421', '1', '图书类型1', 1, 'http://localhost:8080/springbootk6oce/upload/1619019060552.png', 'http://localhost:8080/springbootk6oce/upload/1619019062898.png', '<p>1</p>', '1', '1', '2021-04-21 23:30:53', '1');

DROP TABLE IF EXISTS `shangpintuihuo`;
CREATE TABLE IF NOT EXISTS `shangpintuihuo` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `caigoubianhao` varchar(200) DEFAULT NULL COMMENT '采购编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `caigoujiage` varchar(200) DEFAULT NULL COMMENT '采购价格',
  `tuihuojine` varchar(200) DEFAULT NULL COMMENT '退货金额',
  `tuihuoyuanyin` varchar(200) DEFAULT NULL COMMENT '退货原因',
  `tuihuoriqi` date DEFAULT NULL COMMENT '退货日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigoubianhao` (`caigoubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019045443 DEFAULT CHARSET=utf8mb3 COMMENT='商品退货';

DELETE FROM `shangpintuihuo`;
INSERT INTO `shangpintuihuo` (`id`, `addtime`, `gongyingshangbianhao`, `gongyingshangmingcheng`, `caigoubianhao`, `tushubianhao`, `tushumingcheng`, `tushuzuozhe`, `chubanshe`, `shuliang`, `caigoujiage`, `tuihuojine`, `tuihuoyuanyin`, `tuihuoriqi`) VALUES
	(41, '2021-04-21 15:28:37', '供应商编号1', '供应商名称1', '采购编号1', '图书编号1', '图书名称1', '图书作者1', '出版社1', '数量1', '采购价格1', '退货金额1', '退货原因1', '2021-04-21'),
	(42, '2021-04-21 15:28:37', '供应商编号2', '供应商名称2', '采购编号2', '图书编号2', '图书名称2', '图书作者2', '出版社2', '数量2', '采购价格2', '退货金额2', '退货原因2', '2021-04-21'),
	(43, '2021-04-21 15:28:37', '供应商编号3', '供应商名称3', '采购编号3', '图书编号3', '图书名称3', '图书作者3', '出版社3', '数量3', '采购价格3', '退货金额3', '退货原因3', '2021-04-21'),
	(44, '2021-04-21 15:28:37', '供应商编号4', '供应商名称4', '采购编号4', '图书编号4', '图书名称4', '图书作者4', '出版社4', '数量4', '采购价格4', '退货金额4', '退货原因4', '2021-04-21'),
	(46, '2021-04-21 15:28:37', '供应商编号6', '供应商名称6', '采购编号6', '图书编号6', '图书名称6', '图书作者6', '出版社6', '数量6', '采购价格6', '退货金额6', '退货原因6', '2021-04-21'),
	(1619019045442, '2021-04-21 15:30:45', '1', '1', '1619019036447', '1', '1', '1', '1', '1', '1', '1', '1', '2021-04-21');

DROP TABLE IF EXISTS `shourujine`;
CREATE TABLE IF NOT EXISTS `shourujine` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `tushushuliang` varchar(200) DEFAULT NULL COMMENT '图书数量',
  `shourujine` varchar(200) DEFAULT NULL COMMENT '收入金额',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019139696 DEFAULT CHARSET=utf8mb3 COMMENT='收入金额';

DELETE FROM `shourujine`;
INSERT INTO `shourujine` (`id`, `addtime`, `riqi`, `tushushuliang`, `shourujine`, `beizhu`) VALUES
	(102, '2021-04-21 15:28:38', '日期2', '图书数量2', '收入金额2', '备注2'),
	(103, '2021-04-21 15:28:38', '日期3', '图书数量3', '收入金额3', '备注3'),
	(106, '2021-04-21 15:28:38', '日期6', '图书数量6', '收入金额6', '备注6'),
	(1619019139695, '2021-04-21 15:32:18', '1', '1', '1', '1');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707739499483 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1707739499482, '2024-02-12 12:04:59', 11, 65, 'tushuxinxi', '图书名称5', 'http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian5.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '用户1', 'yonghu', '用户', 'nt8tu9z3sd0z14yvnwgho71w0pw0y5xs', '2021-04-21 15:29:54', '2024-02-12 13:01:07'),
	(2, 1, 'abo', 'users', '管理员', 'k2kjsv6wub5vgdisaq7tob88muhpai2s', '2021-04-21 15:33:14', '2024-02-12 13:03:29');

DROP TABLE IF EXISTS `tushuleixing`;
CREATE TABLE IF NOT EXISTS `tushuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='图书类型';

DELETE FROM `tushuleixing`;
INSERT INTO `tushuleixing` (`id`, `addtime`, `tushuleixing`) VALUES
	(21, '2021-04-21 15:28:37', '图书类型1'),
	(22, '2021-04-21 15:28:37', '图书类型2'),
	(23, '2021-04-21 15:28:37', '图书类型3'),
	(24, '2021-04-21 15:28:37', '图书类型4'),
	(25, '2021-04-21 15:28:37', '图书类型5'),
	(26, '2021-04-21 15:28:37', '图书类型6');

DROP TABLE IF EXISTS `tushuxinxi`;
CREATE TABLE IF NOT EXISTS `tushuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  `tushuzhuangtai` varchar(200) DEFAULT NULL COMMENT '图书状态',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `tushugaiyao` longtext COMMENT '图书概要',
  `tushufengmian` varchar(200) DEFAULT NULL COMMENT '图书封面',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019079799 DEFAULT CHARSET=utf8mb3 COMMENT='图书信息';

DELETE FROM `tushuxinxi`;
INSERT INTO `tushuxinxi` (`id`, `addtime`, `tushubianhao`, `tushumingcheng`, `tushuleixing`, `tushuzhuangtai`, `tushuzuozhe`, `tushugaiyao`, `tushufengmian`, `thumbsupnum`, `crazilynum`) VALUES
	(61, '2021-04-21 15:28:37', '图书编号1', '图书名称1', '图书类型1', '图书状态1', '图书作者1', '图书概要1', 'http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian1.jpg', 1, 1),
	(63, '2021-04-21 15:28:37', '图书编号3', '图书名称3', '图书类型3', '图书状态3', '图书作者3', '图书概要3', 'http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian3.jpg', 3, 3),
	(64, '2021-04-21 15:28:37', '图书编号4', '图书名称4', '图书类型4', '图书状态4', '图书作者4', '图书概要4', 'http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian4.jpg', 4, 4),
	(65, '2021-04-21 15:28:37', '图书编号5', '图书名称5', '图书类型5', '图书状态5', '图书作者5', '图书概要5', 'http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian5.jpg', 5, 5),
	(66, '2021-04-21 15:28:37', '图书编号6', '图书名称6', '图书类型6', '图书状态6', '图书作者6', '图书概要6', 'http://localhost:8080/springbootk6oce/upload/tushuxinxi_tushufengmian6.jpg', 6, 6),
	(1619019079798, '2021-04-21 15:31:19', '1619019073287', '1', '图书类型1', '1', NULL, '<p>1</p>', 'http://localhost:8080/springbootk6oce/upload/1619019077358.png', 0, 0);

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-21 15:28:38');

DROP TABLE IF EXISTS `yingshoujine`;
CREATE TABLE IF NOT EXISTS `yingshoujine` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `tushushuliang` varchar(200) DEFAULT NULL COMMENT '图书数量',
  `yingshoujine` varchar(200) DEFAULT NULL COMMENT '应收金额',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619019156222 DEFAULT CHARSET=utf8mb3 COMMENT='应收金额';

DELETE FROM `yingshoujine`;
INSERT INTO `yingshoujine` (`id`, `addtime`, `riqi`, `tushushuliang`, `yingshoujine`, `beizhu`) VALUES
	(112, '2021-04-21 15:28:38', '日期2', '图书数量2', '应收金额2', '备注2'),
	(113, '2021-04-21 15:28:38', '日期3', '图书数量3', '应收金额3', '备注3'),
	(115, '2021-04-21 15:28:38', '日期5', '图书数量5', '应收金额5', '备注5'),
	(116, '2021-04-21 15:28:38', '日期6', '图书数量6', '应收金额6', '备注6'),
	(1619019156221, '2021-04-21 15:32:35', '1', '1', '1', '1');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `tupian`, `sfsh`, `shhf`) VALUES
	(11, '2021-04-21 15:28:37', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(12, '2021-04-21 15:28:37', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(13, '2021-04-21 15:28:37', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(14, '2021-04-21 15:28:37', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(15, '2021-04-21 15:28:37', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(16, '2021-04-21 15:28:37', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
