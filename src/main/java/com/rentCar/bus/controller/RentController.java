package com.rentCar.bus.controller;

import com.rentCar.bus.domain.Customer;
import com.rentCar.bus.service.CustomerService;
import com.rentCar.bus.service.RentService;
import com.rentCar.bus.vo.RentVo;
import com.rentCar.sys.constant.SysConstant;
import com.rentCar.sys.domain.User;
import com.rentCar.sys.service.CustomerBusRentService;
import com.rentCar.sys.utils.DataGridView;
import com.rentCar.sys.utils.RandomUtils;
import com.rentCar.sys.utils.ResultObj;
import com.rentCar.sys.utils.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 *汽车出租管理的控制器
 *
 */
@RestController
@RequestMapping("rent")
public class RentController {

    @Autowired
    private RentService rentService;

    @Autowired
    private CustomerService customerService;


    @Autowired
    CustomerBusRentService customerBusRentService;

    /**
     *检查身份证号是否存在
     * @param rentVo
     * @return
     */
    @RequestMapping("checkCustomerExist")
    public ResultObj checkCustomerExist(RentVo rentVo){
        Customer customer = customerService.queryCustomerByIdentity(rentVo.getIdentity());
        if(customer!=null){
            return ResultObj.STATUS_TRUE;
        }else {
            return ResultObj.STATUS_FALSE;
        }

    }

    /**
     * 初始化添加出租单的表单的数据
     * @param rentVo
     * @return
     */
    @RequestMapping("initRentFrom")
    public RentVo initRentFrom(RentVo rentVo){
    //生成出租单号
    rentVo.setRentid(RandomUtils.createRandomStringUseTime(SysConstant.CAR_ORDER_CZ));
    //设置起租时间
    rentVo.setBegindate(new Date());
    //设置操作员
    User user = (User) WebUtils.getHttpSession().getAttribute("user");
    rentVo.setOpername(user.getRealname());
    return rentVo;
    }
    /**
     * 保存出租单信息
     * @param rentVo
     * @return
     */
    @RequestMapping("saveRent")
    public ResultObj saveRent(RentVo rentVo) {
        try {
            //设置创建时间
            rentVo.setCreatetime(new Date());
            //设置归还状态
            rentVo.setRentflag(SysConstant.RENT_BACK_FALSE);
            //保存
            this.rentService.addRent(rentVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /******************出租单管理*******************/
    /**
     * 查询
     */
    @RequestMapping("loadAllRent")
    public DataGridView loadAllRent(RentVo rentVo){
        return this.rentService.queryAllRent(rentVo);
    }

    /**
     * 个人订单查询
     * @param rentVo
     * @return
     */
    @RequestMapping("loadMyselfRent")
    public DataGridView loadMySelfRent(RentVo rentVo){
        return this.rentService.queryMyselfRent(rentVo);
    }

    @RequestMapping("loadCustomerBusRentDetail")
    public DataGridView loadCustomerBusRentDetail(RentVo rentVo){
        return this.customerBusRentService.queryMyselfRentDetail(rentVo);
    }

    /**
     * 删除出租单信息
     * @param rentVo
     * @return
     */
    @RequestMapping("deleteRent")
    public ResultObj deleteRent(RentVo rentVo){
        try {
            //删除
            this.rentService.deleteRent(rentVo.getRentid());
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 修改出租单信息
     * @param rentVo
     * @return
     */
    @RequestMapping("updateRent")
    public ResultObj updateRent(RentVo rentVo){
        try {
            //修改
            this.rentService.updateRent(rentVo);
            return ResultObj.UPDATE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }


}
