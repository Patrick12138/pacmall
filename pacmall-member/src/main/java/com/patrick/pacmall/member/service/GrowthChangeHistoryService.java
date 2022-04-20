package com.patrick.pacmall.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.patrick.common.utils.PageUtils;
import com.patrick.pacmall.member.entity.GrowthChangeHistoryEntity;

import java.util.Map;

/**
 * 成长值变化历史记录
 *
 * @author patrick
 * @email xuanweihao6@gmail.com
 * @date 2022-04-20 17:22:55
 */
public interface GrowthChangeHistoryService extends IService<GrowthChangeHistoryEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

