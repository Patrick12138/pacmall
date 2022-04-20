package com.patrick.pacmall.coupon.dao;

import com.patrick.pacmall.coupon.entity.SkuLadderEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 商品阶梯价格
 * 
 * @author patrick
 * @email xuanweihao6@gmail.com
 * @date 2022-04-20 17:20:19
 */
@Mapper
public interface SkuLadderDao extends BaseMapper<SkuLadderEntity> {
	
}
