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
ResultSet rs=st.executeQuery("select * from skills where USERID='"+id+"'");
%>
<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="399"><strong><font color="#993333" size="+1">Modify The Ext User 
      Skills Details jsp.</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="skillsd" method="post" action="./updateuserskill">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> <% while(rs.next())
	  {
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
        <td width="187"><strong> <font color="#000000" size="-2"><strong>User 
          Id</strong></font></strong></td>
        <td width="180"><input type="text" name="uid" value="<%=f1%>"></td>
        <td width="151"><strong><font size="-2">Total Experience</font></strong></td>
        <td width="147"><font color="#000000"> 
          <input type="text" name="totexp" value="<%=f10%>">
          </font></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Skill1</font></strong></td>
        <td><input type="text" name="skill1" value="<%=f2%>"></td>
        <td><font color="#000000" size="-2"><strong>Skill2</strong></font></td>
        <td><input type="text" name="skill2" value="<%=f3%>"></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Skill3</font></strong></td>
        <td><input type="text" name="skill3" value="<%=f4%>"></td>
        <td><font color="#000000" size="-2"><strong> Skill4</strong></font></td>
        <td><input type="text" name="skill4" value="<%=f5%>"></td>
      </tr>
      <tr> 
        <td><font size="-2"><strong>Skill5</strong></font></td>
        <td><input type="text" name="skill5" value="<%=f6%>"></td>
        <td><font color="#000000" size="-2">&nbsp;<strong>Skill6</strong></font></td>
        <td><input type="text" name="skill6" value="<%=f7%>"></td>
      </tr>
      <tr> 
        <td><font size="-2"><strong>Other Skills</strong></font></td>
        <td><input type="text" name="othskill" value="<%=f8%>"></td>
        <td><strong></strong></td>
        <td>&nbsp;</td>
      </tr>
    </table>
    <table width="714" border="0" cellpadding="5">
      <tr> 
        <td width="177"><strong><font size="-2">Description Of Skills</font></strong></td>
        <td width="511"><textarea name="descskill"><%=f9%></textarea></td>
      </tr>
    </table>
    <table width="710" border="0" cellpadding="5">
      <tr>
        <td width="299"><div align="right">
            <input type="submit" name="Submit" value="Update">
          </div></td>
        <td width="385">&nbsp;</td>
      </tr><%}%>
    </table>
    
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>


</body>
</html>
