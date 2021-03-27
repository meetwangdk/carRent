package com.rentCar.bus.mapper;

import com.rentCar.bus.domain.Car;
import com.rentCar.bus.vo.CarVo;

import java.util.List;

public interface CarMapper {
    int deleteByPrimaryKey(String carnumber);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(String carnumber);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    List<Car> queryAllCar(CarVo carVo);

    List<Car> selectGroupByType();

    List<Car> selectGroupByColor();

    List<Car> queryAllCarLike(CarVo carVo);

}