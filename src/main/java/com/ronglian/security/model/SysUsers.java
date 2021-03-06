package com.ronglian.security.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("SysUsers")
public class SysUsers {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.USER_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String userId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.USER_ACCOUNT
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String userAccount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.USER_NAME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String userName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.USER_PASSWORD
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String userPassword;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Byte flag;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Date addtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String addby;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private Date updatetime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_users.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private String updateby;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.USER_ID
     *
     * @return the value of sys_users.USER_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.USER_ID
     *
     * @param userId the value for sys_users.USER_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.USER_ACCOUNT
     *
     * @return the value of sys_users.USER_ACCOUNT
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getUserAccount() {
        return userAccount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.USER_ACCOUNT
     *
     * @param userAccount the value for sys_users.USER_ACCOUNT
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.USER_NAME
     *
     * @return the value of sys_users.USER_NAME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getUserName() {
        return userName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.USER_NAME
     *
     * @param userName the value for sys_users.USER_NAME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.USER_PASSWORD
     *
     * @return the value of sys_users.USER_PASSWORD
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.USER_PASSWORD
     *
     * @param userPassword the value for sys_users.USER_PASSWORD
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.FLAG
     *
     * @return the value of sys_users.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Byte getFlag() {
        return flag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.FLAG
     *
     * @param flag the value for sys_users.FLAG
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setFlag(Byte flag) {
        this.flag = flag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.ADDTIME
     *
     * @return the value of sys_users.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Date getAddtime() {
        return addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.ADDTIME
     *
     * @param addtime the value for sys_users.ADDTIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.ADDBY
     *
     * @return the value of sys_users.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getAddby() {
        return addby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.ADDBY
     *
     * @param addby the value for sys_users.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setAddby(String addby) {
        this.addby = addby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.UPDATETIME
     *
     * @return the value of sys_users.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public Date getUpdatetime() {
        return updatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.UPDATETIME
     *
     * @param updatetime the value for sys_users.UPDATETIME
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_users.UPDATEBY
     *
     * @return the value of sys_users.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public String getUpdateby() {
        return updateby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_users.UPDATEBY
     *
     * @param updateby the value for sys_users.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUpdateby(String updateby) {
        this.updateby = updateby;
    }
}