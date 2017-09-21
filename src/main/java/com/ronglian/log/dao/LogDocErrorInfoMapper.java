package com.ronglian.log.dao;

import java.util.List;
import com.ronglian.log.vo.LogDocErrorInfo;
import org.apache.ibatis.annotations.Param;

/**
 * TODO
 * @author 
 */
public interface LogDocErrorInfoMapper{   
    /**
     * 根据主键查询
     */
    public LogDocErrorInfo getLogDocErrorInfoById(@Param("id")String id); 

    /**
     * 查询出所有记录
     */
    public List<LogDocErrorInfo> findAllLogDocErrorInfo();    
    
    /**
     * 保存
     */
    public int saveLogDocErrorInfo(LogDocErrorInfo logDocErrorInfo);
    
    /**
     * 根据主键更新（参数对象中的主键将作为更新条件）
     */
    public int updateLogDocErrorInfo(LogDocErrorInfo logDocErrorInfo);
    
    /**
     * 根据主键删除
     */
    public int deleteLogDocErrorInfo(@Param("id")String id);
}

