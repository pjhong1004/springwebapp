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
		
		<script>
			$('.button--bubble').each(function() {
				  var $circlesTopLeft = $(this).parent().find('.circle.top-left');
				  var $circlesBottomRight = $(this).parent().find('.circle.bottom-right');
	
				  var tl = new TimelineLite();
				  var tl2 = new TimelineLite();
	
				  var btTl = new TimelineLite({ paused: true });
	
				  tl.to($circlesTopLeft, 1.2, { x: -25, y: -25, scaleY: 2, ease: SlowMo.ease.config(0.1, 0.7, false) });
				  tl.to($circlesTopLeft.eq(0), 0.1, { scale: 0.2, x: '+=6', y: '-=2' });
				  tl.to($circlesTopLeft.eq(1), 0.1, { scaleX: 1, scaleY: 0.8, x: '-=10', y: '-=7' }, '-=0.1');
				  tl.to($circlesTopLeft.eq(2), 0.1, { scale: 0.2, x: '-=15', y: '+=6' }, '-=0.1');
				  tl.to($circlesTopLeft.eq(0), 1, { scale: 0, x: '-=5', y: '-=15', opacity: 0 });
				  tl.to($circlesTopLeft.eq(1), 1, { scaleX: 0.4, scaleY: 0.4, x: '-=10', y: '-=10', opacity: 0 }, '-=1');
				  tl.to($circlesTopLeft.eq(2), 1, { scale: 0, x: '-=15', y: '+=5', opacity: 0 }, '-=1');
	
				  var tlBt1 = new TimelineLite();
				  var tlBt2 = new TimelineLite();
				  
				  tlBt1.set($circlesTopLeft, { x: 0, y: 0, rotation: -45 });
				  tlBt1.add(tl);
	
				  tl2.set($circlesBottomRight, { x: 0, y: 0 });
				  tl2.to($circlesBottomRight, 1.1, { x: 30, y: 30, ease: SlowMo.ease.config(0.1, 0.7, false) });
				  tl2.to($circlesBottomRight.eq(0), 0.1, { scale: 0.2, x: '-=6', y: '+=3' });
				  tl2.to($circlesBottomRight.eq(1), 0.1, { scale: 0.8, x: '+=7', y: '+=3' }, '-=0.1');
				  tl2.to($circlesBottomRight.eq(2), 0.1, { scale: 0.2, x: '+=15', y: '-=6' }, '-=0.2');
				  tl2.to($circlesBottomRight.eq(0), 1, { scale: 0, x: '+=5', y: '+=15', opacity: 0 });
				  tl2.to($circlesBottomRight.eq(1), 1, { scale: 0.4, x: '+=7', y: '+=7', opacity: 0 }, '-=1');
				  tl2.to($circlesBottomRight.eq(2), 1, { scale: 0, x: '+=15', y: '-=5', opacity: 0 }, '-=1');
				  
				  tlBt2.set($circlesBottomRight, { x: 0, y: 0, rotation: 45 });
				  tlBt2.add(tl2);
	
				  btTl.add(tlBt1);
				  btTl.to($(this).parent().find('.button.effect-button'), 0.8, { scaleY: 1.1 }, 0.1);
				  btTl.add(tlBt2, 0.2);
				  btTl.to($(this).parent().find('.button.effect-button'), 1.8, { scale: 1, ease: Elastic.easeOut.config(1.2, 0.4) }, 1.2);
	
				  btTl.timeScale(2.6);
	
				  $(this).on('mouseover', function() {
				    btTl.restart();
				  });
				});
		</script>
		
		<style>
			
		
			* {
			  box-sizing: border-box;
			}
			
			#cute {

			  animation: hue-rotate 20s linear infinite;
			} 
			
			.button {
			  -webkit-font-smoothing: antialiased;
			  background-color: white;
			  border: none;
			  color: #fff;
			  display: inline-block;
			  font-family: "Montserrat", sans-serif;
			  font-size: 14px;
			  font-weight: 100;
			  text-decoration: none;
			  user-select: none;
			  letter-spacing: 1px;
			  color: white;
			  padding: 20px 40px;
			  text-transform: uppercase;
			  transition: all 0.1s ease-out;
			}
			.button:hover {
			  background-color: #90feb5;
			  color: #fff;
			}
			.button:active {
			  transform: scale(0.95);
			}
			.button--bubble {
			  position: relative;
			  z-index: 2;
			  color: white;
			  background: none;
			}
			.button--bubble:hover {
			  background: none;
			}
			.button--bubble:hover + .button--bubble__effect-container .circle {
			  background: #44fd82;
			}
			.button--bubble:hover + .button--bubble__effect-container .button {
			  background: #44fd82;
			}
			.button--bubble:active + .button--bubble__effect-container {
			  transform: scale(0.95);
			}
			.button--bubble__container {
			  position: relative;
			  display: inline-block;
			}
			.button--bubble__container .effect-button {
			  position: absolute;
			  width: 50%;
			  height: 25%;
			  top: 50%;
			  left: 25%;
			  z-index: 1;
			  transform: translateY(-50%);
			  background: #222;
			  transition: background 0.1s ease-out;
			}
			
			.button--bubble__effect-container {
			  position: absolute;
			  display: block;
			  width: 200%;
			  height: 400%;
			  top: -150%;
			  left: -50%;
			  -webkit-filter: url("#goo");
			  filter: url("#goo");
			  transition: all 0.1s ease-out;
			  pointer-events: none;
			}
			.button--bubble__effect-container .circle {
			  position: absolute;
			  width: 25px;
			  height: 25px;
			  border-radius: 15px;
			  background: #222;
			  transition: background 0.1s ease-out;
			}
			.button--bubble__effect-container .circle.top-left {
			  top: 40%;
			  left: 27%;
			}
			.button--bubble__effect-container .circle.bottom-right {
			  bottom: 40%;
			  right: 27%;
			}
			
			.goo {
			  position: absolute;
			  visibility: hidden;
			  width: 1px;
			  height: 1px;
			}
			
			
			.button--bubble__container {
			  top: 50%;
			  margin-top: -25px;
			}
			
			@keyframes hue-rotate {
			  from {
			    -webkit-filter: hue-rotate(0);
			    -moz-filter: hue-rotate(0);
			    -ms-filter: hue-rotate(0);
			    filter: hue-rotate(0);
			  }
			  to {
			    -webkit-filter: hue-rotate(360deg);
			    -moz-filter: hue-rotate(360deg);
			    -ms-filter: hue-rotate(360deg);
			    filter: hue-rotate(360deg);
			  }
			}
		</style>
		
	</head>
	<body>
		<div id="cute" class="d-flex flex-column vh-100">
	         <nav class="navbar navbar-dark bg-info text-white font-weight-bold">
	            <a class="navbar-brand" href="${pageContext.request.contextPath}"> 
	               <img src="${pageContext.request.contextPath}/resources/images/logo-spring.png" width="29" height="30" class="d-inline-block align-top">
	               	전자정부 프레임워크(Spring Framework)
	            </a>
	            <div>
	               <div>
	                     <c:if test="${login == null}">
					   		<a href="${pageContext.request.contextPath}/ch08/content" class="btn btn-success btn-sm">로그인</a>
					      	</form>
					     </c:if>
					     <c:if test="${login != null}">
					     	<a href="${pageContext.request.contextPath}/ch08/logout" class="btn btn-success btn-sm">로그아웃</a> 
					     	<img src="${pageContext.request.contextPath}/resources/images/photo/${login.mid}.jpg" width="50" height="50"/>
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
                     
                     