package com.wewe.myorder.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.google.common.base.Preconditions;
import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.dao.OrderDao;
import com.wewe.myorder.dao.SeckillDao;
import com.wewe.myorder.dao.TripDao;
import com.wewe.myorder.dao.TuanDao;
import com.wewe.myorder.dao.UserDao;
import com.wewe.myorder.model.Order;
import com.wewe.myorder.request.entity.OrderQueryParams;
import com.wewe.myorder.response.entity.OrderResponse;

@Service
public class OrderService {

  @Resource OrderDao orderDao;
  @Resource UserDao userDao;
  @Resource SeckillDao seckillDao;
  @Resource TuanDao tuanDao;
  @Resource TripDao tripDao;

  public void add(Order entity) {
    entity.setCreateTime(new Date());
    int rows = orderDao.insert(entity);
    Preconditions.checkArgument(rows > 0, "添加订单失败");    
  }

  public void edit(Order entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    entity.setUpdateTime(new Date());
    int rows = orderDao.update(entity);
    Preconditions.checkArgument(rows > 0, "修改订单失败");    
  }

  public void delete(Order entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    int rows = orderDao.delete(entity.getId());
    Preconditions.checkArgument(rows > 0, "删除订单失败");
  }

  public List<OrderResponse> getList(OrderQueryParams params, int pageSize, int pageNumber) {
    Pagination page = new Pagination(pageSize, pageNumber);
    List<Order> list = orderDao.queryByParams(params, page);
    List<OrderResponse> result = new ArrayList<OrderResponse>();
    for (Order order: list) {
      OrderResponse or = new OrderResponse();
      BeanUtils.copyProperties(order, or);
      or.setUserName(getUserName(order));
      or.setTripName(getTripName(order));
      or.setTuanName(getTuanName(order));
      or.setSeckillName(getSeckillName(order));
      or.setStatusText(getStatusText(order));
      result.add(or);
    }
    return result;
  }

  private String getStatusText(Order order) {
    switch (order.getStatus()) {
      case 1 : return "未付款";
      case 2 : return "未发货";
      case 3 : return "已发货";
      case 4 : return "已完成";
      case 0 : return "已关闭";
      default : return "状态错误";
    }
  }

  private String getSeckillName(Order order) {
    if (order.getSeckillID() != null) {
      return seckillDao.queryByID(order.getSeckillID()).getName();
    } 
    return null;
  }

  private String getTuanName(Order order) {
    if (order.getTuanID() != null) {
      return tuanDao.queryByID(order.getTuanID()).getName();
    } 
    return null;
  }

  private String getTripName(Order order) {
    if (order.getTripID() != null) {
      return tripDao.queryByID(order.getTripID()).getName();
    } 
    return null;
  }

  private String getUserName(Order order) {
    if (order.getUserID() != null) {
      return userDao.queryByID(order.getUserID()).getUsername();
    } 
    return null;
  }

  public int getCount(OrderQueryParams params, int pageSize, int pageNumber) {
    return orderDao.countByParams(params, pageSize, pageNumber);
  }

}
