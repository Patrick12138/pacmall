package com.patrick.pacmall.coupon.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.patrick.common.to.SkuReductionTo;
import com.patrick.common.utils.PageUtils;
import com.patrick.pacmall.coupon.entity.SkuFullReductionEntity;

import java.util.Map;

/**
 * 商品满减信息
 *
 * @author patrick
 * @email xuanweihao6@gmail.com
 * @date 2022-04-20 17:20:19
 */
public interface SkuFullReductionService extends IService<SkuFullReductionEntity> {

    PageUtils queryPage(Map<String, Object> params);

    void saveSkuReduction(SkuReductionTo reductionTo);
}

