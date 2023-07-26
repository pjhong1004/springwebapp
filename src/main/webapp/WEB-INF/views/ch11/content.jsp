<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/common/header.jsp"%>


<div class="card m-2">
   <div class="card-header">
      	스프링 태그 라이브러리
   </div>
   <div class="card-body">
   	  <div class="card">
         <div class="card-header">
            DTO 객체(Command Object)와 폼 연결
         </div>
         <div class="card-body">
            <a href="form1" class="btn btn-info btn-sm">form1</a>
            
            <div>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="goo">
				  <defs>
				    <filter id="goo">
				      <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
				      <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
				      <feComposite in="SourceGraphic" in2="goo"/>
				    </filter>
				  </defs>
				</svg>
				
				<span class="button--bubble__container">
				  <a href="#campaign" class="button button--bubble">
				    Hover me
				  </a>
				  <span class="button--bubble__effect-container">
				    <span class="circle top-left"></span>
				    <span class="circle top-left"></span>
				    <span class="circle top-left"></span>
				
				    <span class="button effect-button"></span>
				
				    <span class="circle bottom-right"></span>
				    <span class="circle bottom-right"></span>
				    <span class="circle bottom-right"></span>
				  </span>
				</span>
			</div>
            
         </div>
      </div>
      
      <div class="card">
         <div class="card-header">
            DTO 객체의 필드값을 select로 세팅
         </div>
         <div class="card-body">
            <a href="form2" class="btn btn-info btn-sm">form2</a>
         </div>
      </div>
      
      <div class="card">
         <div class="card-header">
            DTO 객체의 필드값을 checkbox로 세팅
         </div>
         <div class="card-body">
            <a href="form3" class="btn btn-info btn-sm">form3</a>
         </div>
      </div>
      
      <div class="card">
         <div class="card-header">
            DTO 객체의 필드값을 radio로 세팅
         </div>
         <div class="card-body">
            <a href="form4" class="btn btn-info btn-sm">form4</a>
         </div>
      </div>
      
      <div class="card">
         <div class="card-header">
            국제화를 적용한 폼
         </div>
         <div class="card-body">
            <a href="form5" class="btn btn-info btn-sm">form5</a>
         </div>
      </div>
   </div>	
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>