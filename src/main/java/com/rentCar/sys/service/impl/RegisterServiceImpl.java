package com.rentCar.sys.service.impl;

import com.rentCar.bus.domain.Customer;
import com.rentCar.sys.constant.SysConstant;
import com.rentCar.sys.domain.User;
import com.rentCar.sys.mapper.RegisterMapper;
import com.rentCar.sys.mapper.RoleMapper;
import com.rentCar.sys.mapper.UserMapper;
import com.rentCar.sys.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 道科注册用户
 * @Date 2020/12/16
 */
@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    RegisterMapper registerMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    RoleMapper roleMapper;

    @Override
    public boolean registerCust(Customer customer) {
        customer.setCreatetime(new Date());
        User user = new User();
        user.setUserid(Integer.valueOf(customer.getIdentity()));
        user.setLoginname(customer.getCustname());
        user.setPwd(DigestUtils.md5DigestAsHex(customer.getCustvalue().getBytes()));
        user.setIdentity(customer.getIdentity());
        user.setRealname(customer.getRealname());
        user.setSex(customer.getSex());
        user.setAddress(customer.getAddress());
        user.setPhone(customer.getPhone());
        user.setPosition("客户");
        user.setType(SysConstant.USER_TYPE_NORMAL);
        user.setAvailable(1);
        int i = userMapper.insertSelective(user);
        int register = registerMapper.register(customer);
        this.userMapper.insertUserRole(Integer.valueOf(customer.getIdentity()),5);
        if (register > 0 && i > 0){
            return true;
        }
        return false;
    }
}
