package com.rentCar.bus.service;

import com.rentCar.bus.domain.Rent;
import com.rentCar.bus.vo.RentVo;
import com.rentCar.sys.utils.DataGridView;

/**
 *
 */
public interface RentService {

    void addRent(RentVo rentVo);

    /**
     * 查询
     * @param rentVo
     */
    DataGridView queryAllRent(RentVo rentVo);

    /**
     * 修改出租单
     * @param rentVo
     */
    void updateRent(RentVo rentVo);

    /**
     * 删除出租单
     * @param rentid
     */
    void deleteRent(String rentid);

    /**
     * 根据出租单号查询出租单信息
     * @param rentid
     * @return
     */
    Rent queryRentByRentId(String rentid);

    DataGridView queryMyselfRent(RentVo rentVo);
}
