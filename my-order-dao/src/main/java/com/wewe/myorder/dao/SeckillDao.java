package com.wewe.myorder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.model.Seckill;
import com.wewe.myorder.request.entity.SeckillQueryParams;

@Repository
public interface SeckillDao {
  
  int insert(@Param("entity") Seckill entity);

  int update(@Param("entity") Seckill entity);

  List<Seckill> queryByParams(@Param("params") SeckillQueryParams params, @Param("page") Pagination page);

  Seckill queryByID(@Param("id") String id);

  int countByParams(@Param("params") SeckillQueryParams params, int pageSize, int pageNumber);

  int delete(@Param("id") String id);
  
  List<Seckill> queryAll();

}
