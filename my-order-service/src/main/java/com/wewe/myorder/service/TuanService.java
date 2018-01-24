package com.wewe.myorder.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.google.common.base.Preconditions;
import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.dao.TuanDao;
import com.wewe.myorder.model.Tuan;
import com.wewe.myorder.request.entity.TuanQueryParams;

@Service
public class TuanService {

  @Resource TuanDao tuanDao;

  public void add(Tuan entity) {
    entity.setId(UUID.randomUUID().toString());
    entity.setCreateTime(new Date());
    int rows = tuanDao.insert(entity);
    Preconditions.checkArgument(rows > 0, "添加团购失败");
  }

  public void edit(Tuan entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    entity.setUpdateTime(new Date());
    int rows = tuanDao.update(entity);
    Preconditions.checkArgument(rows > 0, "修改团购失败");
  }

  public void delete(Tuan entity) {
    Preconditions.checkNotNull(entity.getId(), "ID不能为空");
    int rows = tuanDao.delete(entity.getId());
    Preconditions.checkArgument(rows > 0, "删除团购失败");
  }

  public List<Tuan> getList(TuanQueryParams params, int pageSize, int pageNumber) {
    Pagination page = new Pagination(pageSize, pageNumber);
    return tuanDao.queryByParams(params, page);    
  }

  public Tuan getTuan(String id) {
    Preconditions.checkNotNull(id, "ID不能为空");
    return tuanDao.queryByID(id);
  }

  public int getCount(TuanQueryParams params, int pageSize, int pageNumber) {
    return tuanDao.countByParams(params, pageSize, pageNumber);
  }

  public List<Tuan> getAll() {
    return tuanDao.queryAll();
  }

}
