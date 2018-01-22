package com.wewe.myorder.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("statistics")
public class StatisticsController {

  private static Logger logger = LoggerFactory.getLogger(StatisticsController.class);

  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public ModelAndView main(HttpServletRequest request) {
    logger.info("REQUEST: " + request.getRequestURL().toString());
    return new ModelAndView("statistics", "data", "");
  }

}
