<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>SucessEdudetails into dB</title>

</head>

<body bgcolor="#CCCC66">
<form name="sucessskill" method="post" action="./newemoexp.jsp">
<%! String cid1,pass1;%>
<% 
//HttpSession ses=request.getSession(true);

cid1=(String)session.getValue("cid1");
pass1=(String)session.getValue("pass1");
%><p>&nbsp;</p>
  <div align="center">
    <table width="99" height="99" border="0" cellpadding="5">
      <tr> 
        <td width="85"><img src="images/avipak120_tiny.jpg" width="74" height="64"></td>
      </tr>
    </table>
  </div>
  <div align="center"></div>
  <p align="center"><font color="#660033" size="-2"> </font><font size="-2"><font size="-2"><font color="#660033">Client</font></font><font color="#336666"> 
    Details</font> Sucessfully inserted in to the <font color="#6633CC">data base</font></font></p>
<p align="center"><font color="#3333CC" size="-2">User id:</font><font color="#993399" size="-2">
    <%out.print(cid1);%>
    </font></p>


  <div align="center">
    <table width="210" height="264" border="0" cellpadding="5">
      <tr> 
        <td width="38" height="260"><a href="./claintlogin.htm">Back</a></td>
        <td width="146"><div align="center"><img src="images/geek%20boy.jpg" width="118" height="250"></div></td>
      </tr>
    </table>
  </div>
  <p align="center"><font color="#993399" size="-2"> </font></p>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
