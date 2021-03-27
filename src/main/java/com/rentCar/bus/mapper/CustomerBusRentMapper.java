package com.rentCar.bus.mapper;

import com.rentCar.bus.domain.Rent;
import com.rentCar.bus.vo.RentVo;

import java.util.List;

/**
 * @Author 道科
 * @Date 2021/3/26
 */
public interface CustomerBusRentMapper {

    /**
     * 通过用户身份信息查询用户待租赁订单
     * @return
     */
    List<RentVo> queryCustomerBusRentDetail(RentVo rentVo);

    void deleteCustomerBusRent(String rentid);

    Rent selectByPrimaryKey(String rentid);

    void updateCustomerBusRent(RentVo rentVo);
}
