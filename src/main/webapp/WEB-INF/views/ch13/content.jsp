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
   		
   		<div class="mt-2">	
   	 		<a href="insertMember" id="w-btn-neon2" class="btn btn-info btn-sm">멤버 삽입</a>
   		</div>
   		
   </div>	
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>