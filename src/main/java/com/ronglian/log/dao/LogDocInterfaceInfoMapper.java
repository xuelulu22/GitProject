package com.ronglian.log.dao;

import java.util.List;
import com.ronglian.log.vo.LogDocInterfaceInfo;
import org.apache.ibatis.annotations.Param;

/**
 * TODO
 * @author 
 */
public interface LogDocInterfaceInfoMapper{   
    /**
     * 根据主键查询
     */
    public LogDocInterfaceInfo getLogDocInterfaceInfoById(@Param("id")String id); 

    /**
     * 查询出所有记录
     */
    public List<LogDocInterfaceInfo> findAllLogDocInterfaceInfo();    
    
    /**
     * 保存
     */
    public int saveLogDocInterfaceInfo(LogDocInterfaceInfo logDocInterfaceInfo);
    
    /**
     * 根据主键更新（参数对象中的主键将作为更新条件）
     */
    public int updateLogDocInterfaceInfo(LogDocInterfaceInfo logDocInterfaceInfo);
    
    /**
     * 根据主键删除
     */
    public int deleteLogDocInterfaceInfo(@Param("id")String id);
}

