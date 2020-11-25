<%@page import="java.sql.*"%>

 <%!
    String id,name,author,published,pages;%>
    
    <% 
        String id=request.getParameter("ID");
    
    	Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
         Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from bookapplication where ID='" + id + "'");
        if(!rs.next())
        { 
        	out.println("plz enter valid id");
        	}
        else
        {
         id=rs.getString(1);
         name=rs.getString(2);
         author=rs.getString(3);
         published=rs.getString(4);
         pages=rs.getString(5);
         }
  %>
<html>
<head>

<title>SearchBook</title>
</head>
<body>
<form action="UpdateBook.jsp" method="post">
<h1>ID:<input type="text" name="ID1" value=<%=id%>></h1>
<h1>NAME:<input type="text" name="NAME1" value=<%=name%>></h1>
<h1>AUTHOR:<input type="text" name="AUTHOR1" value=<%=author%>></h1>
<h1>PUBLISHED:<input type="text" name="PUBLISHED1" value=<%=published%>></h1>
<h1>PAGES:<input type="text" name="PAGES1" value=<%=pages%>></h1>

<input type="submit" value="update">
</form>
</body>
</html>