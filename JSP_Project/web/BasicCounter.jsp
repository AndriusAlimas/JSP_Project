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
	
	<%! int doubleCount(){ // to get instance method or variable we use 
		// <%! scriplet declaration
		count = count * 2;
		return count;
		} 
	%>
	
	<%! int count = 0; // it dont have to be before or after method declaration%> 
	
	<% // in scriplet you can use implicit object like out
		out.println(++count); // First line what you will see in browser
		// Example of using pageContext implicit object (1) using 2-arg no scope :
			Float one = new Float(42.5);
			pageContext.setAttribute("Number",one); 
		// (2) using Session scope:
			Integer two = new Integer(100);
			pageContext.setAttribute("Number_2",two,PageContext.SESSION_SCOPE);
		// (3) using Application scope this time using constant value
		// which 4 represent = APPLICATION_SCOPE:
		 Boolean flag = new Boolean(true);
		pageContext.setAttribute("Flag",flag,4);
		// (4) using Page scope this is default same like using 2-arg,
		// we dont have set this way, we can use number 1 instead PAGE_SCOPE:
		pageContext.setAttribute("Admin_page",admin,PageContext.PAGE_SCOPE); 
		// (5) using Request scope  or we can use pageContext.REQUEST_SCOPE: 
		pageContext.setAttribute("Request_user_scope",user,2);
		// setup 3 same scope attributes, one we have already:
		pageContext.setAttribute("request_scope2",new String("second request scope attribute"),PageContext.REQUEST_SCOPE);
		pageContext.setAttribute("request_scope3",new String("third request scope attribute"),PageContext.REQUEST_SCOPE);
	%>
</body>
</html>