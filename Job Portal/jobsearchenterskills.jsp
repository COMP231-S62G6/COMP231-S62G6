	<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<html>
<head>
<title>Untitled Document</title>

</head>


<body>
<form name="form2" method="post" action="./jobsearchrep.jsp">

<p>&nbsp;</p>
  <p align="center"><font size="+2"  color="#dd00aa"><Strong>Search on Skill to know the Vacancies</font></p>
  <p align="center"><font size="+2"><br>
    </font> </p>
  <div align="center">
    <%
 Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");

Statement stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select (skill)from jobs");
  
%>
  </div>
  <div align="center">
   Select the Skill
          <select name="skill">
            <%  Set hs=new HashSet(); 
              while(rs.next()){
         StringTokenizer stoken=new StringTokenizer(rs.getString(1),",");
       
     while(stoken.hasMoreTokens()){
          hs.add(stoken.nextToken());}
          
        }  	       
           Iterator i=hs.iterator();
           if(i.hasNext()){
                
 %>
            <option>C</option> 
<option>C++</option> 
<option>JAVA</option> 
<option>DOT NET</option> 
<option>HTML</option> 
<option>JAVA SCRIPT</option> 
            <%}%>
          </select>
   
            <input type="submit" name="Submit" value="Submit">
       
<p>&nbsp;</p>
</form>
</body>
</html>

