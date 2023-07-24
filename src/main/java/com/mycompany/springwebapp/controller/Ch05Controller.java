package com.mycompany.springwebapp.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch05")
public class Ch05Controller {
	@RequestMapping("/content")
	public String content() {
		return ("ch05/content");
	}
	
	@RequestMapping("/getHeaderValue")
	public String getHeaderValue(@RequestHeader("User-Agent") String userAgent,
			HttpServletRequest request) {
		log.info("User-Agent: " + userAgent);
		log.info("Client IP: " + request.getRemoteAddr());
		return "redirect:/ch05/content";
	}
	
	@RequestMapping(value="/createCookie", method=RequestMethod.GET)
	public String createCookie(HttpServletResponse response) {
		
		Cookie cookie = new Cookie("useremail", "summer@mycompany.com");
		cookie.setDomain("localhost"); 			// 쿠키를 재전송할 서버를 지정
		cookie.setPath("/"); 					// 쿠키를 재전송할 경로를 지정
		cookie.setMaxAge(30*60); 				// 쿠키의 저장기간(단위: 초, 파일에 저장), 시간을 지정안하면: 브라우저 메모리에 저장
		cookie.setHttpOnly(true);				// true: 서버만 이용, false: JavaScript에서 접근 허용(읽기, 변경 가능)
		cookie.setSecure(false);				// true: https만 사용, false: http, https 모두 쿠키를 사용
		response.addCookie(cookie);
		
		return "redirect:/ch05/content";
	}
		
	@RequestMapping(value="/getCookie", method=RequestMethod.GET)
	public String getCookie(@CookieValue("useremail") String userEmail) {
		log.info("실행");
		log.info("useremail : " + userEmail);
		
		
		return "redirect:/ch05/content";
	}
}
