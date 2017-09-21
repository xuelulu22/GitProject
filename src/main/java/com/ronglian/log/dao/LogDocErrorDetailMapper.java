package com.ronglian.log.dao;

import java.util.List;
import com.ronglian.log.vo.LogDocErrorDetail;
import org.apache.ibatis.annotations.Param;

/**
 * TODO
 * @author 
 */
public interface LogDocErrorDetailMapper{   
    /**
     * 根据主键查询
     */
    public LogDocErrorDetail getLogDocErrorDetailById(@Param("id")String id); 

    /**
     * 查询出所有记录
     */
    public List<LogDocErrorDetail> findAllLogDocErrorDetail();    
    
    /**
     * 保存
     */
    public int saveLogDocErrorDetail(LogDocErrorDetail logDocErrorDetail);
    
    /**
     * 根据主键更新（参数对象中的主键将作为更新条件）
     */
    public int updateLogDocErrorDetail(LogDocErrorDetail logDocErrorDetail);
    
    /**
     * 根据主键删除
     */
    public int deleteLogDocErrorDetail(@Param("id")String id);
}

