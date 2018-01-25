package com.wewe.myorder.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wewe.myorder.common.result.ApiResult;
import com.wewe.myorder.common.utils.JsonUtil;
import com.wewe.myorder.model.Order;
import com.wewe.myorder.model.Trip;
import com.wewe.myorder.request.entity.OrderQueryParams;
import com.wewe.myorder.response.entity.OrderResponse;
import com.wewe.myorder.service.OrderService;
import com.wewe.myorder.service.TripService;

@Controller
@RequestMapping("order")
public class OrderController {
  
  @Resource OrderService orderService;
  @Resource TripService tripService;
  
  private static Logger logger = LoggerFactory.getLogger(OrderController.class);
  
  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public ModelAndView main(HttpServletRequest request) {
      logger.info("REQUEST: " + request.getRequestURL().toString());
      return new ModelAndView("order", "data", "");
  }
  
  @RequestMapping(value = "/add", method = RequestMethod.POST)
  @ResponseBody
  public ApiResult add(@ModelAttribute Order entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      orderService.add(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 
  
  @RequestMapping(value = "/edit", method = RequestMethod.POST)
  @ResponseBody
  public ApiResult edit(@ModelAttribute Order entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      orderService.edit(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 
  
  @RequestMapping(value = "/delete", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult delete(@ModelAttribute Order entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      orderService.delete(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  }
  
  @RequestMapping(value = "/getList", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult getList(@ModelAttribute OrderQueryParams params,
      @RequestParam(value = "pageSize", required = false, defaultValue="20") int pageSize,
      @RequestParam(value = "pageNumber", required = false, defaultValue="0") int pageNumber,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      List<OrderResponse> list = orderService.getList(params, pageSize, pageNumber);
      int total = orderService.getCount(params, pageSize, pageNumber);
      return ApiResult.buildPagination(0, total, list);
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  }
  
  @RequestMapping(value = "/trip", method = RequestMethod.GET)
  public ModelAndView main(@RequestParam(value = "id", required = true) String id,
      HttpServletRequest request) {
      logger.info("REQUEST: " + request.getRequestURL().toString());
      Trip trip = tripService.getTrip(id);
      return new ModelAndView("trip_detail", "data", JsonUtil.encodeQuietly(trip));
  }

}
