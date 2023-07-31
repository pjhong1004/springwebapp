<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="card m-2">
   <div class="card-header">
      	Service와 DAO(데이터 접근 객체)
   </div>
   <div class="card-body">
   		<div class="mt-2">
   	 		<a href="insertBoard" id="w-btn-neon2" class="btn btn-success btn-sm">게시물 삽입</a>   		
   		</div>
   		<div class="mt-2">	
   	 		<a href="getBoardList" id="w-btn-neon2" class="btn btn-info btn-sm">게시물 목록 가져오기</a>
   		</div>
   		<div class="mt-2">	
   	 		<a href="updateBoard" id="w-btn-neon2" class="btn btn-warning btn-sm">게시물 변경하기</a>
   		</div>
   		<div class="mt-2">	
   	 		<a href="deleteBoard" id="w-btn-neon2" class="btn btn-info btn-sm">게시물  삭제하기</a>
   		</div>   		
   </div>	
</div>

<div class="card m-2">
   <div class="card-header">
      	회원 서비스
   </div>
   <div class="card-body">
   		<c:if test="${ch13login == null}">
	   		<div class="mt-2">
	   	 		<a href="join" id="w-btn-neon2" class="btn btn-success btn-sm">회원가입</a>   		
	   		</div>
	   		
	   		<div class="mt-2">
	   	 		<a href="login" id="w-btn-neon2" class="btn btn-success btn-sm">로그인</a>   		
	   		</div>
   		</c:if>
   		<c:if test="${ch13login != null}">
   			<a href="logout" id="w-btn-neon2" class="btn btn-success btn-sm">로그아웃</a>
   			(현재: ${ch13login.mid}가 로그인됨)
   		</c:if>   		
   </div>	
</div>

 <div class="card-header">
      	게시판
   </div>
   <div class="card-body">
   		<div class="mt-2">
   	 		<a href="getBoardList" id="w-btn-neon2" class="btn btn-success btn-sm">게시물 목록 가져오기</a>   		
   		</div>		
   </div>	

<%@ include file="/WEB-INF/views/common/footer.jsp"%>