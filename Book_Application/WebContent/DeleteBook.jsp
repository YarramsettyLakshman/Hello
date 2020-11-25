<%@page import="java.sql.*" contentType="text/html"%>

<%

String id=request.getParameter("ID1");


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
PreparedStatement ps=con.prepareStatement("delete bookapplication where ID='"+id+"'"); 

int i=ps.executeUpdate();
if(i>0){out.print("Data is successfully deleted!");}
else{out.print("data is not successfully deleted");}


%>