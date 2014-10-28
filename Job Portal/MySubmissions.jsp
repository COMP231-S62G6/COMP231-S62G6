<%@ page language="java" %>
<%@ page import="java.sql.*,java.io.*,java.util.*"%>
 
<%
            String uid1 = (String)session.getAttribute("uid1");
            String Location = application.getRealPath(request.getServletPath());
            String dirpath = Location.substring(0,Location.lastIndexOf("\\"));
            String FPath = dirpath+"\\Downloads\\";
            String SearchType = "filename";
            String SearchData = uid1;
            String Query = "Select * from empreg where ";
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;

            String UserID, Password;

            try {
                /*Getting the connection variable from session*/
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
                stmt = con.createStatement();
                rs = stmt.executeQuery(Query);

            } catch (Exception e) {
                System.out.println("Exception" + e);
            }
%>
<HEAD>
    <script LANGUAGE="Javascript" SRC="validate.js"></script>
    <LINK href="styles/styles.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY class=Main>
    <BR><BR>
    <Fieldset class="custom">
        <LEGEND>My Submissions</LEGEND><BR><BR><BR><BR><BR><BR>
        <table align=center width="60%">
            <thead>
                <tr class="row_title">
                    <th colspan=3>My Submissions</th>
                </tr>
            </thead>
        </table>
        <table align=center width="60%">
            <%
            while (rs.next()) {
                String userid = rs.getString("uid1");
                String filename = rs.getString("filename");
                String Fullpath = FPath+""+filename;
                %>
                <td><B>Resume</B></td><td><%=filename%></td><th colspan=2><A HREF="FileDownloads.jsp?fileName=<%=Fullpath%>">Download</a></th>
            </tr>
            <%
            }
            %>
        </table>
        
        
    </FIELDSET>
</BODY>
