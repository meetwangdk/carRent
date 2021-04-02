package com.rentCar.sys.service;

import com.alibaba.fastjson.JSONObject;
import com.rentCar.bus.vo.RentVo;
import com.rentCar.sys.utils.DataGridView;

/**
 * @Author 道科
 * @Date 2021/3/26
 */
public interface CustomerBusRentService {
    /**
     * 添加注册记录到用户个人租赁订单中！
     * @param rentVo 接受用户租赁订单中的信息
     */
    void addCustomerBusRent(RentVo rentVo);

    /**
     * 根据用户个人信息查询用户待租赁订单
     * @param rentVo
     * @return
     */
    DataGridView queryMyselfRentDetail(RentVo rentVo);

    /**
     * 根据单个租赁订单号删除订单；
     * @param rentid
     */
    void deleteCustomerBusRent(String rentid);

    /**
     * 根据订单号批量删除
     * @param ids
     */
    void deleteManyCustomerBusRent(String[] ids);

    /**
     * 更新用户待租赁订单详情
     * @param rentVo
     */
    void updateCustomerBusRent(RentVo rentVo);

    /**
     * 用户待租赁订单至租赁订单
     * @param data
     */
    void addCustomerBusRentToRent(String data);
}
