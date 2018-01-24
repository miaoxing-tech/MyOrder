package com.wewe.myorder.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.google.common.base.Preconditions;
import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.dao.TripDao;
import com.wewe.myorder.model.Trip;
import com.wewe.myorder.request.entity.TripQueryParams;

@Service
public class TripService {

  @Resource TripDao tripDao;

  public void add(Trip entity) {
    entity.setId(UUID.randomUUID().toString());
    entity.setCreateTime(new Date());
    int rows = tripDao.insert(entity);
    Preconditions.checkArgument(rows > 0, "添加行程失败");
  }

  public void edit(Trip entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    entity.setUpdateTime(new Date());
    int rows = tripDao.update(entity);
    Preconditions.checkArgument(rows > 0, "修改行程失败");
  }

  public void delete(Trip entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    int rows = tripDao.delete(entity.getId());
    Preconditions.checkArgument(rows > 0, "删除行程失败");
  }

  public List<Trip> getList(TripQueryParams params, int pageSize, int pageNumber) {
    Pagination page = new Pagination(pageSize, pageNumber);
    return tripDao.queryByParams(params, page);    
  }

  public Trip getTrip(String id) {
    Preconditions.checkNotNull(id, "ID不能为空");
    return tripDao.queryByID(id);
  }

  public int getCount(TripQueryParams params, int pageSize, int pageNumber) {
    return tripDao.countByParams(params, pageSize, pageNumber);
  }

  public List<Trip> getAll() {
    return tripDao.queryAll();
  }
}
