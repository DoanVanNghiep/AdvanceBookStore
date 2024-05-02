<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bookstore_style.css">    
     <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	 <title>Website Cửa Hàng Sách</title>
     <style>
     .mySlides {display: none;}
     
     </style>
</head>
<body>
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
    <div class="row">
     <jsp:include page="_left_sidebar.jsp"></jsp:include>
    
    <div class="rightcolumn">
     <div class="block" align="center" id = "searchResult">
            <c:forEach items="${bookList}" var="book">
            
            <div class="item_content">
            	<img id="bookImage" alt="" src="${book.imagePath}" height="200px" style="max-width: 100%">
            	<p style="height: 30px; margin: 5px;"><b>"${book.title}"</b></p>
            	<hr>
            	<p style="margin: 5px;"><fmt:formatNumber type="number" maxFractionDigits="0" value="${book.price}"/><sup>đ</sup>
            													&nbsp;&nbsp;
            													<a href="detailBook?bookId=${book.bookId}">Xem chi tiết</a></p>
            											
            	
            </div>
            </c:forEach>
     <p style="color: red;">${errors}</p>
	<div class="block" align="center">
	<c:if test="${empty keyword }">
			<div style="margin-top: 5px">
				<!-- link previous chỉ xuất hiện khi trang hiện tại lớn hơn 1 -->
				<c:if test="${currentPage gt 1 }">
					<a href="clientHome?page=${currentPage - 1} ">Previous</a> &nbsp;
				</c:if>
				<c:forEach begin="1" end="${noOfPages }" var="i">
					<c:choose>
						<c:when test="${currentPage eq i}"> <!-- Trùng lặp trang hiện tại thì không tạo link -->
							&nbsp;${i}&nbsp;
						</c:when>
						<c:otherwise>
							&nbsp;<a href="clientHome?page=${i}">${i}</a>&nbsp;
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- Link Next chỉ xuất hiện khi trang hiện tại nhỏ hơn tổng số trang -->
				<c:if test="${currentPage lt noOfPages }">
					&nbsp;<a href="clientHome?page=${currentPage + 1}">Next</a>
				</c:if>
			</div>
		</c:if>

		<!-- có hoạt động tìm kiếm, thêm tham số keyword -->
		<c:if test="${not empty keyword }">
			<div style="margin-top: 5px">
				<c:if test="${currentPage gt 1}">
					<a href="clientHome?page=${currentPage - 1}&keyword=${keyword}">Previous</a>&nbsp;
				</c:if>
				<c:forEach begin="1" end="${noOfPages }" var="i">
					<c:choose>
						<c:when test="${currentPage eq i}">
							&nbsp;${i}&nbsp;
						</c:when>
						<c:otherwise>
							&nbsp;<a href="clientHome?page=${i}&keyword=${keyword}">${i}</a>&nbsp;
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${currentPage lt noOfPages }">
					&nbsp;<a
						href="clientHome?page=${currentPage + 1}&keyword=${keyword}">Next</a>
				</c:if>
			</div>
		</c:if>  
	
	</div>
     	
    </div>
    
    </div>
    </div> 
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
