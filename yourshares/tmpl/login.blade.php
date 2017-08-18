{%include file="header.blade.php"%}
<h2>Account Login </h2>
Please enter your username and password to login to your account. If you have an account with us and have forgotten your password, please clcik on the "Forgot your password?" and complete the password reminder form, then your password will be e-mailed to you immediately.<br><br><br>

{%literal%}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{%/literal%}

{%if $frm.say eq 'invalid_login'%}
<h3>Login error:</h3>

Your login or password or turing image code is wrong. Please check this information.
<br><br>
{%/if%}

<img width="580" height="45" src="images/pic8.jpg?tag={%$tag%}"><br><br>

<form onsubmit="return checkform()" name="mainform" method="post">
<input type="hidden" value="do_login" name="a">
<input type="hidden" value="" name="follow">
<input type="hidden" value="" name="follow_id">


<table width="580" height="29" cellspacing="0" cellpadding="0" border="0" bgcolor="#FAFAFA" align="center">
    <!--DWLayoutTable-->
  <tbody>
  <tr>
    <td width="170" valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Account Number:</td>
    <td width="200" valign="middle" class="dots"><input style="width:175;height:20;" class="input2" value="{%$frm.username|escape:"html"%}" name="username"></td>
  <td width="210" valign="middle" class="dots">Your valid account number.</td>
  </tr>
  
  <tr>
    <td valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Password:</td>
    <td valign="middle" class="dots"><input type="password" style="width:175;height:20;" class="input2" value="" name="password"></td>
    <td valign="middle" class="dots">Your password.</td>
  </tr>
  
  <tr>
  <td valign="middle" height="34"><!--DWLayoutEmptyCell-->&nbsp;</td>
  <td valign="middle" class="tab" colspan="2"><input type="submit" class="sbmt" value="Login">    &nbsp;&nbsp;&nbsp;<a href="?a=forgot_password">Forgot your password?</a></td>
  </tr>
</tbody></table>
<input type="hidden" name="_token" value="{%$csrf_token%}"></form><br><br><br><br>

<h4>Account Security</h4>
YourShares.biz considers the security of your account information to be of primary importance. We maintain the strictest physical, electronic, and procedural safeguards to secure your data and prevent unauthorized account access. Please remember that YourShares.biz will never send you unsolicited email asking you for your password or for any personal information.<br>
<br><br>

<h3>Email security</h3>
As email is not a secure method of transmitting information, always be careful when sending sensitive information via email.
<ul>
<li>Use caution before responding to email requests for account login or other personal information.</li>
<li>Never enter any information into an email or pop up. YourShares.biz will never solicit account or personal information via email.</li> 
<li>Do not open emails from unrecognized senders.</li> 
<li>Use spam detectors to filter malicious and fraudulent emails.</li> 
<li>Beware of emails that request you to click on a link or visit a web site. These links could lead to malicious sites intended on gathering your personal information. Such malicious sites often look very similar to the legitimate web site of the companies being misrepresented. These emails typically convey a sense of urgency.</li>
</ul><br>


<h3>Password security</h3>
One of the most important steps towards keeping your information safe is to create a password that is difficult to guess. 
<ul>
<li>Do not use a predictable password. Avoid using nicknames, birthdates, anniversary date, or pet names.</li>
<li>Mix capital and lower case letters. Include numbers and punctuation marks.</li> 
<li>Do not use keyboard patterns (asdf) or sequential numbers (1234).</li> 
<li>Never tell or email your password to anyone.</li> 
<li>Periodically change your password.</li> 
<li>Do not use words found in the dictionary. Hackers can use programs that try to crack your password.</li>
</ul><br>

<h3>While logged in to your YourShares.biz account</h3>
There are several steps you can take to improve your security while logged in to YourShares.biz account.
<ul>
<li>Review your transaction history.</li> 
<li>Always check your e-currency account details.</li> 
<li>Review your last login time and last login IP address which you can find on the top of any page while being logged into your YourShares.biz account.</li> 
<li>Do not leave your computer unattended while logged in to your YourShares.biz account.</li> 
<li>Always log off of your YourShares.biz account and close your web browser when you have finished your online session.</li> 
</ul>

{%include file="footer.blade.php"%}
