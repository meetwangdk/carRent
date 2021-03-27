package com.rentCar.sys.controller;

import com.rentCar.bus.domain.Customer;
import com.rentCar.sys.service.RegisterService;
import com.rentCar.sys.utils.ResultObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author 道科
 * @Date 2020/11/16
 * 用户注册控制器
 */
@Controller
@RequestMapping("register")
public class RegisterController {
    @Autowired
    RegisterService registerService;
    @RequestMapping("/registerCust")
    @ResponseBody
    @Transactional
    public ResultObj register(Customer customer){

        boolean flag = registerService.registerCust(customer);
        if (flag){
            return ResultObj.ADD_SUCCESS;
        }
        return ResultObj.ADD_ERROR;
    }
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "system/main/register";
    }
}
