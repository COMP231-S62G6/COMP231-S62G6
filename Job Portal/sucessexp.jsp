<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>SucessEdudetails into dB</title>

</head>

<body bgcolor="#CCCC66">
<form name="sucessskill" method="post" action="./newemoexp.jsp">
<%! String uid1;%>
<% 
//HttpSession ses=request.getSession(true);

uid1=(String)session.getValue("uid1");
%><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
  <p align="center"><font size="-2"> 
    <%out.print(uid1);%>
    <font color="#336666"> </font><font size="-2"><font color="#660033">Experience</font></font><font color="#336666"> 
    Details</font> Sucessfully inserted in to the <font color="#6633CC">data base</font></font></p>
  <p align="center"><font size="-2">Continuee Project for<font color="#660033"> 
    </font> details <a href="./newempproj.jsp">Touch me</a></font></p>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
