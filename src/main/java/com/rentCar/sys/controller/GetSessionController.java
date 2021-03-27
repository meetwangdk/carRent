package com.rentCar.sys.controller;

import com.rentCar.sys.domain.User;
import com.rentCar.sys.utils.WebUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author 道科
 * @Date 2021/3/18
 */
@RestController
@RequestMapping("session")
public class GetSessionController {
    @GetMapping("getSession")
    public Object getSession(HttpServletRequest request){
        User user = (User) WebUtils.getHttpSession().getAttribute("user");
        return user;
    }
}
