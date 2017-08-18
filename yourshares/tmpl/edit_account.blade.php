{%include file="header.tpl"%}

{%literal%}


<script language=javascript>
function IsNumeric(sText) {
  var ValidChars = "0123456789.";
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

function checkform() {
  if (document.editform.fullname.value == '') {
    alert("Please type your full name!");
    document.editform.fullname.focus();
    return false;
  }
{%/literal%}
{%if $settings.use_user_location%}
{%literal%}
  if (document.editform.address.value == '') {
    alert("Please enter your address!");
    document.editform.address.focus();
    return false;
  }
  if (document.editform.city.value == '') {
    alert("Please enter your city!");
    document.editform.city.focus();
    return false;
  }
  if (document.editform.state.value == '') {
    alert("Please enter your state!");
    document.editform.state.focus();
    return false;
  }
  if (document.editform.zip.value == '') {
    alert("Please enter your ZIP!");
    document.editform.zip.focus();
    return false;
  }
  if (document.editform.country.options[document.editform.country.selectedIndex].text == '--SELECT--') {
    alert("Please choose your country!");
    document.editform.country.focus();
    return false;
  }
{%/literal%}
{%/if%}
{%literal%}
  if (document.editform.password.value != document.editform.password2.value) {
    alert("Please check your password!");
    document.editform.fullname.focus();
    return false;
  }
{%/literal%}
{%if $settings.use_transaction_code%}
{%literal%}
  if (document.editform.transaction_code.value != document.editform.transaction_code2.value) {
    alert("Please check your transaction code!");
    document.editform.transaction_code2.focus();
    return false;
  }
{%/literal%}
{%/if%}
{%literal%}
{%/literal%}
{%if $settings.usercanchangeemail == 1%}
{%literal%}
  if (document.editform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.editform.email.focus();
    return false;
  }
{%/literal%}
{%/if%}
{%literal%}
  return true;
}
</script>
{%/literal%}

<h3>Your account:</h3><br><br>
<form action="index.php" method=post onsubmit="return checkform()" name=editform>
<input type=hidden name=a value=edit_account>
<input type=hidden name=action value=edit_account>
{%if $frm.say eq 'changed'%}
<font color=green>Your account data has been updated successfully.</font><br><br>
{%/if%}
{%if $errors%}
<ul style="color:red">
{%section name=e loop=$errors%}
{%if $errors[e] eq 'full_name'%}
<li>Please enter your Full Name!
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
{%if $errors[e] eq 'password'%}
    <li>Please enter a password!
{%/if%}
{%if $errors[e] eq 'password_confirm'%} 
    <li>Please check your password!
{%/if%}
{%if $errors[e] eq 'password_too_small'%}
<li>Password is too small, please enter at least {%$settings.min_user_password_length%} chars!
{%/if%}
{%if $errors[e] eq 'transaction_code'%}
    <li>Please enter the Transaction Code! {%/if%} {%if $errors[e] eq 'transaction_code_confirm'%} 
    <li>Please check your Transaction Code!
{%/if%}
{%if $errors[e] eq 'transaction_code_too_small'%}
<li>Transaction Code is too small, please enter at least {%$settings.min_user_password_length%} chars!
{%/if%}
{%if $errors[e] eq 'transaction_code_vs_password'%}
    <li>Transaction Code should be different then the Password! {%/if%} {%if $errors[e] 
      eq 'invalid_transaction_code'%} 
    <li>You have provided invalid Current Transaction Code!
{%/if%}
{%if $errors[e] eq 'email'%}
<li>Please enter your e-mail!
{%/if%}
<br>
{%/section%}
</ul>
{%/if%}
{%*======================================================================*%}
<img width="580" height="45" src="images/pic9.jpg?tag={%$tag%}"><br><br>

<table width="580" cellspacing="1" cellpadding="0" border="0" align="center">
<tbody><tr>
 <td width="380" valign="middle" height="34" class="reg">Name:&nbsp;&nbsp;</td>
 <td valign="middle" class="dots">
  <input type="text" style="width:175;height:20;" class="inpts" value="{%$userinfo.name|escape:"quotes"%}" name="fullname"></td>
</tr>

<tr>
 <td valign="middle" height="34" class="dots">Registration date:&nbsp;&nbsp;</td>
 <td valign="middle" class="dots"><strong>{%$userinfo.date_register%}</strong></td>
</tr>

<tr>
 <td valign="middle" height="34" class="dots">E-mail Address:&nbsp;&nbsp;</td>
 <td valign="middle" class="dots">
   <input type="text" style="width:175;height:20;" class="inpts" value="{%$userinfo.email|escape:"quotes"%}" name="email">
 </td>
</tr>
</tbody></table><br><br><br><br>



<h4>Login Details</h4>
<img width="580" height="45" src="images/pic5.jpg?tag={%$tag%}"><br><br>

<table width="580" cellspacing="1" cellpadding="0" border="0" align="center">
<tbody><tr>
 <td width="380" valign="middle" height="34" class="dots">Username:&nbsp;&nbsp;</td>
 <td valign="middle" class="dots"><strong>{%$userinfo.username%}</strong></td>
</tr>

<tr>
 <td width="170" valign="middle" height="34" class="dots">New Password:&nbsp;&nbsp;</td>
 <td valign="middle" class="dots"><input type="password" style="width:175;height:20;" class="inpts" value="" name="password"></td>
</tr>

<tr>
 <td width="170" valign="middle" height="34" class="dots">Retype Password:&nbsp;&nbsp;</td>
 <td valign="middle" class="dots"><input type="password" style="width:175;height:20;" class="inpts" value="" name="password2"></td>
</tr>
</tbody></table><br><br><br><br>



<h4>Payment Accounts </h4>
<img width="580" height="45" src="images/pic6.jpg?tag={%$tag%}"><br><br>


<table width="580" cellspacing="1" cellpadding="0" border="0" align="center">
<tbody>
{%section name=ps loop=$pay_accounts%}
<tr>
 <td width="380" valign="middle" height="34" class="reg">Your {%$pay_accounts[ps].name%} acc no:</td>
 <td valign="middle" class="dots"><input type="text" value="{%$pay_accounts[ps].account|escape:html%}" name=pay_account[{%$pay_accounts[ps].id%}] size="30" class="inpts"></td>
</tr>
{%/section%}
{%*
<tr>
 <td width="380" valign="middle" height="34" class="reg">Payza Account acc no:</td>
 <td valign="middle" class="dots"><input type="text" value="{$userinfo.city|escape:"quotes"%}" name=city size="30" class="inpts"></td>
</tr>
*}

<tr>
 <td height="30" class="field" colspan="3"></td>
</tr>

<tr>
 <td align="center" colspan="2"><input type="submit" class="sbmt" value="Edit Account"></td>
</tr>
</tbody></table>
<input type="hidden" name="_token" value="{%$csrf_token%}"></form>

{%include file="footer.tpl"%}

