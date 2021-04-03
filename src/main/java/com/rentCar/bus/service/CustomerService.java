package com.rentCar.bus.service;


import com.rentCar.bus.domain.Customer;
import com.rentCar.bus.vo.CustomerVo;
import com.rentCar.sys.utils.DataGridView;

import java.util.List;

public interface CustomerService {

    /**
     * 查询所有客户
     * @param customerVo
     * @return
     */
    public DataGridView queryAllCustomer(CustomerVo customerVo);

    /**
     * 添加客户
     * @param customerVo
     */
    public void addCustomer(CustomerVo customerVo);

    /**
     * 修改客户
     * @param customerVo
     */
    public void updateCustomer(CustomerVo customerVo);

    /**
     * 删除客户
     * @param identity
     */
    public void deleteCustomer(String identity);

    /**
     * 批量删除客户
     * @param identitys
     */
    public void deleteBatchCustomer(String[] identitys);

    /**
     * 根据身份号查询客户信息
     * @param identity
     * @return
     */
    public Customer queryCustomerByIdentity(String identity);

    /**
     * 查询客户数据返回集合
     * @param customerVo
     * @return
     */
    List<Customer> queryAllCustomerForList(CustomerVo customerVo);

    /**
     * 修改用户相关信息
     * @param customer
     */
    void updateCustomerMassage(Customer customer);

    String getCareer(String identity);
}
