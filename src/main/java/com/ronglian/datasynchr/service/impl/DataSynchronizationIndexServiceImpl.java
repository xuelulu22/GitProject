package com.ronglian.datasynchr.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ronglian.datasynchr.service.DataSynchronizationIndexService;

@Service
public class DataSynchronizationIndexServiceImpl implements DataSynchronizationIndexService {

	/**
	 * 方法描述： 数据同步主入口
	 * 第一步：获取上次同步时间
	 * 第二步：获取已有患者的新门诊，新住院信息
	 * 第三部：获取新的患者
	 * 第四步：获取新患者的住院和门诊信息
	 * 第五步：更新同步时间
	 * 第六步：更新时间轴的表
	 * 第七步：记录日志
	 * 创建人：linbin   
	 * 创建时间：2016年8月31日 下午9:56:39      
	 * @version
	 */
	@Override
	@Transactional
	public void dataSynchronization(){
		/****第一步：获取上次同步时间*****/
		
		/****第二步：获取已有患者的新门诊，新住院信息*****/
		
		/****第三部：获取新的患者*****/
		
		/****第四步：获取新患者的住院和门诊信息*****/
		
		/****第五步：更新同步时间*****/
		
		/****第六步：更新时间轴的表*****/
		
		/****第七步：记录日志*****/
		
	}
}
