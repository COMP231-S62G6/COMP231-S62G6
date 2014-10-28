<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>SucessEdudetails into dB</title>

</head>

<body bgcolor="#CCCC66">
<form name="sucessedu" method="post" action="">
<%! String uid1;%>
<% 
//HttpSession ses=request.getSession(true);

uid1=(String)session.getValue("uid1");
%>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div align="center">
    <table width="612" height="200" border="0" cellpadding="5">
      <tr> 
        <td width="118"><img src="images/geek%20boy.jpg" width="118" height="250"></td>
        <td width="468"><p align="center">&nbsp;</p>
          <p align="center"><font size="-2"> 
            <%out.print(uid1);%>
            <font color="#336666"> Educational Details</font> Sucessfully Modified 
            in to the <font color="#6633CC">data base</font></font></p>
          <p align="center"><font size="-2">Go to Main form <a href="./upemp.html" target="_parent">Touch 
            me</a></font></p></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;</p>
</form>
</body>
</html>
