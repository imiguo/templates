</div>
</td>

<td width="231" valign="top" class="rbg">
{if $userinfo.logged != 1}
<div style="padding-left:10px;">
	<table width="200" border="0" cellpadding="0" cellspacing="0">
	  <!--DWLayoutTable-->
  <tr>
    <td width="200" height="40" valign="top"><img src="images/box_01.png" width="200" height="40"></td>
  </tr>
  <tr>
    <td valign="top" class="boxc" align="center">
	<div>
	<table width="165" border="0" cellpadding="0" cellspacing="0">
<form method=post name=loginform onsubmit="return checklogin()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value=''>

        <tr>
		    <td align="right" width="65" valign="middle" height="26" class="logform">Username:&nbsp;</td>
			<td width="100" valign="middle" align="right"><input type="text" name="username" class="input" style="height:20; width:100;"></td>
			</tr>

			<tr>
			<td align="right" valign="middle" height="26" class="logform">Password:&nbsp;</td>
			<td valign="middle" align="right"><input type="password" name="password" class="input" style="height:20; width:100;"></td>
			</tr>

			<tr>
			<td height="32" colspan="2" align="center" valign="bottom"><input type=image src="images/login.gif" value="Login"></td>
		  </tr>

		  <tr>
			<td height="20" colspan="2" align="center" valign="bottom" class="logform"><a href="?a=forgot_password">Forgot your password?</a></td>
		  </tr>
</form>
			</table>
	</div>
	</td>
  </tr>
  <tr>
    <td height="11" valign="top"><img src="images/box_04.gif" width="200" height="11"></td>
  </tr>
</table>
	</div>

<div style="padding-top:20px;padding-left:10px;">
<table width="200" border="0" cellpadding="0" cellspacing="0">
	  <!--DWLayoutTable-->
  <tr>
    <td width="200" height="35" valign="top"><img src="images/box1_01.gif" width="200" height="35"></td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items">Licensed Script</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items2">Ddos Protection</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items">Experienced Management</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items2">Secured SSL Protection</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items">24/7 Online Support</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items2">Up to 4.5% ref comission</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items">$1 Minimal Deposit</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items2">No Minim Withdraw</td>
  </tr>

  <tr>
    <td height="23" valign="middle" class="items">Fast Deposit and Withdrawal</td>
  </tr>
</table>
<p>&nbsp;</p>
</div>
{else}



<div style="padding-left:10px;">
<table border="0" cellpadding="0" cellspacing="0" width="200">
    <!--DWLayoutTable-->
  <tbody><tr>
    <td height="40" valign="top" width="200"><img src="images/menu_01.gif" height="40" width="200"></td>
  </tr>
  <tr>
    <td class="boxc" align="center" valign="top">
  <div>
  <table align="center" border="0" cellpadding="0" cellspacing="0" width="162">
    <!--DWLayoutTable-->
  <tbody><tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=account">Account Overview</a></td>
  </tr>


  <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=deposit">Make Deposits</a></td>
  </tr>

 <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=deposit_list">Your Deposits</a></td>
  </tr>

  <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=earnings">Account History</a></td>
  </tr>

  <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=withdraw">Withdraw Money</a></td>
  </tr>

  <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=referals">Your Referrals</a></td>
  </tr>

  <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=referallinks">Referral Links</a></td>
  </tr>

  <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=edit_account">Edit Account</a></td>
  </tr>

 <tr>
    <td class="rightmen" height="32" valign="middle"><a href="?a=logout">Logout</a></td>
  </tr>
  </tbody></table>
  </div>
  </td>
  </tr>
  <tr>
    <td height="11" valign="top"><img src="images/box_04.gif" height="11" width="200"></td>
  </tr>
</tbody></table>
</div>
{/if}
</td>
  </tr>
</table>
<div align="center" style="padding-top:17px;">
 Copyright &copy; 2013 All Rights Reserved
</div>
  <table width="962" border="0" align="center" cellpadding="0" cellspacing="0" style="background: url('images/cbg.gif') repeat-x scroll center top transparent;">
   <tbody>
    <tr>
     <td width="962" height="60" valign="middle" class="foot">
       <a href="?a=home">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       {if $userinfo.logged!=1}
       <a href="?a=signup">Register Account</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       {else}
       <a href="?a=deposit">Deposit</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="?a=logout">Log Out</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       {/if}
       <a href="?a=cust&amp;page=aboutus">About Us</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="?a=cust&amp;page=howtoinvest">how To Invest</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="?a=faq">F.A.Q</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="?a=rules">Terms</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="?a=support">Contact us</a>&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    </tr>
   </tbody>
  </table>
</body>
</html>