<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit</title>
</head>
<body>
<h1>Information</h1>
 <br/>
Name: <%= request.getParameter("name") %> <br/>
Gender: <%= request.getParameter("gender") %> <br/>
Language: <%
	String[] languages =request.getParameterValues("language");
	if(languages != null){
		int n = languages.length;
		for(int i = 0; i < n-1; i++){
			out.print(languages[i] + ", ");
		}
		out.print(languages[n-1]);
	}
%> <br/>
Country: <%= request.getParameter("country") %> <br/>
</body>
</html>