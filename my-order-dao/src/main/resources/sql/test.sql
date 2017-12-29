CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8mb4;

use test;

CREATE TABLE `test` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增长主键id',
    `user_name` VARCHAR(50) NOT NULL COMMENT '用户名',
    `password` VARCHAR(50) NOT NULL COMMENT '用户密码',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `unique_idx_user_name` (`user_name`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COMMENT='用户表';