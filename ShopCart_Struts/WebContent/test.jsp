<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.shop.forms.ProductForm"%>
	<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
    <%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
    <%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
    <%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
	
	<%!ArrayList<ProductForm> al = new ArrayList<ProductForm>();
	int id=0;
	String name=null;
	double price=0.0;
	int i=0;%>

	<% al = (ArrayList<ProductForm>) request.getAttribute("productlist");%>

	<div id="content">
		<br> <br>

		<html:form name="table" action="cart" method="post">
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
					<td><html:checkbox property="id" value="<%=id%>"/></td>
					<td><%=id%></td>
					<td><%=name%></td>
					<td><%=price%></td>
					<td><html:text property="quantity" name="ProductForm"/></td>
				</tr>

				<%
					}
				%>
			</table>
			<br> <html:submit property="action" value="Add To Cart"/>
			<html:submit property="action" value="CheckOut"/>
		</html:form>
	</div>
</body>
</html>