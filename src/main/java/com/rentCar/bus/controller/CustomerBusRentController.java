package com.rentCar.bus.controller;

import cn.hutool.json.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.rentCar.bus.mapper.RentMapper;
import com.rentCar.bus.vo.RentVo;
import com.rentCar.sys.constant.SysConstant;
import com.rentCar.sys.service.CustomerBusRentService;
import com.rentCar.sys.utils.ResultObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * @Author 道科
 * @Date 2021/3/26
 */
@Controller
@RequestMapping("/customerRent")
public class CustomerBusRentController {
    /**
     * 加入用户待租赁订单的service层依赖
     */
    @Autowired
    private CustomerBusRentService customerBusRentService;

    /**
     * 添加车辆租赁信息到租赁清单中！
     * @param rentVo
     * @return
     */
    @RequestMapping("/saveCustomerBusRent")
    @ResponseBody
    public ResultObj saveCustomerBusRent(RentVo rentVo) {
        try {
            //设置创建时间
            rentVo.setCreatetime(new Date());
            //设置归还状态
            rentVo.setRentflag(SysConstant.RENT_BACK_FALSE);
            //保存
            customerBusRentService.addCustomerBusRent(rentVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 跳转个人到车辆出租
     * @return
     */
    @RequestMapping("toCustomerBusRentDetail")
    public String toRentMyselfCarManager(){
        return "business/customer/customerBusRent";
    }

    /**
     * 删除用户待租赁订单，同时将占用汽车标志位更改！
     * @param rentVo
     * @return
     */
    @RequestMapping("deleteCustomerBusRent")
    @ResponseBody
    public ResultObj deleteRent(RentVo rentVo){
        try {
            this.customerBusRentService.deleteCustomerBusRent(rentVo.getRentid());
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量添加用户待租赁订单到订单模块当中
     * @param req
     * @return
     */
    @RequestMapping("addCustomerBusRent")
    @ResponseBody
    public ResultObj addCustomerBusRentToRent(HttpServletRequest req){
        try {
            String data = req.getParameter("dataMsg");
            customerBusRentService.addCustomerBusRentToRent(data);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 批量删除用户待租赁订单中的内容
     * @param rentVo
     * @return
     */
    @RequestMapping("deleteManyCustomerBusRent")
    @ResponseBody
    public ResultObj deleteManyCustomerBusRent(RentVo rentVo){
        try{
            this.customerBusRentService.deleteManyCustomerBusRent(rentVo.getRentIds());
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


    /**
     * 修改客户待租赁订单
     * @param rentVo
     * @return
     */
    @RequestMapping("updateCustomerBusRent")
    @ResponseBody
    public ResultObj updateRent(RentVo rentVo){
        try {
            //修改
            this.customerBusRentService.updateCustomerBusRent(rentVo);
            return ResultObj.UPDATE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

}
