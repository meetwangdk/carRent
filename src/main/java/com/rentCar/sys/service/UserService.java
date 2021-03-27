package com.rentCar.sys.service;

import com.rentCar.sys.domain.User;
import com.rentCar.sys.utils.DataGridView;
import com.rentCar.sys.vo.UserVo;

/**
 * 用户服务接口
 *
 */
public interface UserService {

    /**
     * 用户登录
     * @param userVo
     * @return
     */
    User login(UserVo userVo);
    /**
     * 查询所有用户
     * @param userVo
     * @return
     */
     DataGridView queryAllUser(UserVo userVo);

    /**
     * 添加用户
     * @param userVo
     */
     void addUser(UserVo userVo);

    /**
     * 修改用户
     * @param userVo
     */
     void updateUser(UserVo userVo);

    /**
     * 根据id删除用户
     * @param userid
     */
     void deleteUser(Integer userid);

    /**
     * 批量删除用户
     * @param ids
     */
     void deleteBatchUser(Integer [] ids);

    /**
     * 重置密码
     * @param userid
     */
     void resetUserPwd(Integer userid);

    /**
     * 加载用户管理分配角色的数据
     * @param userid
     * @return
     */
    DataGridView queryUserRole(Integer userid);

    /**
     * 保存用户和角色的关系
     * @param userVo
     */
    void saveUserRole(UserVo userVo);

    /**
     * 重置用户密码
     * @param identity
     */
    void resetCustPwd(Integer identity);


    /**
     * 修改客户密码
     * @param oldPwd
     * @param newPwd
     */
    void updateCustPwdByIdentity(String oldPwd, String newPwd);
}
