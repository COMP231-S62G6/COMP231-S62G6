<%@ page import="java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>

</head>



<body bgcolor="#9999CC">

<% String uid1;%>
<%
uid1=(String)session.getValue("uid1");%>
<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="399"><strong><font color="#993333" size="+1">Enter The New User 
      Experience Details.</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="form1" method="post" action="./newuserexp">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="-2"><strong>User 
          Id</strong></font></strong></td>
        <td width="180"><input type="text" name="uid" value="<%out.print(uid1);%>"readonly></td>
        <td width="151"><strong><font size="-2">Total Experience</font></strong></td>
        <td width="147"><font color="#000000"> 
          <input type="text" name="totexp" value=<%=session.getAttribute("total")%>yrs>
          </font></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Experience in the Field</font></strong></td>
        <td><input type="text" name="expfield" ></td>
        <td><font color="#000000" size="-2"><strong>Present Working Company</strong></font></td>
        <td><input type="text" name="pwcomp"></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Off-site / On-site</font></strong></td>
        <td><input type="text" name="onsit"></td>
        <td><font color="#000000" size="-2"><strong> If On-site Submit URL(<font color="#CC0000">EX. 
          www.act.com</font>)</strong></font></td>
        <td><input type="text" name="urle"></td>
      </tr>
      <tr> 
        <td><font size="-2"><strong>From <font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pfrom"></td>
        <td><font color="#000000" size="-2">&nbsp;<strong>To </strong></font><font size="-2"><strong><font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pto"></td>
      </tr>
      <tr> 
        <td><font size="-2"><strong>Present Salary</strong></font></td>
        <td><input type="text" name="prsal"></td>
        <td><strong><font size="-2">Expected Salary</font></strong></td>
        <td><input type="text" name="expsal"></td>
      </tr>
    </table>
    <table width="714" border="0" cellpadding="5">
      <tr> 
        <td width="187">&nbsp;</td>
        <td width="501">&nbsp;</td>
      </tr>
    </table>
    <table width="710" border="0" cellpadding="5">
      <tr>
        <td><div align="right">
            <input type="submit" name="Submit" value="Save">
          </div></td>
        <td><input type="submit" name="Submit2" value="Cancel">
        </td>
      </tr>
    </table>
    
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
