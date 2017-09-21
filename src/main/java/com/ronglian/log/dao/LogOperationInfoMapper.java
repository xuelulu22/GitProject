package com.ronglian.log.dao;

import java.util.List;
import com.ronglian.log.vo.LogOperationInfo;
import org.apache.ibatis.annotations.Param;

/**
 * TODO
 * @author 
 */
public interface LogOperationInfoMapper{   
    /**
     * 根据主键查询
     */
    public LogOperationInfo getLogOperationInfoById(@Param("id")String id); 

    /**
     * 查询出所有记录
     */
    public List<LogOperationInfo> findAllLogOperationInfo();    
    
    /**
     * 保存
     */
    public int saveLogOperationInfo(LogOperationInfo logOperationInfo);
    
    /**
     * 根据主键更新（参数对象中的主键将作为更新条件）
     */
    public int updateLogOperationInfo(LogOperationInfo logOperationInfo);
    
    /**
     * 根据主键删除
     */
    public int deleteLogOperationInfo(@Param("id")String id);
}

