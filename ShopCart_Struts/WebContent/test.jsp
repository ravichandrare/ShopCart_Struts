<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.shop.forms.ProductForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%!ArrayList<ProductForm> al = new ArrayList<ProductForm>();
	int id=0;
	String name=null;
	double price=0.0;
	int i=0;%>

	<%
		al = (ArrayList<ProductForm>) request.getAttribute("productlist");
	%>











	<div id="content">
		<br> <br>

		<form name="table" action="cart" method="post">
			<table>
				<tr>
					<th></th>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Quantity</th>
				</tr>
				<%
					al = (ArrayList<ProductForm>) request.getAttribute("productlist");

					for (ProductForm p : al) {

						id = p.getId();
						name = p.getName();
						price = p.getPrice();
						i++;
				%>
				<tr>
					<td><input type="checkbox" name="id" value="<%=id%>"></td>
					<td><%=id%></td>
					<td><%=name%></td>
					<td><%=price%></td>
					<td><input type="text" name="quantity"></td>
				</tr>

				<%
					}
				%>
			</table>
			<br> <input type="submit" name="action" value="Add To Cart">
			<input type="submit" name="action" value="CheckOut">
		</form>
	</div>
</body>
</html>