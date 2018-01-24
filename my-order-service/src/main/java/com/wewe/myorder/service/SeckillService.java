package com.wewe.myorder.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.google.common.base.Preconditions;
import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.dao.SeckillDao;
import com.wewe.myorder.model.Seckill;
import com.wewe.myorder.request.entity.SeckillQueryParams;

@Service
public class SeckillService {
  
  @Resource SeckillDao seckillDao;

  public void add(Seckill entity) {
    entity.setId(UUID.randomUUID().toString());
    entity.setCreateTime(new Date());
    int rows = seckillDao.insert(entity);
    Preconditions.checkArgument(rows > 0, "添加秒杀失败");
  }

  public void edit(Seckill entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    entity.setUpdateTime(new Date());
    int rows = seckillDao.update(entity);
    Preconditions.checkArgument(rows > 0, "修改秒杀失败");
  }

  public void delete(Seckill entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    int rows = seckillDao.delete(entity.getId());
    Preconditions.checkArgument(rows > 0, "删除秒杀失败");
  }

  public List<Seckill> getList(SeckillQueryParams params, int pageSize, int pageNumber) {
    Pagination page = new Pagination(pageSize, pageNumber);
    return seckillDao.queryByParams(params, page);    
  }

  public Seckill getSeckill(String id) {
    Preconditions.checkNotNull(id, "ID不能为空");
    return seckillDao.queryByID(id);
  }

  public int getCount(SeckillQueryParams params, int pageSize, int pageNumber) {
    return seckillDao.countByParams(params, pageSize, pageNumber);
  }

  public List<Seckill> getAll() {
    return seckillDao.queryAll();
  }

}
