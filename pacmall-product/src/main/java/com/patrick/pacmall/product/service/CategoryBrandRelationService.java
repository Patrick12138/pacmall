package com.patrick.pacmall.product.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.patrick.common.utils.PageUtils;
import com.patrick.pacmall.product.entity.CategoryBrandRelationEntity;

import java.util.Map;

/**
 * 品牌分类关联
 *
 * @author patrick
 * @email xuanweihao6@gmail.com
 * @date 2022-04-20 17:06:48
 */
public interface CategoryBrandRelationService extends IService<CategoryBrandRelationEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

