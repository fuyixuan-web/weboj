package cn.wzy.producer.service.impl;

import cn.wzy.producer.dao.JudgeMapper;
import cn.wzy.producer.entity.OnlineJudgeQuestionLibraryEntity;
import cn.wzy.producer.service.JudgeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JudgeServiceImpl implements JudgeService{

    @Autowired
    private JudgeMapper judgeMapper;

	@Override
	public OnlineJudgeQuestionLibraryEntity getLib(Integer libraryId) {
		// TODO Auto-generated method stub
		return judgeMapper.selectById(libraryId);
	}

}
