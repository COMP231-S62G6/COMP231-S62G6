<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
  <% Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select noyexp from joborder");
%>
<form name="form1" method="post" action="./newjobset">
<table align=center border=0 cellpadding="5">
    <tr>
      <td width="132">Job Title</td>
      <td width="197">
          <input type="text" name="jobtit">
        </td>
      <td width="145">No.Years Exp</td>
      <td width="158">
          <select name="exp">
		
		  <option selected value=0>0</option>
	  <option value=1>1</option>
	  <option value=2>2</option>
	  <option value=3>3</option>
	  <option value=4>4</option>
		<option value=5>5</option>
          </select>
		 
        </td>
    </tr>
    <tr>
      <td>Job Code</td>
      <td><input type="text" name="jobcode"></td>
      <td>Opening Date</td>
      <td><input type="text" name="odate"></td>
    </tr>
    <tr>
      <td>Skill1</td>
      <td><input type="text" name="skill1"></td>
      <td>Closing Date</td>
      <td><input type="text" name="closdate"></td>
    </tr>
    <tr>
      <td>Skill2</td>
      <td><input type="text" name="skill2"></td>
      <td>Client id</td>
      <td><input type="text" name="cid" value=<%=session.getAttribute("userid")%>></td>
    </tr>
    <tr>
      <td>Skill3</td>
      <td><input type="text" name="skill3"></td>
      <td>Skill4</td>
      <td><input type="text" name="skill4"></td>
      </tr>
    <tr>
      <td>Skill5</td>
      <td><input type="text" name="skill5"></td>
      <td>Skill6</td>
      <td><input type="text" name="skill6"></td>
    </tr>
   </table>
      <center><br><br><input type="submit" name="Submit" value="Submit">
      &nbsp;<input type="Reset" name="Submit2" value="Cancel">
    </div>
</form>
</body>
</html>
