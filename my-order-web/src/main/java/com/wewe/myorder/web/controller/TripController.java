package com.wewe.myorder.web.controller;

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
import com.wewe.myorder.model.Trip;
import com.wewe.myorder.request.entity.TripQueryParams;
import com.wewe.myorder.service.TripService;

@Controller
@RequestMapping("trip")
public class TripController {
  
  @Resource TripService tripService;
  
  private static Logger logger = LoggerFactory.getLogger(TripController.class);
  
  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public ModelAndView main(HttpServletRequest request) {
      logger.info("REQUEST: " + request.getRequestURL().toString());
      return new ModelAndView("trip", "data", "");
  }
  
  @RequestMapping(value = "/add", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult add(@ModelAttribute Trip trip,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      tripService.add(trip);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 
  
  @RequestMapping(value = "/edit", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult edit(@ModelAttribute Trip trip,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      tripService.edit(trip);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 
  
  @RequestMapping(value = "/delete", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult delete(@ModelAttribute Trip trip,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      tripService.delete(trip);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 

  @RequestMapping(value = "/getList", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult getList(@ModelAttribute TripQueryParams params,
      @RequestParam(value = "pageSize", required = false, defaultValue="20") int pageSize,
      @RequestParam(value = "pageNumber", required = false, defaultValue="0") int pageNumber,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      tripService.getList(params, pageSize, pageNumber);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  }
}
