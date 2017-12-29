package com.wewe.myorder.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.google.common.base.Preconditions;
import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.dao.UserDao;
import com.wewe.myorder.model.User;
import com.wewe.myorder.request.entity.UserQueryParams;

@Service
public class UserService {
  
  @Resource UserDao userDao;

  public void add(User user) {
    user.setId(UUID.randomUUID().toString());
    user.setCreateTime(new Date());
    int rows = userDao.insert(user);
    Preconditions.checkArgument(rows > 0, "添加用户失败");
  }

  public void edit(User entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    entity.setUpdateTime(new Date());
    int rows = userDao.update(entity);
    Preconditions.checkArgument(rows > 0, "修改用户失败");
  }

  public void delete(User entity) {
    // TODO Auto-generated method stub
    
  }

  public List<User> getList(UserQueryParams params, int pageSize, int pageNumber) {
    Pagination page = new Pagination(pageSize, pageNumber);
    return userDao.queryByParams(params, page);
    
  }

  public User getUser(String id) {
    Preconditions.checkNotNull(id, "ID不能为空");
    return userDao.queryByID(id);
  }

  public int getCount(UserQueryParams params, int pageSize, int pageNumber) {
    return userDao.countByParams(params, pageSize, pageNumber);
  }

}
