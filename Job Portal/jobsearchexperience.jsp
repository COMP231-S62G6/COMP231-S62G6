<%@ page import="java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>

</head>


<body>
<form name="form2" method="post" action="./jobsearchexprep.jsp">

<p>&nbsp;</p>
  <p align="center"><font size="+2" color="#dd00aa"><Strong>Search on Experience to know the Vacancies</font></p>
  <p align="center"><font size="+2"><br>
    </font> </p>
  <div align="center">
    <%
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select distinct(noyexp) from jobs");
%>
  </div>
  <div align="center">
    Select Experience 
          <select name="exp">
            <% while(rs.next()){ %>
            <option><%=rs.getString(1)%></option>
            <%}%>
          </select>
            <input type="submit" name="Submit" value="Submit">
          
</div>
<p>&nbsp;</p>
</form>
</body>
</html>

