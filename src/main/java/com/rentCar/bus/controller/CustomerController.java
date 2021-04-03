package com.rentCar.bus.controller;

import com.rentCar.bus.domain.Customer;
import com.rentCar.bus.mapper.CustomerMapper;
import com.rentCar.bus.service.CustomerService;
import com.rentCar.bus.vo.CustomerVo;
import com.rentCar.sys.constant.SysConstant;
import com.rentCar.sys.domain.User;
import com.rentCar.sys.mapper.UserMapper;
import com.rentCar.sys.utils.DataGridView;
import com.rentCar.sys.utils.ResultObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;

@RestController
@RequestMapping("customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    @Autowired
    private UserMapper userMapper;

    /**
     * 加载客户列表返回DataGridView
     * @param customerVo
     * @return
     */
    @RequestMapping("loadAllCustomer")
    public DataGridView loadAllCustomer(CustomerVo customerVo){
        return this.customerService.queryAllCustomer(customerVo);
    }

    /**
     * 添加一个客户
     * @param customerVo
     * @return
     */
    @RequestMapping("addCustomer")
    public ResultObj addCustomer(CustomerVo customerVo){
        try{
            customerVo.setCreatetime(new Date());
            customerVo.setCustvalue(SysConstant.USER_DEFAULT_PWD);
            this.customerService.addCustomer(customerVo);
            return ResultObj.ADD_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改一个客户
     * @param customerVo
     * @return
     */
    @RequestMapping("updateCustomer")
    public ResultObj updateCustomer(CustomerVo customerVo){
        try{
            this.customerService.updateCustomer(customerVo);
            return ResultObj.UPDATE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除一个客户
     * @param customerVo
     * @return
     */
    @RequestMapping("deleteCustomer")
    public ResultObj deleteCustomer(CustomerVo customerVo){
        try {
            this.customerService.deleteCustomer(customerVo.getIdentity());
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除客户
     * @param customerVo
     * @return
     */
    @RequestMapping("deleteBatchCustomer")
    public ResultObj deleteBatchCustomer(CustomerVo customerVo){
        try{
            this.customerService.deleteBatchCustomer(customerVo.getIds());
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 修改客户的相关信息
     * @param customer
     * @return
     */
    @RequestMapping("updateCustomerMassage")
    public ResultObj updateCustomerMassage(Customer customer){
        try {
            customerService.updateCustomerMassage(customer);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }
    @RequestMapping(value = "getCareer",produces = "text/plain;charset=utf-8")
    public String getCareer(String identity) throws UnsupportedEncodingException {
        return customerService.getCareer(identity);
    }
}
