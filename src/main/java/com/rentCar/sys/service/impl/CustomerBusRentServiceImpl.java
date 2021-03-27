package com.rentCar.sys.service.impl;

import cn.hutool.Hutool;
import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rentCar.bus.domain.Car;
import com.rentCar.bus.domain.Customer;
import com.rentCar.bus.domain.Rent;
import com.rentCar.bus.mapper.CarMapper;
import com.rentCar.bus.mapper.CustomerBusRentMapper;
import com.rentCar.bus.mapper.CustomerMapper;
import com.rentCar.bus.mapper.RentMapper;
import com.rentCar.bus.vo.RentVo;
import com.rentCar.sys.constant.SysConstant;
import com.rentCar.sys.service.CustomerBusRentService;
import com.rentCar.sys.utils.DataGridView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Author 道科
 * @Date 2021/3/26
 */
@Service
public class CustomerBusRentServiceImpl implements CustomerBusRentService {
    @Autowired
    private CustomerMapper customerMapper;
    @Autowired
    private CarMapper carMapper;
    @Autowired
    private CustomerBusRentMapper customerBusRentMapper;
    @Autowired
    private RentMapper rentMapper;


    @Override
    public void addCustomerBusRent(RentVo rentVo) {
        //更改车辆出租的状态
        Car car = new Car();
        car.setCarnumber(rentVo.getCarnumber());
        //设置状态为已出租
        car.setIsrenting(SysConstant.RENT_BACK_TRUE);
        carMapper.updateByPrimaryKeySelective(car);
//        rentVo.setRentflag(1);
        this.customerMapper.insertCustomerBusRent(rentVo);
    }

    /**
     * 根据用户id查询数据库中的待租赁订单
     * @param rentVo
     * @return
     */
    @Override
    public DataGridView queryMyselfRentDetail(RentVo rentVo) {
        Page<Object> page = PageHelper.startPage(rentVo.getPage(),rentVo.getLimit());
        List<RentVo> data = this.customerBusRentMapper.queryCustomerBusRentDetail(rentVo);
        return new DataGridView(page.getTotal(),data);
    }

    /**
     * 根据待租赁订单id删除待租赁订单中的数据
     * @param rentid
     */
    @Override
    @Transactional
    public void deleteCustomerBusRent(String rentid) {
        Rent rent = this.customerBusRentMapper.selectByPrimaryKey(rentid);
        Car car = new Car();
        car.setCarnumber(rent.getCarnumber());
        //转换成未出租的状态
        car.setIsrenting(SysConstant.RENT_CAR_FALSE);
        carMapper.updateByPrimaryKeySelective(car);
        customerBusRentMapper.deleteCustomerBusRent(rentid);
    }

    @Override
    public void deleteManyCustomerBusRent(String[] rentIds) {
        for (String rentid : rentIds){
            Rent rent = this.customerBusRentMapper.selectByPrimaryKey(rentid);
            Car car = new Car();
            car.setCarnumber(rent.getCarnumber());
            //转换成未出租的状态
            car.setIsrenting(SysConstant.RENT_CAR_FALSE);
            carMapper.updateByPrimaryKeySelective(car);
            customerBusRentMapper.deleteCustomerBusRent(rentid);
        }
    }

    @Override
    public void updateCustomerBusRent(RentVo rentVo) {
        customerBusRentMapper.updateCustomerBusRent(rentVo);
    }

    /**
     * 批量添加待租赁订单至租赁订单
     * @param data
     */
    @Override
    @Transactional
    public void addCustomerBusRentToRent(String data) {
        List<Map<String, Object>> list = JSONObject.
                parseObject(data, new TypeReference<List<Map<String, Object>>>() {});
        System.out.println("-------------------------------------"+list);
        for (Map<String, Object> stringObjectMap : list) {
            String newDate = DateUtil.formatDateTime(new Date());
            stringObjectMap.put("createtime",newDate);
            rentMapper.insertMap(stringObjectMap);
            customerBusRentMapper.deleteCustomerBusRent((String) stringObjectMap.get("rentid"));
        }
    }
}
