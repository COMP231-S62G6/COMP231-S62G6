<html>
<script LANGUAGE="JavaScript">

function s()
{
  document.newuserpersonal.userid.focus();
  return true;
}

function ss()
{
  if(document.newuserpersonal.userid.value==""||document.newuserpersonal.pass.value==""||document.newuserpersonal.fname.value==""||document.newuserpersonal.mname.value=="")
    {
	 alert("U must fill fields with * marks");
	  return false;
	}
 
     else return true;   	
}


</script>

<body bgcolor="#9999CC" LANGUAGE=javascript onLoad="s();">
<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="377"><strong><font color="#993333" size="+1">Enter the user 
      personal details.</font></strong> </td>
    <td width="235"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="newuserpersonal" method="post" action="applyjobdb.jsp" onSubmit="return ss();">
  <p>&nbsp;</p>
  <div align="center">
    <table width="856" border="0" cellpadding="5">
      <tr> 
        <td width="197"><strong> <font size="-2">User Name<font color="#FF3333">*</font></font></strong></td>
        <td width="247"><input type="text" name="userid"></td>
        <td width="218"><font color="#CC3300" size="-3">(Minimum 7 character)</font></td>
        <td width="144">&nbsp;</td>
      </tr>
     <tr> 
        <td><strong><font size="-2">Gender <font color="#CC0000">*</font></font></strong></td>
        <td><select name="gend">
		<option>Male</option>
		<option>Female</option>
          </select></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Skills<font color="#CC3333">*</font></font> 
          </strong></td>
        <td><input type="text" name="skills"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong> <font size="-3">Experience</font></strong></td>
        <td><input type="text" name="exp"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
     
      <tr> 
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Save"></td>
        
        <td><input type="Reset" name="Submit3" value="Cancel"></td>
      </tr>
    </table>
    <p><strong></p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
