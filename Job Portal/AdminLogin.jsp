<html>
<head>
<script>
function add()
{
	if(window.admin.name.value==0)
	{
		alert("Enter Username");
		window.admin.name.focus();
		return false;
	}
	if(window.admin.pass.value==0)
	{
		alert("Enter Password");
		window.admin.pass.focus();
		return false;
	}
return true;
}
</script>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="darkdarkblue">
<form action="./alogin" name="admin">

<p align="center"><font color="#0033FF" size="+4">Login Form</font></p>

<table width="28%" border="1" align="center">
  <tr>
    <td>UserName </td>
    <td>
        <input type="text" name="name">
      </td>
  </tr>
  <tr>
    <td>Password</td>
    <td> <input type="password" name="pass">
      </td>
  </tr>
  <tr>
    <td> <input type="submit" name="Submit" value="Submit" onclick="return add()">
     </td>
    <td>
        <input name="Reset" type="reset" value="Reset">
      </td>
  </tr>
</table>
</form>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
