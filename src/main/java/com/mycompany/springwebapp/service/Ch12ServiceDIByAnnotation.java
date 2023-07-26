package com.mycompany.springwebapp.service;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mycompany.springwebapp.dao.Ch12DaoByAnnotation1;
import com.mycompany.springwebapp.dao.Ch12DaoByAnnotation2;
import com.mycompany.springwebapp.dao.Ch12DaoByAnnotation3;
import com.mycompany.springwebapp.dao.Ch12DaoI;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12ServiceDIByAnnotation {
	//필드
	//@Resource @Autowired
	private Ch12DaoByAnnotation1 daoAnnotation1;
	
	private Ch12DaoByAnnotation2 daoAnnotation2;
	private Ch12DaoByAnnotation3 daoAnnotation3;
	
	@Resource(name="ch12DaoImpl1")
	//@Autowired @Qualifier("ch12DaoImpl2")
	//interface니까 구현객체가 주입
	private Ch12DaoI ch12Dao;
	
	
	
	
	
	//생성자
	public Ch12ServiceDIByAnnotation() {
		log.info("실행1");
		
	}
	//생성자
	@Autowired
	public Ch12ServiceDIByAnnotation(Ch12DaoByAnnotation1 daoAnnotation1) {
		log.info("실행2");
		this.daoAnnotation1 = daoAnnotation1;
	}
	
	//Setter
	public void setCh12DaoByXml1(Ch12DaoByAnnotation1 daoAnnotation1) {
		log.info("실행");
		this.daoAnnotation1 = daoAnnotation1;
	}
	
	@Autowired //@Resource
	public void setCh12DaoByXml2(Ch12DaoByAnnotation2 daoAnnotation2) {
			log.info("실행");
			this.daoAnnotation2 = daoAnnotation2;
	}
	
	@Autowired //@Resource
	public void setCh12DaoByXml3(Ch12DaoByAnnotation3 daoAnnotation3) {
		log.info("실행");
		this.daoAnnotation3 = daoAnnotation3;
	}
	
	public void setCollection1(List<String> list) {
		log.info("실행");
		for(String item : list) {
			log.info(item);
		}
	}
	
	public void setCollection2(Set set) {
		log.info("실행");
		log.info("아이템 수: " + set.size());
	}
	
	public void setCollection3(Map<String, Object> map) {
		log.info("실행");
		log.info("아이템 수: " + map.size());
	}
	
	public void setCollection4(Properties prop) {
		log.info("실행");
		log.info("아이템 수: " + prop.size());
	}
	
	//인스턴스 메소드
	public void method() {
		daoAnnotation1.method();
		daoAnnotation2.method();
		daoAnnotation3.method();
		ch12Dao.method();
	}
}
