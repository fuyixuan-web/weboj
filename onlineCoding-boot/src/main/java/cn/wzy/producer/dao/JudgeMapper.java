package cn.wzy.producer.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;

import cn.wzy.producer.entity.OnlineJudgeQuestionLibraryEntity;


public interface JudgeMapper extends BaseMapper<OnlineJudgeQuestionLibraryEntity>{

    OnlineJudgeQuestionLibraryEntity selectById(Integer libraryId);
}
