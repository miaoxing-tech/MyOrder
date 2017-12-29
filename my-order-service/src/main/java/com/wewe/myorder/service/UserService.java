package com.wewe.myorder.service;

import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.google.common.base.Preconditions;
import com.wewe.myorder.dao.UserDao;
import com.wewe.myorder.model.User;
import com.wewe.myorder.request.entity.UserSearchParams;

@Service
public class UserService {
  
  @Resource UserDao userDao;

  public void add(User user) {
    user.setId(UUID.randomUUID().toString());
    user.setCreateTime(new Date());
    int insert = userDao.insert(user);
    Preconditions.checkArgument(insert > 0, "添加用户失败");
  }

  public void edit(User entity) {
    // TODO Auto-generated method stub
    
  }

  public void delete(User entity) {
    // TODO Auto-generated method stub
    
  }

  public void getList(UserSearchParams params, int pageSize, int pageNumber) {
    // TODO Auto-generated method stub
    
  }

}
