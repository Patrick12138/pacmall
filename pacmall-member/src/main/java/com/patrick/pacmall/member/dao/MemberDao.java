package com.patrick.pacmall.member.dao;

import com.patrick.pacmall.member.entity.MemberEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 会员
 * 
 * @author patrick
 * @email xuanweihao6@gmail.com
 * @date 2022-04-20 17:22:55
 */
@Mapper
public interface MemberDao extends BaseMapper<MemberEntity> {
	List<MemberEntity> listAll();
}
