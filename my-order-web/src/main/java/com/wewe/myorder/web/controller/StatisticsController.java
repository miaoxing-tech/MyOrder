package com.wewe.myorder.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wewe.myorder.common.result.ApiResult;
import com.wewe.myorder.common.utils.JsonUtil;
import com.wewe.myorder.service.StatisticsService;

@Controller
@RequestMapping("statistics")
public class StatisticsController {

  private static Logger logger = LoggerFactory.getLogger(StatisticsController.class);
  private StatisticsService statisticsService;

  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public ModelAndView main(HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    return new ModelAndView("statistics", "data", "");
  }

  @RequestMapping(value = "/bar", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult bar(HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      int[][] data = statisticsService.getBarData();
      String[] label = statisticsService.getBarLabel();
      Map<String, Object> result = new HashMap<String, Object>();
      result.put("data", data);
      result.put("label", label);
      return ApiResult.succ(result);
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 
  
  public static void main(String[] args) {
    int[][] a = {
                 {0, 1000},
                 {1, 2000},
                 {2, 3000},
                 {3, 4000},
                 {4, 5000},
                 {5, 6000}
    };
    System.out.println(JsonUtil.encodeQuietly(a));
  }

}
