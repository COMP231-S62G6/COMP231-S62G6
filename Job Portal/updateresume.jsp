<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>

</head>



<body bgcolor="#9999CC">

<%! String uid1;%>
<%uid1=(String)session.getValue("uid1");%>

<table   width="682" height="323"><tr align="center"><td align="center"  colspan="2" height="61">
	<font color="#990000" size="2"><b>Please Download Your Resume After Update and Again upload the resume.</b></font></td></tr>
	<tr>
            
            <td width="382"><table bordercolor="#993300" border="2" width="388" height="117">
			<tr><td width="62" height="49"> <font color="#003399" size="2"><strong>User_ID</strong></font></td>
			
			
			<td width="86"><font color="#003399" size="2"><strong>Download</strong></font></td>
			</tr>



      
<tr>
<td><font color="#000000" size="2"><strong><%=uid1%></strong></font></td>


<td><a href="download1.jsp?<%=uid1%>"><strong>Download</strong></a></td></tr>





</body>
</html>
