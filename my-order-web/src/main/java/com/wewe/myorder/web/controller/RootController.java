package com.wewe.myorder.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wewe.myorder.service.SeckillService;
import com.wewe.myorder.service.TripService;
import com.wewe.myorder.service.TuanService;
import com.wewe.myorder.service.UserService;

@Controller
@RequestMapping("/")
public class RootController {
  
  @Resource UserService userService;
  @Resource TripService tripService;
  @Resource TuanService tuanService;
  @Resource SeckillService seckillService;

	private static Logger logger = LoggerFactory.getLogger(RootController.class);

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) {
		logger.info("REQUEST: " + request.getRequestURL().toString());
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("userCount", userService.getAll().size());
		data.put("tripCount", tripService.getAll().size());
		data.put("tuanCount", tuanService.getAll().size());
		data.put("seckillCount", seckillService.getAll().size());
		return new ModelAndView("main", "data", data);
	}
}
