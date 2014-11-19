<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title></head>

<body>
<%! String exp;%>
  <%
  exp=request.getParameter("exp");
 Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select CLIENTID,JOBTITLE,JOBCODE,SKILL,NOYEXP,CLODATE from JOBS WHERE NOYEXP='"+exp+"'");
%>
<Center><font size=5><Strong>Jobs with Experience&nbsp;<%=exp%>

<hr>
<table border="0" cellpadding="5" bordercolor="#009988">
  <tr bordercolor="#990033" bgcolor="#999966"> 
    <td width="189">Client Id</td>
    <td width="154">Job Title</td>
    <td width="154">Jobcode</td>
    <td width="192">Requied Skills</td>
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
		
		%>

  <tr bgcolor="#9999CC"> 
    <td width="189"><%=f1%></td>
    <td width="154"><%=f2%></td>
    <td width="154"><%=f3%></td>
    <td width="192"><%=f4%>
<td><%=f5%>
<td><%=f6%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="applyjob.jsp">Apply Job</a>
   </tr>

<%}%>
</table>
<p>&nbsp;</p>
</body>
</html>
