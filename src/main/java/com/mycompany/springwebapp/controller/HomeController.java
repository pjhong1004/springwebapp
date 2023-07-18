package com.mycompany.springwebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	//http://localhost:8080/springwebapp/ 생략
	@RequestMapping("/")
	public String index() {
		log.info("실행");
		return "index";
	}
}
