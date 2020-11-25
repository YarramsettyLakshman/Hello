<%@page import="java.sql.*" contentType="text/html"%>

<%
String id= request.getParameter("ID");
String name=request.getParameter("NAME");
String author= request.getParameter("AUTHOR");
String published= request.getParameter("PUBLISHED");
String pages=request.getParameter("PAGES");


try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
    PreparedStatement ps=con.prepareStatement("insert into bookapplication(ID,NAME,AUTHOR,PUBLISHED,PAGES)values('"+id+"','"+name+"','"+author+"','"+published+"','"+pages+"')");
    if(id.equals("")){out.print("plz enter id/plz enter unique id");}
    ps.executeUpdate();
    out.println("Data is sucessfully inserted");
    response.sendRedirect("HomePage.html");
    }
catch(Exception e)
    {
	 out.println(e);
	 e.printStackTrace();
    }
%>
