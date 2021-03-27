package com.rentCar.bus.service.impl;

import com.rentCar.bus.domain.Car;
import com.rentCar.bus.mapper.CarMapper;
import com.rentCar.bus.service.CarService;
import com.rentCar.bus.vo.CarVo;
import com.rentCar.sys.constant.SysConstant;
import com.rentCar.sys.utils.AppFileUtils;
import com.rentCar.sys.utils.DataGridView;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CarServiceImpl implements CarService {

    @Autowired
    private CarMapper carMapper;


    /**
     * 查询所有信息
     * @param carVo
     * @return
     */
    @Override
    public DataGridView queryAllCar(CarVo carVo) {
        Page<Object> page = PageHelper.startPage(carVo.getPage(),carVo.getLimit());
        List<Car> data = this.carMapper.queryAllCarLike(carVo);

        return new DataGridView(page.getTotal(),data);
    }

    /**toCarManager.
     * 添加一个车辆
     * @param carVo
     */
    @Override
    public void addCar(CarVo carVo) {
        this.carMapper.insertSelective(carVo);
    }

    /**
     * 更新一个车辆
     * @param carVo
     */
    @Override
    public void updateCar(CarVo carVo) {
        this.carMapper.updateByPrimaryKeySelective(carVo);
    }

    /**
     * 删除一个车辆
     * @param carnumber
     */
    @Override
    public void deleteCar(String carnumber) {
        //先删除图片
        Car car = this.carMapper.selectByPrimaryKey(carnumber);
        //如果不是默认图片就删除
        if (!car.getCarimg().equals(SysConstant.DEFAULT_CAR_IMG)){
            AppFileUtils.deleteFileUsePath(car.getCarimg());
        }
        //删除数据库的数据
        this.carMapper.deleteByPrimaryKey(carnumber);
    }

    /**
     * 批量删除车辆
     * @param carnumbers
     */
    @Override
    public void deleteBatchCar(String[] carnumbers) {
        for (String carnumber : carnumbers) {
            this.deleteCar(carnumber);
        }

    }

    @Override
    public Car queryCarByCarNumber(String carnumber) {
        return this.carMapper.selectByPrimaryKey(carnumber);
    }

    /**
     * 按照类型进行分组
     * @return
     */
    @Override
    public List<Car> selectGroupByType() {
        return this.carMapper.selectGroupByType();
    }

    /**
     * 按照颜色进行分组
     * @return
     */
    @Override
    public List<Car> selectGroupByColor() {
        return this.carMapper.selectGroupByColor();
    }
}
