<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>JobSeeker Details
<%! String exp;%>
  <%
  exp=request.getParameter("exp");
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from empreg");
%>
<p>&nbsp;</p>

<hr>
<table width=100%  cellpadding="5" border=1>
  <tr> 
    <td><Strong><font color=blue>User Id </td>
    <td><Strong><font color=blue>Father Name</td>
    <td><Strong><font color=blue>Middle Name</td>
    <td><Strong><font color=blue>City</td>
    <td ><Strong><font color=blue>State</td>
    <td><Strong><font color=blue>Mobile No</td>
	<td><Strong><font color=blue>Gender</td>
	
	<%
	while(rs.next())
{%>

  <tr > 
    <td><Strong><%=rs.getString(1)%></td>
    <td><Strong><%=rs.getString(3)%></td>
    <td><Strong><%=rs.getString(4)%></td>
	<td><Strong><%=rs.getString(9)%></td>
	<td><Strong><%=rs.getString(10)%></td>
	 <td><Strong><%=rs.getString(17)%></td>
	 <td><Strong><%=rs.getString(18)%></td>
	
    
  </tr>
  <%}%>
</table>


</body>
</html>
