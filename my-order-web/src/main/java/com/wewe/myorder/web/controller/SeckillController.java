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

import com.wewe.myorder.common.result.ApiResult;
import com.wewe.myorder.model.Seckill;
import com.wewe.myorder.request.entity.SeckillQueryParams;
import com.wewe.myorder.service.SeckillService;

@Controller
@RequestMapping("seckill")
public class SeckillController {
  
  @Resource SeckillService seckillService;

  private static Logger logger = LoggerFactory.getLogger(SeckillController.class);
  
  @RequestMapping(value = "/add", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult add(@ModelAttribute Seckill entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      seckillService.add(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 
  
  @RequestMapping(value = "/edit", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult edit(@ModelAttribute Seckill entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      seckillService.edit(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 
  
  @RequestMapping(value = "/delete", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult delete(@ModelAttribute Seckill entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      seckillService.delete(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  }
  

  
  @RequestMapping(value = "/getList", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult getList(@ModelAttribute SeckillQueryParams params,
      @RequestParam(value = "pageSize", required = false, defaultValue="20") int pageSize,
      @RequestParam(value = "pageNumber", required = false, defaultValue="0") int pageNumber,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      seckillService.getList(params, pageSize, pageNumber);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  }


}
