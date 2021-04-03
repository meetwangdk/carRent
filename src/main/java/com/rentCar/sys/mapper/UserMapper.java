package com.rentCar.sys.mapper;

import com.rentCar.bus.domain.Customer;
import com.rentCar.sys.domain.User;
import com.rentCar.sys.vo.UserVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 */
public interface UserMapper {

    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /*
     *登录
     * */
    User login(User user);

    List<User> queryAllUser(User user);

    /**
     * 保存用户和角色的关系
     * @param userid
     * @param rid
     */
    void insertUserRole(@Param("uid") Integer userid, @Param("rid") Integer rid);

    /**
     * 删除角色关联关系
     * @param uid
     */
    void deleteRoleUser(@Param("uid") Integer uid);

    /**
     * 管理员通过后台对客户进行修改操作
     * @param user
     */
    void updateByCustomer(User user);

    /**
     * 更新用户的相关信息
     * @return
     */
    int updateCustomerMassage(Customer customer);
}
