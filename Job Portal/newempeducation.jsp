<%@ pageimport="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>


<body bgcolor="#9999CC">
<% String uid1;%>
<%
uid1=(String)session.getValue("uid1");%>

<center><br><br><font color="#993333" size="+1">Enter the new user 
   
 
<hr>
<p>&nbsp;</p>
<form name="form1" method="post" action="newuserqul.jsp">
  <p>&nbsp;</p>
  <div align="center">
<table width="1055" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font size="-2">Height Qualification<font color="#FF3333">*</font></font></strong></td>
        <td width="180"><select name="hqul">
		<option value="PG">PG</option>
		<option value="Degree">Degree</option>
		<option value="Diploma">Diploma</option>
		
		
          </select></td>
        <td width="151"><strong><font size="-2">User Id</font></strong></td>
        <td width="147"><font color="#000000">
          <input type="text" name="uid" value="<%out.print(uid1);%>"readonly>
          </font></td>
        <td width="158">&nbsp;</td>
        <td width="158">&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Post Graduction<font color="#CC0000">*</font></font></strong></td>
        <td><select name="pg">
            <option value="MTech">MTech</option>
           
            <option value="MCA">MCA</option>
            <option value="MSc">MSc</option>
            
          </select></td>
        <td><font color="#000000" size="-2"><strong>University <font color="#CC0033">*</font></strong></font></td>
        <td><font color="#000000"> 
          <input type="text" name="pun">
          </font></td>
        <td><font color="#000000" size="-2"><strong>Percentage agg(%) <font color="#CC0000">*</font></strong></font></td>
        <td><input type="text" name="pgper"></td>
      </tr>
      <tr> 
        <td><strong></strong></td>
        <td>&nbsp;</td>
        <td><font color="#000000" size="-2">&nbsp;</font></td>
        <td>&nbsp;</td>
        <td><font color="#000000"><strong></strong></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Graduction<font color="#CC3333">*</font></font> 
          </strong></td>
        <td><select name="grad">

            <option>BTech</option>
            <option>BE</option>
            <option>BSc</option>
            <option>BA</option>
          </select></td>
        <td><font color="#000000" size="-2"><strong>University <font color="#CC0033">*</font></strong></font></td>
        <td><input type="text" name="gun"></td>
        <td><font color="#000000" size="-4"><strong>Percentage agg(%) <font color="#CC0000">*</font></strong></font></td>
        <td><input type="text" name="gper"></td>
      </tr>
      <tr> 
        <td><strong></strong></td>
        <td>&nbsp;</td>
        <td><font color="#000000" size="-2">&nbsp;</font></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="40"><strong><font size="-2">InterMediate <font color="#CC3333">*</font></font></strong></td>
        <td><input type="text" name="inter"></td>
        <td><strong><font size="-2">Percentage<font color="#CC3300">*</font></font></strong></td>
        <td><input type="text" name="interctno"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="38"><strong><font size="-2">SSC <font color="#CC0033">*</font></font></strong></td>
        <td><input type="text" name="ssc"></td>
        <td><strong><font size="-2">Percentage<font color="#CC3300">*</font></font></strong></td>
        <td><input type="text" name="sscctno"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Other Qualification <font color="#CC0033"></font></font></strong></td>
        <td><input type="text" name="other1"></td>
       
     
        <td><strong><font size="-2">Other Certification</font></strong></td>
        <td><input type="text" name="othercert"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> </table><br><br>
       
<input type="submit" name="Submit" value="Save">
 <input type="Reset" name="Submit3" value="Cancel">
       
    
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>



</body>
</html>
