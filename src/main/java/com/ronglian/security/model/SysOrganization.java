package com.ronglian.security.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("SysOrganization")
public class SysOrganization {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.ORGANIZATION_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String organizationId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.ORGANIZATION_NAME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String organizationName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.ORGANIZATION_ADDRESS
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String organizationAddress;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.ORGANIZATION_CODE
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String organizationCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.ORGANIZATION_CODE_SEQ
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Integer organizationCodeSeq;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Byte flag;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Date addtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String addby;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Date updatetime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String updateby;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.ORGANIZATION_ID
     *
     * @return the value of sys_organization.ORGANIZATION_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getOrganizationId() {
        return organizationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.ORGANIZATION_ID
     *
     * @param organizationId the value for sys_organization.ORGANIZATION_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.ORGANIZATION_NAME
     *
     * @return the value of sys_organization.ORGANIZATION_NAME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getOrganizationName() {
        return organizationName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.ORGANIZATION_NAME
     *
     * @param organizationName the value for sys_organization.ORGANIZATION_NAME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.ORGANIZATION_ADDRESS
     *
     * @return the value of sys_organization.ORGANIZATION_ADDRESS
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getOrganizationAddress() {
        return organizationAddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.ORGANIZATION_ADDRESS
     *
     * @param organizationAddress the value for sys_organization.ORGANIZATION_ADDRESS
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setOrganizationAddress(String organizationAddress) {
        this.organizationAddress = organizationAddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.ORGANIZATION_CODE
     *
     * @return the value of sys_organization.ORGANIZATION_CODE
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getOrganizationCode() {
        return organizationCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.ORGANIZATION_CODE
     *
     * @param organizationCode the value for sys_organization.ORGANIZATION_CODE
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setOrganizationCode(String organizationCode) {
        this.organizationCode = organizationCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.ORGANIZATION_CODE_SEQ
     *
     * @return the value of sys_organization.ORGANIZATION_CODE_SEQ
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Integer getOrganizationCodeSeq() {
        return organizationCodeSeq;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.ORGANIZATION_CODE_SEQ
     *
     * @param organizationCodeSeq the value for sys_organization.ORGANIZATION_CODE_SEQ
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setOrganizationCodeSeq(Integer organizationCodeSeq) {
        this.organizationCodeSeq = organizationCodeSeq;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.FLAG
     *
     * @return the value of sys_organization.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Byte getFlag() {
        return flag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.FLAG
     *
     * @param flag the value for sys_organization.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setFlag(Byte flag) {
        this.flag = flag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.ADDTIME
     *
     * @return the value of sys_organization.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Date getAddtime() {
        return addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.ADDTIME
     *
     * @param addtime the value for sys_organization.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.ADDBY
     *
     * @return the value of sys_organization.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getAddby() {
        return addby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.ADDBY
     *
     * @param addby the value for sys_organization.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setAddby(String addby) {
        this.addby = addby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.UPDATETIME
     *
     * @return the value of sys_organization.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Date getUpdatetime() {
        return updatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.UPDATETIME
     *
     * @param updatetime the value for sys_organization.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization.UPDATEBY
     *
     * @return the value of sys_organization.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getUpdateby() {
        return updateby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization.UPDATEBY
     *
     * @param updateby the value for sys_organization.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUpdateby(String updateby) {
        this.updateby = updateby;
    }
}