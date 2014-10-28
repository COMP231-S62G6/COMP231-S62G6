<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>


<body bgcolor="#9999CC">

<%! String id;%>
<%! Connection con;%>
<%! Statement st;%>
<%! ResultSet rs;%>
<%id=(String)session.getValue("uid1");%>
<%  
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
 st=con.createStatement();
 rs=st.executeQuery("select * from education where USERID='"+id+"'");
%>
<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="399"><strong><font color="#993333" size="+1">Modify the Ext user 
      Education details.</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="form1" method="post" action="./modieducationaldet">
  <p>&nbsp;</p>
  <div align="center">
<table width="1055" border="0" cellpadding="5">
      <tr> <%if(rs.next())
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

String f11=rs.getString(11);
		f11=(f11==null)?"":f11;
String f12=rs.getString(12);
		f12=(f12==null)?"":f12;
String f13=rs.getString(13);
		f13=(f13==null)?"":f13;
String f14=rs.getString(14);
		f14=(f14==null)?"":f14;



		  %>
        <td width="187"><strong> <font size="-2">Height Qualification<font color="#FF3333">*</font></font></strong></td>
        <td width="180"><input type="text" name="hqul" value="<%=f1%>">
		</td>
        <td width="151"><strong><font size="-2">User Id</font></strong></td>
        <td width="147"><font color="#000000">
          <input type="text" name="uid" value="<%=f14%>">
          </font></td>
        <td width="158">&nbsp;</td>
        <td width="158">&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Post Graduation<font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="pg" value="<%=f2%>">
            </td>
        <td><font color="#000000" size="-2"><strong>University <font color="#CC0033">*</font></strong></font></td>
        <td><font color="#000000"> 
          <input type="text" name="pun" value="<%=f3%>">
          </font></td>
        <td><font color="#000000" size="-2"><strong>Percentage agg(% )<font color="#CC0000">*</font></strong></font></td>
        <td><input type="text" name="pgper" value="<%=f4%>"></td>
      </tr>
      <tr> 
        <td><strong></strong></td>
        <td>&nbsp;</td>
        <td><font color="#000000" size="-2">&nbsp;</font></td>
        <td>&nbsp;</td>
        <td><font color="#000000"><strong></strong></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Graduction<font color="#CC3333">*</font></font> 
          </strong></td>
        <td><input type="text" name="grad" value="<%=f5%>">

</td>
        <td><font color="#000000" size="-2"><strong>University <font color="#CC0033">*</font></strong></font></td>
        <td><input type="text" name="gun" value="<%=f6%>"></td>
        <td><font color="#000000" size="-4"><strong>Percentage agg(%) <font color="#CC0000">*</font></strong></font></td>
        <td><input type="text" name="gper" value="<%=f7%>"></td>
      </tr>
      <tr> 
        <td><strong></strong></td>
        <td>&nbsp;</td>
        <td><font color="#000000" size="-2">&nbsp;</font></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="40"><strong><font size="-2">InterMediate <font color="#CC3333">*</font></font></strong></td>
        <td><input type="text" name="inter" value="<%=f8%>"></td>
        <td><strong><font size="-2">Certificate NO <font color="#CC3300">*</font></font></strong></td>
        <td><input type="text" name="interctno" value="<%=f9%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="38"><strong><font size="-2">SSC <font color="#CC0033">*</font></font></strong></td>
        <td><input type="text" name="ssc" value="<%=f10%>"></td>
        <td><strong><font size="-2">Certificate NO <font color="#CC3300">*</font></font></strong></td>
        <td><input type="text" name="sscctno" value="<%=f11%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Other Qualification <font color="#CC0033"></font></font></strong></td>
        <td><input type="text" name="other1" value="<%=f12%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Other Certification</font></strong></td>
        <td><input type="text" name="othercert" value="<%=f13%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Save"></td>
        
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	  <%}%>
    </table>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>



</body>
</html>
