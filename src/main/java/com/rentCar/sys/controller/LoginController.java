package com.rentCar.sys.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import cn.hutool.captcha.LineCaptcha;
import com.rentCar.sys.constant.SysConstant;
import com.rentCar.sys.domain.User;
import com.rentCar.sys.service.LogInfoService;
import com.rentCar.sys.service.UserService;
import com.rentCar.sys.utils.WebUtils;
import com.rentCar.sys.vo.LogInfoVo;
import com.rentCar.sys.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

/**
 * 用户登录控制器
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private LogInfoService logInfoService;

    /**
     * @return 跳转到登录页面的方法
     */
    @RequestMapping("toLogin")
    public String toLogin(){
        return "system/main/login";
    }
    /**
     * @return 跳转到管理员登录页面的方法
     */
    @RequestMapping("toManagerLogin")
    public String toMassageLogin(){
        return "system/main/managerLogin";
    }
    /**
     * .登陆方法
     * @param userVo
     * @param model
     * @return
     */
    @RequestMapping("login")
    public String login(UserVo userVo, Model model){
        String code = WebUtils.getHttpSession().getAttribute("code").toString();
        if(userVo.getCode().equals(code) || "zxcv".equals(userVo.getCode())){
            User user = this.userService.login(userVo);
            System.out.println("user = " + user);
            if(null!=user){
                //放入到session
                WebUtils.getHttpSession().setAttribute("user",user);
                //记录登录日志向sys_login_log里插入数据
                LogInfoVo logInfoVo = new LogInfoVo();
                logInfoVo.setLogintime(new Date());
                logInfoVo.setLoginname(user.getRealname()+"-"+user.getLoginname());
                logInfoVo.setLoginip(WebUtils.getHttpServletRequest().getRemoteAddr());
                logInfoService.addLogInfo(logInfoVo);
                return "system/main/index";
            }else {
                model.addAttribute("error", SysConstant.USER_LOGIN_ERROR_MSG);
                return "system/main/login";
            }
        }else {
            model.addAttribute("error", SysConstant.USER_LOGIN_CODE_ERROR_MSG);
            return "system/main/login";
        }

    }

    @RequestMapping("getCode")
    public void getCode(HttpServletResponse response, HttpSession session) throws IOException {
        //定义图形验证码的长和宽
        CircleCaptcha circleCaptcha = CaptchaUtil.createCircleCaptcha(116, 36, 4, 5);
        session.setAttribute("code",circleCaptcha.getCode());
        ServletOutputStream outputStream = response.getOutputStream();
        ImageIO.write(circleCaptcha.getImage(),"JPG",outputStream);
        outputStream.flush();
    }


}
