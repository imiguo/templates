{%include file="header.blade.php"%}
<div id="w-account">
    <div class="z-content">
        <div id="ws-account">
            <h3>Registration at {%$app_site%}</h3>
            <br>
            <script language=javascript>
            function check_reg_form() {
                if (document.regform.fullname.value == '') {
                    alert("Please enter your full name!");
                    document.regform.fullname.focus();
                    return false;
                }


                if (document.regform.username.value == '') {
                    alert("Please enter your username!");
                    document.regform.username.focus();
                    return false;
                }
                if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
                    alert("For username you should use English letters and digits only!");
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
                var IsNumber = true;
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
            <form method=post onsubmit="return check_reg_form()" name="regform">
                <input type=hidden name=a value="signup">
                <input type=hidden name=action value="signup">
                <table cellspacing=0 cellpadding=2 border=0>
                    <tr>
                        <td>Your Full Name:</td>
                        <td>
                            <input type=text name=fullname value="{%$frm.fullname|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Your Username:</td>
                        <td>
                            <input type=text name=username value="{%$frm.username|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Define Password:</td>
                        <td>
                            <input type=password name=password value="{%$frm.password|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Retype Password:</td>
                        <td>
                            <input type=password name=password2 value="{%$frm.password2|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    {%if psconfig('pm.marchant_id')%}
                    <tr>
                        <td>Your PerfectMoney Account:</td>
                        <td>
                            <input type=text class=inpts size=30 name=perfectmoney value="{%$frm.perfectmoney|escape:"quotes"%}">
                        </td>
                    </tr>
                    {%/if%}
                    {%if psconfig('pe.shop_id')%}
                    <tr>
                        <td>Your Payeer Account:</td>
                        <td>
                            <input type=text class=inpts size=30 name=payeer value="{%$frm.payeer|escape:"quotes"%}">
                        </td>
                    </tr>
                    {%/if%}
                    {%if $settings.def_payee_account_bitcoin%}
                    <tr>
                        <td>Your Bitcoin Account:</td>
                        <td>
                            <input type=text class=inpts size=30 name=bitcoin value="{%$frm.bitcoin|escape:"quotes"%}">
                        </td>
                    </tr>
                    {%/if%}
                    <tr>
                        <td>Your E-mail Address:</td>
                        <td>
                            <input type=text name=email value="{%$frm.email|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Retype Your E-mail:</td>
                        <td>
                            <input type=text name=email1 value="{%$frm.email1|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Secret question:</td>
                        <td>
                            <input type=text name=sq value="{%$frm.sq|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Secret answer:</td>
                        <td>
                            <input type=text name=sa value="{%$frm.sa|escape:"quotes"%}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Your Upline:</td>
                        <td>{%$referer.name%} ({%$referer.username%})</td>
                    </tr>
                    <tr>
                        <td colspan=2>
                            <input type=checkbox name=agree value=1> I agree with <a href="?a=rules">Terms and conditions</a></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            {%if $errors%}
                             <ul style="color:red" class="error">
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
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type=submit value="Register" class=sbmt>
                        </td>
                    </tr>
                </table>
            <input type="hidden" name="_token" value="{%$csrf_token%}"></form>
        </div>
    </div>
</div>
</div>
{%include file="footer.blade.php"%}