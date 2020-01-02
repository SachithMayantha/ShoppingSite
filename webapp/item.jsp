<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fernando</title>
</head>
<body>
	<h1>Struts 2 + Spring + Hibernate</h1>
	<h2>Add Item</h2>
	<s:form action="addItemAction" >
		<s:textfield name="name" label="Name" value="" />
		<s:textfield name="price" label="Price" value=""/>
		<s:textarea name="description" label="Description" value="" cols="30" rows="5" />
		<s:submit />
	</s:form>
	<h2>All Items</h2>
	<s:if test="customerList.size() > 0">
		<table border="1px" cellpadding="8px">
			<tr>
			<th>Item Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Description</th>
			<th>Created Date</th>
			</tr>
			<s:iterator value="itemList" status="userStatus">
				<tr>
				<td><s:property value="itemId" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="price" /></td>
				<td><s:property value="description" /></td>
				<td><s:date name="createdDate" format="dd/MM/yyyy" /></td>
				</tr>
			</s:iterator>
		</table>
	</s:if>
</body>
</html>