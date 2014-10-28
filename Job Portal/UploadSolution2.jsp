<%@ page language="java" %>

<%@ page import="java.sql.*,java.io.*,java.util.*"%>

<%@ page import="com.KBank.MultipartRequest"%>
<%	
String uid1 = request.getParameter("uid1");
String Location = application.getRealPath(request.getServletPath());
String dirpath = Location.substring(0,Location.lastIndexOf("\\"));
String FPath = dirpath+"\\Downloads\\";
%>
<HEAD>
	<script LANGUAGE="Javascript" SRC="validate.js"></script>
	<LINK href="styles/styles.css" type="text/css" rel="stylesheet">
     </HEAD>
<BODY class=SC bgcolor="#CCCC66">

    <BR><BR>
<Fieldset class="custom">
            <LEGEND>Submit Solutions</LEGEND><BR><BR><BR><BR><BR><BR>
<%
		try{
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();

			MultipartRequest multi = new MultipartRequest(request,FPath,5 * 1024 * 1024);
                        
                        Enumeration files = multi.getFileNames();
                        int iCnt = 0;
			while(files.hasMoreElements() ){
				String name = (String)files.nextElement();
				String filename = multi.getFilesystemName(name);
				String type = multi.getContentType(name);
                                System.out.println(name+"--"+(filename)+"--"+type+"--"+iCnt++);    
                                %>
                                <TABLE align=center width="50%">
                                <TR class=row_odd>
                                        <TH align=center colspan=2>Your Resume has been successfully uploaded</TH>
                                </TR>
                                <TR class=row_odd>
                                        <TH align=center>To continue....<a href="success.jsp">Touch me</a></TH>
                                </TR>
                                </TABLE>
                                    
                                <%
                                String Query = "update empreg set filename='" + filename + "' where userid='"+uid1+"'";
     System.out.println(Query+"[result]");
int i=stmt.executeUpdate(Query);
 System.out.println("[QUERY]"+i);
                        }
		}
		catch(IOException e){
			%>
			<pre>
			<script>
					window.alert('Error in Uploading. Please try again!');
			</script>	
			
			</PRE>
			<%
                        throw new Exception(e);
		}

%>
</Fieldset>    
</BODY>



