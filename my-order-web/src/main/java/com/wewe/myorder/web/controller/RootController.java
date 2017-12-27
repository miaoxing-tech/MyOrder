package com.wewe.myorder.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class RootController {

	private static Logger logger = Logger.getLogger(RootController.class);

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) {
		logger.info("REQUEST: " + request.getRequestURL().toString());
		return new ModelAndView("main", "data", "");
	}
}
