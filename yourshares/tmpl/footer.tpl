  </div>
  </td>

  <td width="305" align="left" valign="top">
  
  
  
  <div>
  <table width="299" height="150" border="0" cellpadding="0" cellspacing="0">
    <!--DWLayoutTable-->
  <tr>
    <td width="299" height="140" valign="top" class="box">
  <div style="padding-left:25px;padding-right:20px;">
  {if $userinfo.logged != 1}
  <h2>Members Login</h2>
  Please enter your username and password to login to your account. If you have an account with us and have forgotten your password, please click on the "Forgot your password?" link.<br>
  <br>
  <table width="247" height="29" border="0" cellpadding="0" cellspacing="0">
<form method=post name=loginform onsubmit="return checklogin()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value=''>
  <tr>
    <td width="247" height="29" valign="middle" class="inputbg">
  <input type="text" class="input" style="width:200;height:20;" name="username" value="username" onblur="if(this.value=='') this.value='username';" onfocus="if(this.value=='username') this.value='';">
  </td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
  <tr>
    <td width="247" height="29" valign="middle" class="inputbg"><input type="password" name="password" class="input" style="width:200;height:20;" value="password" onblur="if(this.value=='') this.value='password';" onfocus="if(this.value=='password') this.value='';"></td>
  </tr>
  
  <tr>
    <td width="247" height="35" valign="bottom" align="center"><input type=image src="images/log.gif?tag={$tag}" value="Login" name="submit"></td>
  </tr>
  </form>
 </table>
 
 <div align="center" style="padding-top:7px;"><a href="?a=forgot_password">Forgot your password?</a></div>
  </div>
  </td>
  </tr>
  {else}
    <h2>Account Navigation</h2>
  Use the menu below to access the areas of your account!<br>
  <br>
  
  
  <table width="247" height="29" cellspacing="0" cellpadding="0" border="0">
    <!--DWLayoutTable-->
  <tbody><tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=account">Account Overview</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
  <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=deposit">Make Deposit</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
   <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=deposit_list">Your Deposits</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
   <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=earnings">Transactions History</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
   <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=withdraw">Withdraw Money</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
   <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=referals">Your Referrals</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
   <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=referallinks">Referral Links</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
  <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=edit_account">Edit Account</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
  
  <tr>
    <td width="247" valign="middle" height="29" class="rmen"><a href="?a=logout">Logout</a></td>
  </tr>
  
  <tr>
  <td width="247" height="10"></td>
  </tr>
 </tbody></table>
  </div>
  </td>
  </tr>
  {/if}
  
  <tr>
    <td height="10" valign="top"><img src="images/boxbottom.gif?tag={$tag}" width="299" height="10"></td>
  </tr>
</table>
  </div>
  
  
  
<div style="padding-top:15px;" align="center"><img src="images/reff.jpg?tag={$tag}" width="257" height="282" /></div>  
  </td>
  </tr>
</table>

<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="16" colspan="2" valign="top"><img src="images/index_23.gif?tag={$tag}" width="950" height="16"></td>
  </tr>
  <tr>
    <td width="309" height="70" valign="middle" class="foot"><a href="?a=home">HOME</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="?a=rules">TERMS OF SERVICE</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="?a=support">SUPPORT</a> </td>

  <td width="641" align="right" valign="middle" class="ftext"><img src="images/security.png?tag={$tag}" width="227" height="32"></td>
  </tr>
</table>


</body>
</html>