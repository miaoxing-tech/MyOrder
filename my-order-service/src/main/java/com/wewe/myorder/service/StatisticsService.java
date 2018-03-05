package com.wewe.myorder.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wewe.myorder.dao.StatisticsDao;

@Service
public class StatisticsService {
  
  @Resource StatisticsDao dao;

  public int[][] getBarData() {
    // TODO Auto-generated method stub
    return null;
  }

  public String[] getBarLabel() {
    // TODO Auto-generated method stub
    return null;
  }

}
