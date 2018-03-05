package com.wewe.myorder.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface StatisticsDao {
  
  int[][] getBarDate();

}
