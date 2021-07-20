package cn.wzy.producer.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotations.TableName;

import lombok.Data;

@TableName("online_judge_question_library")
@Data
public class OnlineJudgeQuestionLibraryEntity {
	private Integer id;

	private String title;

	private String topicDetails;
	
	private String judgeId;

	private String input;

	private String output;

	private String sampleInput;

	private String sampleOutput;
 
	private Date createTime;
	private Date updateTime;

	private String backup1;

	private String backup2;

}
