package com.wewe.myorder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wewe.myorder.common.utils.Pagination;
import com.wewe.myorder.model.Order;
import com.wewe.myorder.request.entity.OrderQueryParams;

@Repository
public interface OrderDao {
  
  int insert(@Param("entity") Order entity);

  int update(@Param("entity") Order entity);

  List<Order> queryByParams(@Param("params") OrderQueryParams params, @Param("page") Pagination page);

  Order queryByID(@Param("id") int id);

  int countByParams(@Param("params") OrderQueryParams params, int pageSize, int pageNumber);

  int delete(@Param("id") int id);

}
