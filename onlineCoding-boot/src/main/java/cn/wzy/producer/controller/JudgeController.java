package cn.wzy.producer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONObject;

import cn.wzy.producer.entity.OnlineJudgeQuestionLibraryEntity;
import cn.wzy.producer.service.JudgeService;
import cn.wzy.producer.utils.Result;
import lombok.extern.log4j.Log4j;

@RestController
@CrossOrigin
@Log4j
public class JudgeController {

	@Autowired
	private JudgeService judgeService;

	@PostMapping("/getLib")
	public Result<?> getLib(@RequestBody String param) {
		JSONObject bodyJson = JSONObject.parseObject(param);
		Integer libraryId = bodyJson.getInteger("libraryId"); 
		
		OnlineJudgeQuestionLibraryEntity entity = judgeService.getLib(libraryId);
		return Result.OK(entity);
		
	}


}
