<!--Html Comment first flavour of comments-->
<%@ page import="foo.*" %> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<%-- Jsp comment  second flavour of comments--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basic Counter Page</title>
</head>
<body>
	<%! 
	 String admin = null;
	 String user = null;
	%>
	<%!
		public void jspInit(){ // notice there no underscore in front of method 
			// so its ok to override this method
			// First you dont have implicit objects, there are another way
			// to get ServletConfig object and ServletContext object
			// to get ServletConfig reference to the object from jsp:
			ServletConfig config = getServletConfig();
			// to get ServletContext reference to the object from jsp:
			ServletContext app_config = getServletContext();
			// and now you can use initParameter methods from any scope config:
			// example using ServletConfig getInitParameter(String str); :
			 admin = app_config.getInitParameter("Admin");
			// example using ServletContext getInitParameter(String str); :
			user = config.getInitParameter("User");
					}
	%>
</body>
</html>