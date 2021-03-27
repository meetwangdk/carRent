package com.rentCar.bus.mapper;

import com.rentCar.bus.domain.Rent;
import com.rentCar.bus.vo.RentVo;

import java.util.List;
import java.util.Map;

public interface RentMapper {
    int deleteByPrimaryKey(String rentid);

    int insert(Rent record);

    int insertSelective(Rent record);

    Rent selectByPrimaryKey(String rentid);

    int updateByPrimaryKeySelective(Rent record);

    int updateByPrimaryKey(Rent record);

    /**
     * @return 查询
     */
    List<Rent> queryAllRent(Rent rent);

    List<Rent> queryMyselfRent(RentVo rentVo);

    int insertMap(Map<String, Object> customerRentMap);
}