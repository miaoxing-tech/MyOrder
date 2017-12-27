package com.wewe.myorder.dao;

import com.wewe.myorder.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author miaoxing
 * @date 2017/12/27
 */
@Repository
public interface UserDao {
    int insert(@Param("entity") User entity);
}
