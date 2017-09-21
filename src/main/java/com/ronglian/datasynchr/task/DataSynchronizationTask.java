package com.ronglian.datasynchr.task;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.ronglian.datasynchr.service.DataSynchronizationIndexService;

/**
 * 
 * 项目名称：changhai   
 * 类名称：DataSynchronizationTask   
 * 类描述：   数据同步程序
 * 创建人：linbin   
 * 创建时间：2016年9月7日 下午6:03:52      
 * @version
 */
@Component
public class DataSynchronizationTask {

	@Resource
	private DataSynchronizationIndexService dataSynchronizationIndexService;
	
	public synchronized void execute(){
		System.out.println("1111");
		dataSynchronizationIndexService.dataSynchronization();
    }
}
