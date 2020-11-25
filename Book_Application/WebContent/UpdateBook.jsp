<%@page import="java.sql.*" contentType="text/html"%>

<%
String id=request.getParameter("ID1");
String name=request.getParameter("NAME1");
String author=request.getParameter("AUTHOR1");
String published=request.getParameter("PUBLISHED1");
String pages=request.getParameter("PAGES1");


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
PreparedStatement ps=con.prepareStatement("update bookapplication set NAME='"+name+"',AUTHOR='"+author+"',PUBLISHED='"+published+"',PAGES='"+pages+"' where ID='"+id+"'"); 

int i=ps.executeUpdate();
if(i>0){out.print("Data is successfully updated!");}
else{out.print("data is not successfully updated");}


%>