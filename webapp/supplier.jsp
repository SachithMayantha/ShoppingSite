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
	<h2>Add Supplier</h2>
	<s:form action="addSupplierAction" >
		<s:textfield name="name" label="Name" value="" />
		<s:textarea name="address" label="Address" value="" cols="50" rows="5" />
		<s:submit />
	</s:form>
	<h2>All Suppliers</h2>
	<s:if test="supplierList.size() > 0">
		<table border="1px" cellpadding="8px">
			<tr>
			<th>Supplier Id</th>
			<th>Name</th>
			<th>Address</th>
			<th>Created Date</th>
			</tr>
			<s:iterator value="supplierList" status="userStatus">
				<tr>
				<td><s:property value="supplierId" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="address" /></td>
				<td><s:date name="createdDate" format="dd/MM/yyyy" /></td>
				</tr>
			</s:iterator>
		</table>
	</s:if>
</body>
</html>