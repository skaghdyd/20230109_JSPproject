<%@page import="java.util.List"%>
<%@page import="min_java.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	// 세션의 고유 아이디를 가져온다.
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		CartDAO dao = CartDAO.getInstance();
		List<CartDTO> cartList = dao.listCart();
	%> 

	<div class="container">
		<div class="row">
			<div class="col-md-6">
			<%
				for(int i = 0; i < cartList.size(); i++){
					CartDTO cart = cartList.get(i);
			%>
				<h3><%= cart.getUsername()%></h3>
				<p><%= cart.getPname()%>
				<p> <b>상품 금액</b> : <%=cart.getUnitprice()%>
				<p> <b>갯수</b> : <%=cart.getAmount()%>
				<p> <b>결제 금액</b> : <%=cart.getMoney()%>원

				
				<p> <a href="#" class="btn btn-info">상품 주문 &raquo;</a>
					<a href="productList.jsp" class="btn btn-secondary">상품목록 &raquo;</a>
			
			</div>
			<%
				}
			%>
		</div>
	</div>
	


</body>

</body>
</html>