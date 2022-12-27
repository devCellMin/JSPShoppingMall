<%@page import="model.Product"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String realFolder = "c:\\image"; // Absolute path about Web Application
	String encType = "UTF-8"; // Type of Encoding
	int maxSize = 5 * 1024 * 1024;
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	// Setting price and Stocks of Unit with Int, Long
	Integer unitprice = (multi.getParameter("unitprice") == null) ? 0 : Integer.parseInt(String.valueOf(multi.getParameter("unitprice")));
	long unitsInStock = (multi.getParameter("unitsInStock") == null) ? 0 : Long.valueOf(multi.getParameter("unitsInStock"));
	
	Enumeration files = multi.getFileNames();
	String fname = String.valueOf(files.nextElement());
	String filename = multi.getFilesystemName(fname);
	
	Product product = new Product();
	product.setProductId(multi.getParameter("productId"));
	product.setPname(multi.getParameter("pname"));
	product.setUnitprice(unitprice);
	product.setDescription(multi.getParameter("description"));
	product.setManufacturer(multi.getParameter("manufacturer"));
	product.setCategory(multi.getParameter("category"));
	product.setUnitsInStock(unitsInStock);
	product.setCondition(multi.getParameter("condition"));
	product.setFilename(filename);
	
	out.println(filename);

%>
</body>
</html>