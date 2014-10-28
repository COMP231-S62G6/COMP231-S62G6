<%@ page language="java" %>

<%@ page import="java.sql.*,java.io.*,java.util.*"%>

<%
 String uid1;
uid1=(String)session.getValue("uid1");%>
%>
<HEAD>
	<script LANGUAGE="Javascript" SRC="validate.js"></script>
	<LINK href="styles/styles.css" type="text/css" rel="stylesheet">
<SCRIPT LANGUAGE="JavaScript">
<!--
	function validate(){
		var V = document.forms(0).FilePath.value;
		if(V=="" || V==null){
			alert("Please select a file to upload...");
			return false;
		}else{
			//alert(window.opener.document.forms(0).PhotoPath.value+"--");
			window.opener.document.forms(0).PhotoPath.value = V;
			window.opener.document.getElementById('infodiv').innerHTML = "Attached successfully";
			window.opener.document.forms(0).FUBtn.disabled=true;
			return true;
			
		}

	}
	
//-->
</SCRIPT>
</head>
<BODY class=SC>
 
    <BR><BR>
<Fieldset class="custom">
            <LEGEND>Submit Solutions</LEGEND><BR><BR><BR><BR><BR><BR>
<BR>
<form name="LoginForm" action="upload1.jsp" method="post" onsubmit="return fu()"  enctype="multipart/form-data">
    
<Input type=hidden value="<%=uid1%>"readonly name='userid' class= "TextField">
<TABLE align=center width="50%">
 <tr> 
        <td width="187"><strong> <font color="#000000" size="-2"><strong>User 
          Id</strong></font></strong></td>
        <td width="180"><input type="text" name="uid1"  value="<%out.print(uid1);%>"readonly></td>
        <td width="151"><strong></strong></td>
        <td width="147"><font color="#000000">&nbsp; </font></td>
      </tr>

	<TR class=row_title>
		<TH align=center colspan=2>Attach Document</TH>
		
	</TR>
	<TR class=row_odd>
		<TH align=left>File<FONT COLOR="red">*</FONT></TH>
		<TD align=center><Input type=file name='datafile' class= "Left Large TextField">
                    <INPUT TYPE="submit" value='Attach' class="Button">
                </TD>
	</TR>
</TABLE>
</FORM>
</Fieldset>
</body>


