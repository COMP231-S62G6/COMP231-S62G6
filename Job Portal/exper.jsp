<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>

</head>



<body bgcolor="#9999CC">

<%! String id;%>
<%id=(String)session.getValue("uid1");%>
<%  
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement st=con.createStatement();
System.out.println("select * from experience where USERID="+id);
ResultSet rs=st.executeQuery("select * from experience where USERID='"+id+"'");
%>
	<table width="928" height="55" border="0" cellpadding="5">
			  <tr> 
				<td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
				<td width="399"><strong><font color="#993333" size="+1">Experience Details</font></strong> 
				<td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
			  </tr>
			</table>
<hr>
<p>&nbsp;</p>
<form name="skillsd" method="post" action="exper1.jsp">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> <%if(rs.next())
	  { System.out.println("ratna:");
		  String f1=rs.getString(1);
		f1=(f1==null)?"":f1;
		String f2=rs.getString(2);
		f2=(f2==null)?"":f2;
		String f3=rs.getString(3);
		f3=(f3==null)?"":f3;
		String f4=rs.getString(4);
		f4=(f4==null)?"":f4;
		String f5=rs.getString(5);
		f5=(f5==null)?"":f5;
		String f6=rs.getString(6);
		f6=(f6==null)?"":f6;
		String f7=rs.getString(7);
		f7=(f7==null)?"":f7;
		String f8=rs.getString(8);
		f8=(f8==null)?"":f8;
		String f9=rs.getString(9);
		f9=(f9==null)?"":f9;
		String f10=rs.getString(10);
		f10=(f10==null)?"":f10;
		  %>

<form name="form1" method="post" action="./newuserexp">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="-2"><strong>User 
          Id</strong></font></strong></td>
        <td width="180"><input type="uid" name="textfield" value="<%=f1%>"></td>
        <td width="151"><strong><font size="-2">Total Experience</font></strong></td>
        <td width="147"><font color="#000000"> 
          <input type="text" name="totexp" value=<%=f2%>>
          </font></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Experience in the Field</font></strong></td>
        <td><input type="text" name="expfield" value="<%=f3%>"></td>
        <td><font color="#000000" size="-2"><strong>Present Working Company</strong></font></td>
        <td><input type="text" name="pwcomp" value="<%=f4%>"></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Off-site / On-site</font></strong></td>
        <td><input type="text" name="onsit" value="<%=f5%>"></td>
        <td><font color="#000000" size="-2"><strong> If On-site Submit URL(<font color="#CC0000">EX. 
          www.act.com</font>)</strong></font></td>
        <td><input type="text" name="urle" value="<%=f10%>"></td>
      </tr>
      <tr> 
        <td><font size="-2"><strong>From <font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pfrom" value="<%=f6%>"></td>
        <td><font color="#000000" size="-2">&nbsp;<strong>To </strong></font><font size="-2"><strong><font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pto" value="<%=f7%>"></td>
      </tr>
      <tr> 
        <td><font size="-2"><strong>Present Salary</strong></font></td>
        <td><input type="text" name="prsal" value="<%=f8%>"></td>
        <td><strong><font size="-2">Expected Salary</font></strong></td>
        <td><input type="text" name="expsal" value="<%=f9%>"></td>
      </tr>
    </table>
    <table width="714" border="0" cellpadding="5">
      <tr> 
        <td width="187">&nbsp;</td>
        <td width="501">&nbsp;</td>
      </tr>
	  <%}%>
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
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>


</body>
</html>
