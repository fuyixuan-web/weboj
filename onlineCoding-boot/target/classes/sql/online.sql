
use zhehang;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `online_judge_question_library`
-- ----------------------------
DROP TABLE IF EXISTS `online_judge_question_library`;
CREATE TABLE `online_judge_question_library` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '题目名称',
  `topic_details` varchar(2000) DEFAULT NULL COMMENT '题目内容',
  `difficulty` int(2) DEFAULT NULL COMMENT '难易程度(1简单 2中等 3困难)',
  `judge_id` varchar(50) DEFAULT NULL COMMENT '题型ID',
  `time_limit` bigint(8) DEFAULT NULL COMMENT '时间限制(单位:ms)',
  `memory_limit` bigint(8) DEFAULT NULL COMMENT '内存限制(单位:kb)',
  `input` varchar(512) DEFAULT NULL COMMENT '输入',
  `output` varchar(512) DEFAULT NULL COMMENT '输出',
  `sample_input` varchar(1000) DEFAULT NULL COMMENT '样例输入',
  `sample_output` varchar(1000) DEFAULT NULL COMMENT '样例输出',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `backup1` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `backup2` varchar(255) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of online_judge_question_library
-- ----------------------------
INSERT INTO `online_judge_question_library` VALUES ('1', '字符串处理', '输入一段文章，返回文章内出现次数最多的单词，和出现最少的单词。单词不分大小写，单词 以逗号，句号或空格分隔。', '1', '5|8', '4000', '65535', '', '', '[{\"input\":\"hello world hello china hello world\"},{\"input\":\"你好，世界。你好，中国。你好，世界。\"}]', '[{\"output\":\"hello china\"},{\"output\":\"你好 中国\"}]', '2021-05-08 14:33:02', '2021-05-08 14:33:02', '', '');

-- ----------------------------
-- Table structure for `online_judge_result`
-- ----------------------------
DROP TABLE IF EXISTS `online_judge_result`;
CREATE TABLE `online_judge_result` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(32) DEFAULT NULL COMMENT '用户code',
  `team_id` int(8) DEFAULT NULL COMMENT '团队ID',
  `problem_id` int(8) DEFAULT NULL COMMENT '题目ID',
  `submit_id` int(8) DEFAULT NULL COMMENT '提交次数ID',
  `result_status` int(2) DEFAULT NULL COMMENT '判题结果状态',
  `time_used` decimal(16,2) DEFAULT NULL COMMENT '时间消耗(单位:ms)',
  `memory_used` bigint(8) DEFAULT NULL COMMENT '内存消耗(单位:kb)',
  `code_content` text COMMENT '提交代码内容',
  `code_lines` int(8) DEFAULT NULL COMMENT '代码行数',
  `output_result` text COMMENT '运行结果',
  `error_message` text COMMENT '错误信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `judge_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21405 DEFAULT CHARSET=utf8 COMMENT='OJ判题结果表';

-- ----------------------------
-- Records of online_judge_result
-- ----------------------------
