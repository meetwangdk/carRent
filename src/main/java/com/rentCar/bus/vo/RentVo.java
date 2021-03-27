package com.rentCar.bus.vo;

import com.rentCar.bus.domain.Rent;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class RentVo extends Rent {

    /**
     * 分页参数
     */
    private Integer page;
    private Integer limit;
    private String identity;
    private String[] rentIds;
    /**
     * 扩展表单参数  将前台时间提交到后台
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;



    @Override
    public String getIdentity() {
        return identity;
    }
    @Override
    public void setIdentity(String identity) {
        this.identity = identity;
    }
    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public String[] getRentIds() {
        return rentIds;
    }

    public void setRentIds(String[] rentIds) {
        this.rentIds = rentIds;
    }
}
