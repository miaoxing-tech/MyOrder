package com.wewe.myorder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.model.Trip;
import com.wewe.myorder.request.entity.TripQueryParams;

@Repository
public interface TripDao {
  
  int insert(@Param("entity") Trip entity);

  int update(@Param("entity") Trip entity);

  List<Trip> queryByParams(@Param("params") TripQueryParams params, @Param("page") Pagination page);

  Trip queryByID(@Param("id") String id);

  int countByParams(@Param("params") TripQueryParams params, int pageSize, int pageNumber);

  int delete(@Param("id") String id);
  
  List<Trip> queryAll();

}
