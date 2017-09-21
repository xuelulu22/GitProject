package com.ronglian.log.dao;

import java.util.List;
import com.ronglian.log.vo.DocRegister;
import org.apache.ibatis.annotations.Param;

/**
 * TODO
 * @author 
 */
public interface DocRegisterMapper{   
    /**
     * 根据主键查询
     */
    public DocRegister getDocRegisterById(@Param("id")String id); 

    /**
     * 查询出所有记录
     */
    public List<DocRegister> findAllDocRegister();    
    
    /**
     * 保存
     */
    public int saveDocRegister(DocRegister docRegister);
    
    /**
     * 根据主键更新（参数对象中的主键将作为更新条件）
     */
    public int updateDocRegister(DocRegister docRegister);
    
    /**
     * 根据主键删除
     */
    public int deleteDocRegister(@Param("id")String id);
}

