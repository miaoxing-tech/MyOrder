package com.wewe.myorder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.model.User;
import com.wewe.myorder.request.entity.UserQueryParams;

/**
 * @author miaoxing
 * @date 2017/12/27
 */
@Repository
public interface UserDao {
  
    int insert(@Param("entity") User entity);

    int update(@Param("entity") User user);

    List<User> queryByParams(@Param("params") UserQueryParams params, @Param("page") Pagination page);

    User queryByID(@Param("id") String id);

    int countByParams(@Param("params") UserQueryParams params, int pageSize, int pageNumber);

    int delete(@Param("id") String id);

    List<User> queryAll();
}
