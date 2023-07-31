<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
		<title>Insert title here</title>
		
				<!-- Bootstrap을 사용하기 위한 외부 라이브러리 가져오기 -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>		
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		
		
		
		
	</head>
	<body>
		<div id="cute" class="d-flex flex-column vh-100">
	         <nav class="navbar navbar-dark bg-info text-white font-weight-bold">
	            <a class="navbar-brand" href="${pageContext.request.contextPath}"> 
	               <img src="${pageContext.request.contextPath}/resources/images/logo-spring.png" width="29" height="30" class="d-inline-block align-top">
	               	전자정부 프레임워크(Spring Framework)
	            </a>
	            <div><!-- ch08부분 -->
	               <%-- <div>
	                     <c:if test="${login == null}">
					   		<a href="${pageContext.request.contextPath}/ch08/content" class="btn btn-success btn-sm">로그인</a>
					      	</form>
					     </c:if>
					     <c:if test="${login != null}">
					     	<a href="${pageContext.request.contextPath}/ch08/logout" class="btn btn-success btn-sm">로그아웃</a> 
					     	<img src="${pageContext.request.contextPath}/resources/images/photo/${login.mid}.jpg" width="50" height="50"/>
	                     </c:if>	                     
	               </div> --%>
	               <div>
	                     <c:if test="${ch13login == null}">
					   		<a href="${pageContext.request.contextPath}/ch13/content" class="btn btn-success btn-sm">로그인</a>
					      	</form>
					     </c:if>
					     <c:if test="${ch13login != null}">
					     	<a href="${pageContext.request.contextPath}/ch13/logout" class="btn btn-success btn-sm">로그아웃</a> 
	                     </c:if>	                     
	               </div>
	            </div>
	         </nav>
	   
	         <div class="flex-grow-1 container-fluid">
	            <div class="row h-100">
	               <div class="col-md-4 p-3 bg-secondary">
	                  <div class="h-100 d-flex flex-column">
	                     <div class="flex-grow-1" style="height: 0px; overflow-y: auto; overflow-x: hidden;">
	                        <%@ include file="/WEB-INF/views/common/menu.jsp" %>
	                     </div>
	                  </div>
              	 </div>
   
               <div class="col-md-8 p-3">
                  <div class=" h-100 d-flex flex-column">
                     <div class="flex-grow-1 overflow-auto pr-3" style="height: 0px">
                     
                     