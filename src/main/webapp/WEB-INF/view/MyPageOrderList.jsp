
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <!-- Bootstrap core JavaScript -->
  <script src="../resource/vendor/jquery/jquery.min.js"></script>
  <script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <title>Sproute - Hompage</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
  <style>
a { color:black; text-decoration:none; }
li { list-style:none; margin-left:-1px; z-index:1; }
ul { display:inline-block; *display:inline; zoom:1; }
h3 { text-align:center;}
table {
    border-collapse: collapse;
    text-align:center;
    margin: auto;
    align:center;
}
</style>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <%@ include file="IncludeMypageBar.jsp" %>
      <div class="col-lg-9">
       <h3 class="my-4"><b>${userName}'s 주문목록</b></h3>
      <table>
	 <c:forEach var="orders" items="${orders}">
	    <tr>
	 		<td colspan="2"><font color="darkgreen" size="4"><b>Order Date :</b></font> ${orders.orderDate}</td>
	 	</tr>
	 	<tr>
	 	<td colspan="2"><font color="yellowgreen" size="2"><b>Item :</b></font>
	 		<c:if test='${not empty items[orders.itemId]}'>
	 		<c:if test='${items[orders.itemId].categoryId.equals("sale")}'>
                 	<a href='<c:url value="/shop/viewItemDetail.do">
                  	<c:param name="itemId" value="${orders.itemId}"/></c:url>'>
                    <font color="black">${items[orders.itemId].title}</font></a>
                 </c:if>
                 <c:if test='${items[orders.itemId].categoryId.equals("used")}'>
                 	<a href='<c:url value="/shop/viewProduct">
                 	<c:param name="itemId" value="${orders.itemId}"/></c:url>'>
                    <font color="black">${items[orders.itemId].title}</font></a>
                 </c:if>
                 <c:if test='${items[orders.itemId].categoryId.equals("Auction")}'>
                 	<a href='<c:url value="/shop/auctionItemDetail">
                 	<c:param name="itemId" value="${orders.itemId}"/></c:url>'>
                    <font color="black">${items[orders.itemId].title}</font></a>
            </c:if>
            </c:if>
       		<c:if test='${empty items[orders.itemId]}'>
				<c:out value="존재하지 않는 상품입니다."/>
       		</c:if>
            </td>
	 	</tr>
	 	<tr>
	 		<td colspan="2"><font color="yellowgreen" size="2"><b>Address :</b></font> ${orders.address}</td>
	 		<td colspan="2"><font color="yellowgreen" size="2"><b>Ship Address :</b></font> ${orders.shipAddress}</td>
	 	</tr>
	 	<tr>
	 	    <td colspan="2"><font color="yellowgreen" size="2"><b>Card Type :</b></font> ${orders.cardType}</td>
	 		<td colspan="2"><font color="yellowgreen" size="2"><b>Card Number :</b></font> ${orders.cardNumber}</td>
	 	</tr>
	 	<tr>
	 	<td align="right"></td>
	 	<td align="right"><a href='<c:url value="/mypage/MyOrderList/cancel">
	 	<c:param name="orderId" value="${orders.orderId}"/></c:url>'>주문 취소</a></td>
	 </c:forEach>
    </table> 
    </div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>
</body>