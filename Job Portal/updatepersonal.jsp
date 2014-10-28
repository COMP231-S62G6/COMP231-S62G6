<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body bgcolor="#9999FF">
<%! String id,preadd,peradd1,gender,pin,state1,city,country,offno,resno,extno,pasport,mobile,objective;%>

<%id=(String)session.getValue("uid1");%>
<%  
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from empreg where USERID='"+id+"'");
%>
<table width="100%" height="10%"  align=center>
  <tr> <td colspan=3 align=center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td  ><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td><td colspan=2 align=left>
    <strong><font color="#993333" size="+1">Update personal details.</font></strong> 
   <a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="updatepersonal" method="post" action="./updateuserpersonal">
  <p>&nbsp;</p>
  <div align="center">
    <table width="856" border="0" cellpadding="5">
      <tr> <%
	  while(rs.next())
	  {
		 

		  %>

        <td width="197"><strong> <font size="-2">User Name<font color="#FF3333">*</font></font></strong></td>
        <td width="247"><input type="text" name="userid" value="<%=rs.getString(1)%>"></td>

        <td width="218"><font color="#CC3300" size="-3">(Minimum 7 character)</font></td>
        <td width="144">&nbsp;</td>
      </tr>
      <tr> 
	   <td width="197"><strong> <font size="-2">Password<font color="#FF3333">*</font></font></strong></td>
      
        <td width="247"><input type="password" name="userid" value="<%=rs.getString(2)%>"></td>
        <td><font color="#CC0000" size="-3">(Minimum 7 character)</font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">First Name<font color="#CC3333">*</font></font> 
          </strong></td>
        <td><input type="text" name="fname" value="<%=rs.getString(3)%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong> <font size="-3">Middle Name</font></strong></td>
        <td><input type="text" name="mname" value="<%=rs.getString(4)%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Last Name</font></strong></td>
        <td><input type="text" name="lname" value="<%=rs.getString(5)%>"></td>
		 <% preadd=rs.getString(6);
		preadd=(preadd==null)?"":preadd;

		 peradd1=rs.getString(7);
		peradd1=(peradd1==null)?"":peradd1;
		 pin=rs.getString(8);
		pin=(pin==null)?"":pin;
			 city=rs.getString(9);
		city=(city==null)?"":city;
		
		 state1=rs.getString(10);
		state1=(state1==null)?"":state1;
		 country=rs.getString(11);
		country=(country==null)?"":country;
		 offno=rs.getString(12);
		offno=(offno==null)?"":offno;

		 extno=rs.getString(13);
		extno=(extno==null)?"":extno;
		 resno=rs.getString(14);
		resno=(resno==null)?"":resno;
		 pasport=rs.getString(15);
		pasport=(pasport==null)?"":pasport;
		 objective=rs.getString(16);
		objective=(objective==null)?"":objective;
		 mobile=rs.getString(17);
		mobile=(mobile==null)?"":mobile;
		 gender=rs.getString(18);
		gender=(gender==null)?"":gender;


		%>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Gender <font color="#CC0000">*</font></font></strong></td>
        <td><select name="gend"value="">
<%	 
			if(gender.equalsIgnoreCase("male"))

		{%>
       
		<option value='male' selected>Male</option>
		<option value='female'>Female</option> 
		<%
		}
		else
		  {
			%>
			<option value='male'>Male</option>
		 <option value='female' selected>Female</option>
		<%}%>
          </select></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Present Address<font color="#CC0000">*</font></font></strong></td>
        <td><textarea name="pmadd"><%=preadd%></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Permanent Address<font color="#CC0033">*</font></font></strong></td>
        <td><textarea name="psadd"><%=peradd1%></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">City<font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="f" value="<%=city%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">State</font></strong></td>
        <td><input type="text" name="state" value="<%=state1%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Country<font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="country" value="<%=country%>"></td>
        <td><font size="-2">pin</font></td>
        <td><input type="text" name="pin" value="<%=pin%>"></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Contact No(0ffice)</font></strong></td>
        <td><input type="text" name="cphoff" value="<%=offno%>"></td>
        <td><strong><font size="-2">Ext</font><font size="-3">(</font></strong><font color="#CC0000" size="-3">Maximum 
          5 digits</font><font size="-3"><strong>)</strong></font></td>
        <td><input type="text" name="offex" value="<%=extno%>"></td>
      </tr>
      <tr> 
        <td><p><strong><font size="-2">Contact No(Res)<font color="#CC0000">*</font></font></strong></p>
          <p><font color="#CC0033" size="-3">(With area code)</font></p></td>
        <td><input type="text" name="cphres" value="<%=resno%>"></td>
        <td><strong><font size="-2">Mobile No</font></strong></td>
        <td><input type="text" name="mph" value="<%=mobile%>"></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Passport No</font></strong></td>
        <td><input type="text" name="passno" value="<%=pasport%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Career Object<font color="#CC0000">*</font></font></strong></td>
        <td><textarea name="cobj"><%=objective%></textarea></td>
        <td><font color="#CC0000" size="-3">Maximum 200 characters</font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Update"></td>
        
        <td>&nbsp;</td>
      </tr><%}%>
    </table>
    <p><strong></p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
