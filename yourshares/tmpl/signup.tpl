{%include file="header.tpl"%}

<h2>Register Account</h2>
You may ONLY open one account by email address. With one account, you may open as many investments as you wish, in USD using the e-currency you want (Liberty Reserve, Perfect Money, Solid Trust Pay or Ego Pay).<br>
<br>
You must register at least one e-currency account. You may NOT change/add your e-currency account numbers later. Make sure your Perfectmoney account is started by "U", Solidtrustpay is "username" and NOT email, Egopay account is your Email ID used in their website.<br><br><br><br>

{%if $deny_registration%}
 We are closed for new registrations now.
{%elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref%}
 You  do not have a upline. Our system require a upline for each user.
{%else%}
 {%literal%}

 <script language=javascript>
 function checkform() {
  if (document.regform.fullname.value == '') {
    alert("Please enter your full name!");
    document.regform.fullname.focus();
    return false;
  }
 {%/literal%}
 {%if $settings.use_user_location%}
 {%literal%}
  if (document.regform.address.value == '') {
    alert("Please enter your address!");
    document.regform.address.focus();
    return false;
  }
  if (document.regform.city.value == '') {
    alert("Please enter your city!");
    document.regform.city.focus();
    return false;
  }
  if (document.regform.state.value == '') {
    alert("Please enter your state!");
    document.regform.state.focus();
    return false;
  }
  if (document.regform.zip.value == '') {
    alert("Please enter your ZIP!");
    document.regform.zip.focus();
    return false;
  }
  if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
    alert("Please choose your country!");
    document.regform.country.focus();
    return false;
  }
 {%/literal%}
 {%/if%}
 {%literal%}
  if (document.regform.username.value == '') {
    alert("Please enter your username!");
    document.regform.username.focus();
    return false;
  }
  if (document.regform.password.value == '') {
    alert("Please enter your password!");
    document.regform.password.focus();
    return false;
  }
  if (document.regform.password.value != document.regform.password2.value) {
    alert("Please check your password!");
    document.regform.password2.focus();
    return false;
  }
 {%/literal%}
 {%if $settings.use_transaction_code%}
 {%literal%}
  if (document.regform.transaction_code.value == '') {
    alert("Please enter your transaction code!");
    document.regform.transaction_code.focus();
    return false;
  }
  if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
    alert("Please check your transaction code!");
    document.regform.transaction_code2.focus();
    return false;
  }
 {%/literal%}
 {%/if%}
 {%literal%}
  if (document.regform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.email.value != document.regform.email1.value) {
    alert("Please retupe your e-mail!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.agree.checked == false) {
    alert("You have to agree with the Terms and Conditions!");
    return false;
  }
  return true;
 }

 function IsNumeric(sText) {
  var ValidChars = "0123456789";
  var IsNumber=true;
  var Char;
  if (sText == '') return false;
  for (i = 0; i < sText.length && IsNumber == true; i++) { 
    Char = sText.charAt(i); 
    if (ValidChars.indexOf(Char) == -1) {
      IsNumber = false;
    }
  }
  return IsNumber;
 }
 </script>
 {%/literal%}
 
 {%if $errors%}
  <ul style="color:red">
  {%section name=e loop=$errors%} 
   {%if $errors[e] eq 'full_name'%}
    <li>Please enter your full name!
   {%/if%}
   {%if $errors[e] eq 'address'%}
    <li>Please enter your address!
   {%/if%}
   {%if $errors[e] eq 'city'%}
    <li>Please enter your city!
   {%/if%}
   {%if $errors[e] eq 'state'%}
    <li>Please enter your state!
   {%/if%}
   {%if $errors[e] eq 'zip'%}
    <li>Please enter your zip!
   {%/if%}
   {%if $errors[e] eq 'country'%}
    <li>Please choose your country!
   {%/if%}
   {%if $errors[e] eq 'username'%}
    <li>Please enter your username!
   {%/if%}
   {%if $errors[e] eq 'username_exists'%}
    <li>Sorry, such user already exists! Please try another username. 
   {%/if%}
   {%if $errors[e] eq 'email_exists'%}
    <li>Sorry, such email already exists! Please try another email. 
   {%/if%} 
   {%if $errors[e] eq 'password'%} 
    <li>Please enter a password!
   {%/if%}
   {%if $errors[e] eq 'password_confirm'%}
    <li>Please check your password!
   {%/if%}
   {%if $errors[e] eq 'password_too_small'%}
    <li>The password you provided is too small, please enter at least {%$settings.min_user_password_length%} characters!
   {%/if%} 
   {%if $errors[e] eq 'transaction_code'%} 
    <li>Please enter the Transaction Code!
   {%/if%} 
   {%if $errors[e] eq 'transaction_code_confirm'%} 
    <li>Please check your Transaction Code!
   {%/if%}
   {%if $errors[e] eq 'transaction_code_too_small'%}
    <li>The Transaction Code you provided is too small, please enter at least {%$settings.min_user_password_length%} characters!
   {%/if%}
   {%if $errors[e] eq 'transaction_code_vs_password'%} 
    <li>The Transaction Code should differ from the Password!
   {%/if%}
   {%if $errors[e] eq 'egold'%} 
    <li>Please enter your e-gold account number!
   {%/if%}
   {%if $errors[e] eq 'email'%} 
    <li>Please enter your e-mail!
   {%/if%}
   {%if $errors[e] eq 'agree'%}
    <li>You have to agree with the Terms and Conditions!
   {%/if%}
   {%if $errors[e] eq 'turing_image'%}
    <li>Enter the verification code as it is shown in the corresponding box.
   {%/if%} 
   {%if $errors[e] eq 'no_upline'%}
    <li>The system requires an upline to register. {%if $settings.get_rand_ref%}You have to be agreed to random one or found a referral link in the net.{%/if%}
   {%/if%} 
   {%if $errors[e] eq 'ip_exists_in_database'%}
    <li>Your IP already exists in our database. Sorry, but registration impossible.
   {%/if%}

   <br> 
  {%/section%}
  </ul>
 {%/if%} 

 {%*------------------------------------------------------------------------------------*%}
<form name="regform" onsubmit="return checkform()" method="post">
<input type="hidden" value="signup" name="a">
<input type="hidden" value="signup" name="action">


<h4>General Details</h4>

<img width="580" height="45" src="images/pic9.jpg?tag={%$tag%}"><br>
<br>

<table width="580" height="29" cellspacing="0" cellpadding="0" border="0" bgcolor="#FAFAFA" align="center">
    <!--DWLayoutTable-->
  <tbody><tr>
    <td width="170" valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Name:</td>
    <td width="200" valign="middle" class="dots"><input type="text" style="width:175;height:20;" class="input2" value="{%$frm.fullname|escape:"quotes"%}" name="fullname"></td>
  <td width="210" valign="middle" class="dots">First name and last name here.</td>
  </tr>
  
  <tr>
    <td valign="middle" height="34" class="reg"><font color="#FF0000">*</font> E-mail Address:</td>
    <td valign="middle" class="dots"><input type="text" style="width:175;height:20;" class="input2" value="{%$frm.email|escape:"quotes"%}" name="email"></td>
  <td valign="middle" class="dots">Your valid e-mail address.</td>
  </tr>
  
  <tr>
    <td valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Retype E-mail:</td>
    <td valign="middle" class="dots"><input type="text" style="width:175;height:20;" class="input2" value="{%$frm.email1|escape:"quotes"%}" name="email1"></td>
  <td valign="middle" class="dots">Retype Your Email address.</td>
  </tr>
 
  <tr>
    <td valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Secret question:</td>
    <td valign="middle" class="dots"><input type="text" style="width:175;height:20;" class="input2" value="{%$frm.sq|escape:"quotes"%}" name="sq"></td>
  <td valign="middle" class="dots">Type a Secret Question.</td>
  </tr>
  
  <tr>
    <td valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Secret answer<font color="#FF0000">&nbsp;</font>:</td>
    <td valign="middle" class="dots"><input type="text" style="width:175;height:20;" class="input2" value="{%$frm.sa|escape:"quotes"%}" name="sa"></td>
  <td valign="middle" class="dots">Enter your answer.</td>
  </tr>
</tbody></table><br><br><br><br>


<h4>Login Details</h4>

<img width="580" height="45" src="images/pic5.jpg?tag={%$tag%}"><br><br>

<table width="580" height="29" cellspacing="0" cellpadding="0" border="0" bgcolor="#FAFAFA" align="center">
    <!--DWLayoutTable-->
  <tbody><tr>
    <td width="170" valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Username:</td>
    <td width="200" valign="middle" class="dots"><input type="text" style="width:175;height:20;" class="input2" value="{%$frm.username|escape:"quotes"%}" name="username"></td>
  <td width="210" valign="middle" class="dots">Your username.</td>
  </tr>
  
  <tr>
    <td valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Chose your password:</td>
    <td valign="middle" class="dots"><input type="password" style="width:175;height:20;" class="input2" value="{%$frm.password|escape:"quotes"%}" name="password"></td>
  <td valign="middle" class="dots">Minimum of 6 characters in length.</td>
  </tr>
  
  <tr>
    <td valign="middle" height="34" class="reg"><font color="#FF0000">*</font> Retype password:</td>
    <td valign="middle" class="dots"><input type="password" style="width:175;height:20;" class="input2" value="{%$frm.password2|escape:"quotes"%}" name="password2"></td>
  <td valign="middle" class="dots">Retype your password.</td>
  </tr>
</tbody></table><br><br><br><br>


<h4>Payment Accounts </h4>

<img width="580" height="45" src="images/pic6.jpg?tag={%$tag%}"><br><br>

<table width="580" height="29" cellspacing="0" cellpadding="0" border="0" bgcolor="#FAFAFA" align="center">
    <tbody>
{%section name=ps loop=$pay_accounts%}
<tr>
 <td width="170" valign="middle" height="34" class="reg">{%$pay_accounts[ps].name%} Account:</td>
 <td width="200" valign="middle" class="dots">
  <input type="text" style="width:175;height:20;" class="input2" name=pay_account[{%$pay_accounts[ps].id%}] value="{%$pay_accounts[ps].account|escape:html%}"></td>
 <td width="210" valign="middle" class="dots">Your account number.</td>
</tr>
{%/section%}
{%*
 <tr>
 <td width="170" valign="middle" height="34" class="reg">Payza Account:</td>
 <td width="200" valign="middle" class="dots"><input type="text" style="width:175;height:20;" class="input2" name=city value="{$frm.city|escape:"quotes"%}"></td>
 <td width="210" valign="middle" class="dots">Your account number.</td>
</tr>
*}
  </tbody></table><br><br><br><br>


<h4>User Agreement</h4>
<img width="580" height="45" src="images/pic7.jpg?tag={%$tag%}"><br><br>

<table width="580" cellspacing="0" cellpadding="0" border="0" align="center" class="tab">
<tbody><tr>
 <td width="200">Your Upline:</td>
 <td>{%$referer.name%} ({%$referer.username%})</td>
</tr>

<tr>
<td align="center" colspan="2">
<textarea class="input2" style="width:560; height:75;">You agree to be of legal age in your country to partake in this program, and in all the cases your minimal age must be 18 years. YourShares.biz is not available to the general public and is opened only to the qualified members of YourShares.biz, the use of this site is restricted to our members and to individuals personally invited by them. Every deposit is considered to be a private transaction between the YourShares.biz and its Member.
  
As a private transaction, this program is exempt from the US Securities Act of 1933, the US Securities Exchange Act of 1934 and the US Investment Company Act of 1940 and all other rules, regulations and amendments thereof. We are not FDIC insured. We are not a licensed bank or a security firm.

You agree that all information, communications, materials coming from YourShares.biz are unsolicited and must be kept private, confidential and protected from any disclosure. Moreover, the information, communications and materials contained herein are not to be regarded as an offer, nor a solicitation for investments in any jurisdiction which deems non-public offers or solicitations unlawful, nor to any person to whom it will be unlawful to make such offer or solicitation.

All the data giving by a member to YourShares.biz will be only privately used and not disclosed to any third parties. YourShares.biz is not responsible or liable for any loss of data. You agree to hold all principals and members harmless of any liability. You are investing at your own risk and you agree that a past performance is not an explicit guarantee for the same future performance. You agree that all information, communications and materials you will find on this site are intended to be regarded as an informational and educational matter and not an investment advice.</textarea>&nbsp;&nbsp;
</td>
</tr>

<tr>
 <td valign="middle" height="30" align="center" colspan="2"><input type="checkbox" value="1 {%if $frm.agree%}checked{%/if%}" name="agree"> 
 I agree with <b><a href="?a=rules">Terms and Conditions</a></b></td>
</tr>
<tr valign="middle">
 <td valign="bottom" height="35" align="center" colspan="2"><input type="submit" class="sbmt" value="Register"></td>
</tr>
</tbody></table>
<input type="hidden" name="_token" value="{%$csrf_token%}"></form>


{%*-------------------------------------------------------------------------*%}
{%/if%}
{%include file="footer.tpl"%}
