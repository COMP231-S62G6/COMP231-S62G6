<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>SucessEdudetails into dB</title>

</head>

<body bgcolor="#CCCC66">
<form name="sucessedu" method="post" action="./newempskills1.jsp">
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
    <font color="#336666"> Educational Details</font> Sucessfully inserted in 
    to the <font color="#6633CC">data base</font></font></p>
  <p align="center"><font size="-2">Continuee for<font color="#660033"> Skills</font> 
    details <a href="./newempskills1.jsp">Touch me</a></font></p>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
