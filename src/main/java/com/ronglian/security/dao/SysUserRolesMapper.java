package com.ronglian.security.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ronglian.security.model.SysUserRoles;
import com.ronglian.security.model.SysUserRolesExample;

public interface SysUserRolesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int countByExample(SysUserRolesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int deleteByExample(SysUserRolesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int insert(SysUserRoles record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int insertSelective(SysUserRoles record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    List<SysUserRoles> selectByExample(SysUserRolesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    SysUserRoles selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByExampleSelective(@Param("record") SysUserRoles record, @Param("example") SysUserRolesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByExample(@Param("record") SysUserRoles record, @Param("example") SysUserRolesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByPrimaryKeySelective(SysUserRoles record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_roles
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByPrimaryKey(SysUserRoles record);
}