package com.ronglian.security.model;

import java.util.Date;

public class SysOrganizationResource {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private byte[] id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Byte flag;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Date addtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Date updatetime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.ID
     *
     * @return the value of sys_organization_resource.ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public byte[] getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.ID
     *
     * @param id the value for sys_organization_resource.ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setId(byte[] id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.FLAG
     *
     * @return the value of sys_organization_resource.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Byte getFlag() {
        return flag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.FLAG
     *
     * @param flag the value for sys_organization_resource.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setFlag(Byte flag) {
        this.flag = flag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.ADDTIME
     *
     * @return the value of sys_organization_resource.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Date getAddtime() {
        return addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.ADDTIME
     *
     * @param addtime the value for sys_organization_resource.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.UPDATETIME
     *
     * @return the value of sys_organization_resource.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Date getUpdatetime() {
        return updatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.UPDATETIME
     *
     * @param updatetime the value for sys_organization_resource.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}