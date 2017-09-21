package com.ronglian.security.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ronglian.security.model.SysUserOrganization;
import com.ronglian.security.model.SysUserOrganizationExample;

public interface SysUserOrganizationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int countByExample(SysUserOrganizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int deleteByExample(SysUserOrganizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int insert(SysUserOrganization record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int insertSelective(SysUserOrganization record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    List<SysUserOrganization> selectByExample(SysUserOrganizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    SysUserOrganization selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByExampleSelective(@Param("record") SysUserOrganization record, @Param("example") SysUserOrganizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByExample(@Param("record") SysUserOrganization record, @Param("example") SysUserOrganizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByPrimaryKeySelective(SysUserOrganization record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user_organization
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    int updateByPrimaryKey(SysUserOrganization record);
}