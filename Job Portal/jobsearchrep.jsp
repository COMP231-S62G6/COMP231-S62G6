<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body>
<%! String skills;%>
  <%
  skills=request.getParameter("skill");
 Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");

Statement stmt=con.createStatement();
/*ResultSet rs=stmt.executeQuery("select CLIENTID,JOBTITLE,JOBCODE,SKILL1,SKILL2,SKILL3,SKILL4,SKILL5,SKILL6,NOYEXP,CLODATE from JOBORDER WHERE SKILL1='"+skills+"'");*/
ResultSet rs=stmt.executeQuery("select CLIENTID,JOBTITLE,JOBCODE,skill,NOYEXP,CLODATE from JOBS where skill LIKE '%"+skills+"%'");



%>
<Center><font size=5><Strong>Jobs with SkillSet&nbsp;<tt><%=skills%></tt>

<p>&nbsp;</p>
<hr>
<table  border="0">
   <tr bordercolor="#990033" bgcolor="#999966"> 
    <td width="189">Client Id</td>
    <td width="154">Job Title</td>
    <td width="154">Jobcode</td>
    <td width="192">Required Skills</td>
    <td width="145">Experience</td>
    <td width="187">Closing Date</td>
  </tr>

<% while(rs.next())
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
		/*String f7=rs.getString(7);
		f7=(f7==null)?"":f7;
		String f8=rs.getString(8);
		f8=(f8==null)?"":f8;
		String f9=rs.getString(9);
		f9=(f9==null)?"":f9;
		String f10=rs.getString(10);
		f10=(f10==null)?"":f10;
		String f11=rs.getString(11);
		f11=(f11==null)?"":f11;*/
		%>

 <tr bgcolor="#9999CC"> 
    <td width="189"><%=f1%></td>
    <td width="154"><%=f2%></td>
    <td width="154"><%=f3%></td>
    <td width="192"><%=f4%> </td><td><%=f5%><td> <%=f6%> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="applyjob.jsp">Apply Job</a>
       </tr> 

<%}%>
</table>
<p>&nbsp;</p> 
</body>
</html>