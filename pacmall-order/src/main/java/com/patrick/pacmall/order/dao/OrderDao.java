package com.patrick.pacmall.order.dao;

import com.patrick.pacmall.order.entity.OrderEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 订单
 * 
 * @author patrick
 * @email xuanweihao6@gmail.com
 * @date 2022-04-20 17:12:03
 */
@Mapper
public interface OrderDao extends BaseMapper<OrderEntity> {
	
}
