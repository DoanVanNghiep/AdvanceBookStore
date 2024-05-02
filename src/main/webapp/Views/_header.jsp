<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bookstore_script.js"></script>
<link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bookstore_style.css">    	
     <style>
		@charset "UTF-8";
		th, td {
			padding: 5px;
			border-bottom: 1px solid #ddd;
		}
		
		table {
			border-collapse: collapse;
		}
		
		* {
			box-sizing: border-box;
		}
		
		body {
			font-family: Verdana, Geneva, Tahoma, sans-serif;
			font-size: 13px;
			padding: 10px;
			background: #f1f1f1;
		}
		
		.header {
			padding: 60px;
			text-align: center;
			background: white;
			position: relative;
		}
		
		.red_button {
			background-color: #ec0000;
			border: none;
			color: white;
			padding: 7px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			cursor: pointer;
			border-radius: 6px;
		}
		
		.red_button:hover {
			background-color: #ce0000;
			color: white;
		}
		
		.green_button {
			background-color: #4CAF50;
			border: none;
			color: white;
			padding: 7px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			cursor: pointer;
			border-radius: 6px;
		}
		
		.green_button:hover {
			background-color: #316f34;
			color: white;
		}
		
		input[type=text], input[type=password] {
			width: 100%;
			padding: 5px 5px;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}
		
		.header a {
			color: black;
			text-align: center;
			text-decoration: none;
			line-height: 25px;
			padding: 10px;
			border-radius: 4px;
		}
		
		.header a:hover {
			background-color: #ddd;
			color: black;
		}
		
		.header_right {
			float: right;
			top: 10px;
			right: 20px;
			position: absolute;
		}
		
		.header_left {
			float: left;
			cursor: pointer;
			width: 150px;
			height: auto;
		}
		
		.h_menu {
			overflow: hidden;
			background-color: #333;
		}
		
		.h_menu a {
			float: left;
			display: block;
			color: #f2f2f2;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}
		
		.h_menu a:hover {
			background-color: #ddd;
			color: black;
		}
		
		.h_menu input[type=text] {
			float: right;
			border: none;
			margin-top: 8px;
			margin-right: 16px;
			width: 18%;
		}
		
		.v_menu {
			width: 100%;
		}
		
		.v_menu a {
			background-color: #eee;
			color: black;
			display: block;
			padding: 10px;
			text-decoration: none;
		}
		
		.v_menu a:hover {
			background-color: #ccc;
		}
		
		.footer {
			padding: 20px;
			text-align: center;
			background: #ddd;
			margin-top: 20px;
		}
		
		.row {
			display: table;
			width: 100%;
		}
		
		.leftcolumn {
			float: left;
			width: 25%;
		}
		
		.rightcolumn {
			float: left;
			width: 75%;
			background-color: #f1f1f1;
			padding-left: 20px;
		}
		
		.container {
			width: 100%;
			background-color: white;
			margin: 0 auto;
		}
		
		.block {
			padding: 20px;
			width: 90%;
			margin-top: 20px;
			display: table;
		}
		
		.item_content {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
			padding: 10px;
			margin: 0px 20px 20px 20px;
			text-align: center;
			background-color: #f1f1f1;
			float: left;
			width: 25%;
		}
		
		@media screen and (max-width: 800px) {
			.leftcolumn, .rightcolumn {
				width: 100%;
				padding: 0;
			}
		}
		
		@media screen and (max-width: 400px) {
			.h_menu a {
				float: none;
				width: 100%;
			}
			.h_menu input[type=text] {
				float: none;
				width: 100%;
				border-radius: 0px;
			}
			.header_left {
				float: none;
			}
			.header_right {
				float: none;
				position: relative;
			}
			.item_content {
				width: 100%;
				display: block;
				margin: 0px;
				margin-bottom: 20px;
			}
		}
     </style>
   <div class="header" >
	<img onclick="activeAsLink('${pageContext.request.contextPath}/clientHome');" class="header_left" alt="" src="${pageContext.request.contextPath}/img/bookstore-logo.svg)">
		<h1>Website Cửa hàng Sách với JSP/Servlet</h1>
	
	<div class="header_right" style="float: right; text-align: right;">
		<c:if test="${not empty loginedUser }">
			Xin chào: <b> ${loginedUser.fullname} </b>
			|
			<a href="${pageContext.request.contextPath}/accountInfo">Thông
				tin tài khoản</a>
			|
			<a href="${pageContext.request.contextPath}/customerOrderList"><i class="fa fa-first-order" style="color: red"></i>Thông
				tin đơn hàng</a>
			|
			
			<c:if test="${not empty cartOfCustomer }">
			<a href="${pageContext.request.contextPath}/cartBook/viewCart"><i class="fa fa-shopping-cart" style="color: red"></i>Giỏ hàng
			</a>
			</c:if>
		
			<a href="${pageContext.request.contextPath}/logout"><i class="fa fa-user-circle-o" style="color: red"></i>Đăng xuất</a>
		</c:if>
		
		<c:if test="${empty loginedUser }">
			<a href="${pageContext.request.contextPath}/login"><i class="fa fa-user-circle-o" style="color: red"></i>Đăng nhập</a>
		</c:if>
		
			</div>
</div>