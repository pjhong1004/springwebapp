package com.mycompany.springwebapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springwebapp.service.Ch12ServiceCreateByXml;
import com.mycompany.springwebapp.service.Ch12ServiceDIByAnnotation;
import com.mycompany.springwebapp.service.Ch12ServiceDIByXml;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch12")
public class Ch12Controller {
	Ch12ServiceCreateByXml a = new Ch12ServiceCreateByXml();
	
	@Autowired
	private Ch12ServiceDIByXml serviceDIByXml;
	
	@Autowired
	private Ch12ServiceDIByAnnotation serviceDIByAnnotation;
	
	@RequestMapping("/content")
	public String content(HttpSession session) {
		a.method1();
		serviceDIByXml.method();
		serviceDIByAnnotation.method();
		return "ch12/content";
	}
	
	
}
