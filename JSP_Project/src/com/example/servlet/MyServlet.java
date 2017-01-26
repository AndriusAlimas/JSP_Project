package com.example.servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class MyServlet extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException{
		// create arrayList and add some elements:
		 ArrayList<String> arrayList = new ArrayList<String>();
	     arrayList.add("Fred");
	     arrayList.add("Pradeep");
	     arrayList.add("Philippe");
	     
	     // save this to request scope attribute
	      req.setAttribute("names", arrayList);
	      // using request we want to get request dispatcher object, you can have both relative 
	      // and absolute path:
	      RequestDispatcher disp = req.getRequestDispatcher("/BasicCounter.jsp");
	      disp.forward(req, res);
	}
}
