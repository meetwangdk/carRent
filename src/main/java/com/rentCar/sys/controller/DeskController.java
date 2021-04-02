package com.rentCar.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Files;
import java.nio.file.LinkOption;

/**
 * 工作台控制器
 *
 */
@Controller
@RequestMapping("desk")
public class DeskController {

    /**
     * 跳转到工作台的页面
     * @return
     */
    @RequestMapping("toDeskManager")
    public String toDeskManager(){
        return "system/main/deskManger";
    }
}
