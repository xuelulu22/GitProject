package com.ronglian.security.model;

public class SysOrganizationResourceWithBLOBs extends SysOrganizationResource {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.ORGANIZATION_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private byte[] organizationId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.RESOURCE_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private byte[] resourceId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private byte[] addby;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_organization_resource.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    private byte[] updateby;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.ORGANIZATION_ID
     *
     * @return the value of sys_organization_resource.ORGANIZATION_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public byte[] getOrganizationId() {
        return organizationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.ORGANIZATION_ID
     *
     * @param organizationId the value for sys_organization_resource.ORGANIZATION_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setOrganizationId(byte[] organizationId) {
        this.organizationId = organizationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.RESOURCE_ID
     *
     * @return the value of sys_organization_resource.RESOURCE_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public byte[] getResourceId() {
        return resourceId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.RESOURCE_ID
     *
     * @param resourceId the value for sys_organization_resource.RESOURCE_ID
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setResourceId(byte[] resourceId) {
        this.resourceId = resourceId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.ADDBY
     *
     * @return the value of sys_organization_resource.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public byte[] getAddby() {
        return addby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.ADDBY
     *
     * @param addby the value for sys_organization_resource.ADDBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setAddby(byte[] addby) {
        this.addby = addby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_organization_resource.UPDATEBY
     *
     * @return the value of sys_organization_resource.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public byte[] getUpdateby() {
        return updateby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_organization_resource.UPDATEBY
     *
     * @param updateby the value for sys_organization_resource.UPDATEBY
     *
     * @mbggenerated Wed Jul 13 16:33:37 CST 2016
     */
    public void setUpdateby(byte[] updateby) {
        this.updateby = updateby;
    }
}