package com.mycompany.springwebapp.service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12ServiceCreateByXml {
	private String a;
	private String b;
	private String c;
	
	// 생성자
	public Ch12ServiceCreateByXml() {
		log.info("실행");
	}
	
	public Ch12ServiceCreateByXml(String a, String b, String c) {
		log.info("실행");
	}
	
	// 메소드
	public static Ch12ServiceCreateByXml getInstance() {
		log.info("실행");
		return new Ch12ServiceCreateByXml();
	}
	
	// 메소드
	public Ch12ServiceCreateByXml getSelfObject() {
		log.info("실행");
		return new Ch12ServiceCreateByXml();
	}
	
	public void method1() {
		log.info("실행");
	}
	
	public void method2() {
		log.info("실행");
	}
}
