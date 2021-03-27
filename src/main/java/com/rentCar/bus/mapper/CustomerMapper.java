package com.rentCar.bus.mapper;

import com.rentCar.bus.domain.Customer;
import com.rentCar.bus.vo.RentVo;

import java.util.List;
import java.util.Map;

public interface CustomerMapper {
    int deleteByPrimaryKey(String identity);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(String identity);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);


    /**
     * 查询
     * @param customer
     * @return
     */
    List<Customer> queryAllCustomer(Customer customer);

    int updateByIdentity(Map map);
    //添加用户个人租赁订单到customer_bus_rent表中
    void insertCustomerBusRent(RentVo rentVo);
}