# 宠物管理系统宠物
CREATE TABLE `s_plugins_petscms_pets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `pest_no` char(60) NOT NULL DEFAULT '' COMMENT '宠物编号',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态（0正常, 1丢失, 2去世, 3关闭）',
  `title` char(60) NOT NULL DEFAULT '' COMMENT '标题',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '名字',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '出生日期',
  `type` char(60) NOT NULL DEFAULT '' COMMENT '类型',
  `varieties` char(60) NOT NULL DEFAULT '' COMMENT '品种',
  `gender` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '性别（0公, 1母）',
  `sterilization` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '是否绝育（0否, 1是）',
  `vaccine` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '是否疫苗（0否, 1是）',
  `photo` mediumtext NOT NULL COMMENT '相册（json数据）',
  `content` mediumtext NOT NULL COMMENT '宠物简介',
  `person_name` char(30) NOT NULL DEFAULT '' COMMENT '主人姓名',
  `person_tel` char(30) NOT NULL DEFAULT '' COMMENT '主人电话',
  `person_weixin` char(30) NOT NULL DEFAULT '' COMMENT '主人微信',
  `lose_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '丢失-丢失时间',
  `lose_reward_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '丢失-悬赏金额',
  `lose_features` char(255) NOT NULL DEFAULT '' COMMENT '丢失-宠物特征',
  `lose_province` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '丢失-所在省',
  `lose_city` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '丢失-所在市',
  `lose_county` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '丢失-所在县/区',
  `lose_address` char(80) NOT NULL DEFAULT '' COMMENT '丢失-详细地址',
  `lose_lng` decimal(13,10) unsigned NOT NULL DEFAULT '0.0000000000' COMMENT '丢失-经度',
  `lose_lat` decimal(13,10) unsigned NOT NULL DEFAULT '0.0000000000' COMMENT '丢失-纬度',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pest_no` (`pest_no`),
  KEY `type` (`type`),
  KEY `gender` (`gender`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='宠物管理系统宠物 - 应用'



# 宠物管理系统宠物丢失帮助数据
CREATE TABLE `s_plugins_petscms_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `pets_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '宠物id',
  `contacts_name` char(30) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `contacts_tel` char(30) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `contacts_weixin` char(30) NOT NULL DEFAULT '' COMMENT '联系人微信',
  `province` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所在省',
  `city` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所在市',
  `county` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所在县/区',
  `address` char(80) NOT NULL DEFAULT '' COMMENT '详细地址',
  `lng` decimal(13,10) unsigned NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lat` decimal(13,10) unsigned NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `pets_id` (`pets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='宠物管理系统宠物丢失帮助数据 - 应用'