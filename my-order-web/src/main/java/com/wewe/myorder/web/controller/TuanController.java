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
import com.wewe.myorder.model.Tuan;
import com.wewe.myorder.request.entity.TuanQueryParams;
import com.wewe.myorder.service.TuanService;

@Controller
@RequestMapping("tuan")
public class TuanController {

  @Resource TuanService tuanService;

  private static Logger logger = LoggerFactory.getLogger(TripController.class);
  
  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public ModelAndView main(HttpServletRequest request) {
      logger.info("REQUEST: " + request.getRequestURL().toString());
      return new ModelAndView("tuan", "data", "");
  }

  @RequestMapping(value = "/add", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult add(@ModelAttribute Tuan entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      tuanService.add(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 

  @RequestMapping(value = "/edit", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult edit(@ModelAttribute Tuan entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      tuanService.edit(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  } 

  @RequestMapping(value = "/delete", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult delete(@ModelAttribute Tuan entity,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
      tuanService.delete(entity);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  }
  
  @RequestMapping(value = "/getList", method = RequestMethod.GET)
  @ResponseBody
  public ApiResult getList(@ModelAttribute TuanQueryParams params,
      @RequestParam(value = "pageSize", required = false, defaultValue="20") int pageSize,
      @RequestParam(value = "pageNumber", required = false, defaultValue="0") int pageNumber,
      HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    try {
     tuanService.getList(params, pageSize, pageNumber);
      return ApiResult.succ();
    } catch (Exception e) {
      logger.error("error message = {}" + e.getMessage(), e);
      return ApiResult.fail(e.getMessage());
    }
  }

}
