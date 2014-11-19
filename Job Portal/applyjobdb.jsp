<%@ page import="java.sql.*,databaseconnection.*"%>

<html>
<head>
<title>game</title>

</head>

<body bgcolor="#FFFFCC">
<%
String userid=request.getParameter("userid");
String gend=request.getParameter("gend");
String skills=request.getParameter("skills");

String exp=request.getParameter("exp");

PreparedStatement ps = null;
ResultSet rs = null;


	
	try
	{
		
Connection con = databasecon.getconnection();

ps = con.prepareStatement("insert into applyjob values(?,?,?,?)");
ps.setString(1,userid);
ps.setString(2,gend);
ps.setString(3,skills);
ps.setString(4,exp);


ps.executeUpdate();

response.sendRedirect("searchframe.html");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
