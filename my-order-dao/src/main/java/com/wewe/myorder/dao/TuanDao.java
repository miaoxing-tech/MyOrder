package com.wewe.myorder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.model.Tuan;
import com.wewe.myorder.request.entity.TuanQueryParams;

@Repository
public interface TuanDao {
  
  int insert(@Param("entity") Tuan entity);

  int update(@Param("entity") Tuan entity);

  List<Tuan> queryByParams(@Param("params") TuanQueryParams params, @Param("page") Pagination page);

  Tuan queryByID(@Param("id") String id);

  int countByParams(@Param("params") TuanQueryParams params, int pageSize, int pageNumber);

  int delete(@Param("id") String id);
  
  List<Tuan> queryAll();

}
