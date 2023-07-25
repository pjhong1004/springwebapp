<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="card m-2">
   <div class="card-header">
      	예외 처리
   </div>
   <div class="card-body">
   		<div>
   			<a href="handlingException1" class="btn btn-danger btn-sm">try-catch</a>
   		</div>
   		<div class="mt-2">
   			<a href="handlingException2" class="btn btn-warning btn-sm">NullPointerException</a>
   		</div>
   		<div class="mt-2">
   			<a href="handlingException3" class="btn btn-success btn-sm">ClassCastException</a>
   		</div>
   		<div class="mt-2">
   			<a href="handlingException4" class="btn btn-info btn-sm">Ch10SoldOutException</a>
   		</div>
   		<div class="mt-2">
   			<a href="handlingException5" class="btn btn-secondary btn-sm">Exception</a>
   		</div>
   	</div>	
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>