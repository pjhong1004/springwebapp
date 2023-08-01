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
		
		<style>
			/* 색깔 막 바뀌는 버튼 */
			.color-bg-start {
			  background-color: salmon;
			}
			.bg-animate-color {
			  animation: random-bg .5s linear infinite;
			}
			@keyframes random-bg {
			  from {
			    filter: hue-rotate(0);
			  }
			  to {
			    filter: hue-rotate(360deg);
			  }
			}
			.fun-btn {
			  background-color: salmon;
			  color: white;
			  border: none;
			  transition: all .3s ease;
			  border-radius: 5px;
			  text-transform: uppercase;
			  outline: none;
			  align-self: center;
			  cursor: pointer;
			  font-weight: bold;
			}
			.logbtn {
			   animation: random-bg .6s linear infinite, grow 1300ms ease infinite;
			}
			.fun-btn:hover {
			   animation: random-bg .6s linear infinite, grow 1300ms ease infinite;
			}
			.start-fun {
			  background-color: #fff !important;
			  /* change color of button text when fun is started   */
			  color: salmon !important;
			}
			
			.btn-jittery {
			  animation: jittery 4s infinite;
			  margin: 20px;
			  height: 30px;
			}
			
			.btn-jelly {
				
				background: #cb99c5;
			}
			
			@keyframes jittery {
			  5%, 50% {
			    transform: scale(1);
			  }
			  10% {
			    transform: scale(0.9);
			  }
			  15% {
			    transform: scale(1.15);
			  }
			  20% {
			    transform: scale(1.15) rotate(-5deg);
			  }
			  25% {
			    transform: scale(1.15) rotate(5deg);
			  }
			  30% {
			    transform: scale(1.15) rotate(-3deg);
			  }
			  35% {
			    transform: scale(1.15) rotate(2deg);
			  }
			  40% {
			    transform: scale(1.15) rotate(0);
			  }
			}
			
			.btn-jelly:hover {
			  animation: jelly 0.5s;
			}
			
			
			
			@keyframes jelly {
			  25% {
			    transform: scale(0.9, 1.1);
			  }
			
			  50% {
			    transform: scale(1.1, 0.9);
			  }
			
			  75% {
			    transform: scale(0.95, 1.05);
			  }
			}
			
			.btn-5 {
			  height: 40px;
			  line-height: 42px;
			  padding: 0;
			  border: none;
			  background: rgb(255,27,0);
			background: linear-gradient(0deg, rgba(255,27,0,1) 0%, rgba(251,75,2,1) 100%);
			}
			.btn-5:hover {
			  color: #f0094a;
			  background: transparent;
			   box-shadow:none;
			}
			.btn-5:before,
			.btn-5:after{
			  content:'';
			  position:absolute;
			  top:0;
			  right:0;
			  height:2px;
			  width:0;
			  background: #f0094a;
			  box-shadow:
			   -1px -1px 5px 0px #fff,
			   7px 7px 20px 0px #0003,
			   4px 4px 5px 0px #0002;
			  transition:400ms ease all;
			}
			.btn-5:after{
			  right:inherit;
			  top:inherit;
			  left:0;
			  bottom:0;
			}
			.btn-5:hover:before,
			.btn-5:hover:after{
			  width:100%;
			  transition:800ms ease all;
			}
			
			button {
			  margin: 20px;
			}
			.custom-btn {
			  height: 40px;
			  color: #fff;
			  border-radius: 5px;
			  padding: 1px 25px;
			  font-family: 'Lato', sans-serif;
			  font-weight: 500;
			  cursor: pointer;
			  transition: all 0.3s ease;
			  position: relative;
			  display: inline-block;
			   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
			   7px 7px 20px 0px rgba(0,0,0,.1),
			   4px 4px 5px 0px rgba(0,0,0,.1);
			  outline: none;
			}
			
			</style>
		
		
	</head>
	<body>
		<div id="cute" class="d-flex flex-column vh-100">
	         <nav class="navbar navbar-dark bg-dark text-white font-weight-bold">
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
					   		<a href="${pageContext.request.contextPath}/ch13/content" class="btn btn-success btn-sm fun-btn logbtn">로그인</a>
					      	</form>
					     </c:if>
					     <c:if test="${ch13login != null}">
					     	<a href="${pageContext.request.contextPath}/ch13/logout" class="btn btn-success btn-sm fun-btn logbtn">로그아웃</a> 
	                     </c:if>	                     
	               </div>
	            </div>
	         </nav>
	   
	         <div class="flex-grow-1 container-fluid">
	            <div class="row h-100">
	               <div class="col-md-4 p-3 bg-dark">
	                  <div class="h-100 d-flex flex-column">
	                     <div class="flex-grow-1" style="height: 0px; overflow-y: auto; overflow-x: hidden;">
	                        <%@ include file="/WEB-INF/views/common/menu.jsp" %>
	                     </div>
	                  </div>
              	 </div>
   
               <div class="col-md-8 p-3">
                  <div class=" h-100 d-flex flex-column">
                     <div class="flex-grow-1 overflow-auto pr-3" style="height: 0px">
                     
                     