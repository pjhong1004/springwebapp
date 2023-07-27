package com.mycompany.springwebapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springwebapp.dao.Ch13BoardDaoOld;
import com.mycompany.springwebapp.dto.Ch13Board;
import com.mycompany.springwebapp.service.Ch12ServiceCreateByXml;
import com.mycompany.springwebapp.service.Ch12ServiceDIByAnnotation;
import com.mycompany.springwebapp.service.Ch12ServiceDIByXml;
import com.mycompany.springwebapp.service.Ch12ServicePropertyDi;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch13")
public class Ch13Controller {
	@Resource
	private Ch13BoardDaoOld boardDaoOld;
	
	@RequestMapping("/content")
	public String content() {
		return "ch13/content";
	}
	
	@GetMapping("/insertBoard")
	public String insertBoard() {
		log.info("실행");
		
		Ch13Board board = new Ch13Board();
		board.setBtitle("괴롭지?");
		board.setBcontent("한번만 성공해, 그 뒤로는 쉬워");
		board.setMid("user");
		
		boardDaoOld.insert(board);
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/getBoardList")
	public String getBoardList() {
		log.info("실행");
		
		boardDaoOld.selectAll();
		
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/updateBoard")
	public String updateBoard() {
		log.info("실행");
		
		boardDaoOld.updateByBno();
		
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/deleteBoard")
	public String deleteBoard() {
		log.info("실행");
		
		boardDaoOld.deleteByBno();
		
		return "redirect:/ch13/content";
	}
	
}
