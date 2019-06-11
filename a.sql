---------------------------------------------------------------
-- MySQL 基础知识
---------------------------------------------------------------


---------------------------------------------------------------
-- init.DDL.sql
-- 初始化操作。创建数据库 test 与表 a
---------------------------------------------------------------
CREATE DATABASE `test`
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci
COMMENT '测试库';

CREATE TABLE `a` (
    -- 列定义
) ENGINE=InnoDB AUTO_INCREMENT=3 CHARACTER SET=utf8mb4
COLLATE=utf8mb4_general_ci
COMMENT='测试库';

---------------------------------------------------------------
-- CHARACTER SET 指定编码。默认的 latin1 是 ISO-8859-1 简称，
-- 未收录中文字符，因此插入中文时会出现乱码。通用的 utf8 可以解决这个问题，
-- 但是插入 emoji 表情时仍然会报错，官方提供的补充字符集 utf8mb4 解决了
-- 这个问题。
-- COLLATE 指定排序规则。指定 general_ci 忽略大小写即可
-- COMMENT 注释。论代码中注释的重要性
-- ENGINE 指定存储引擎。InnoDB 像是 MyISAM 的升级版，支持事务
-- AUTO_INCREMENT 指定开始自增数

-- 参考：
-- 《MYSQL中的COLLATE是什么？》https://www.jianshu.com/p/f8707b8461d3
---------------------------------------------------------------
