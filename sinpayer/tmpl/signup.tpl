{include file="header.tpl"}
<style>
.hdcont h3:first-of-type {
    margin-top: -147px !Important;
    color: #fff;
    font-weight: 400;
    font-size: 35px;
}
</style>
<link href="./hustydesigns/dashboard.css" rel="stylesheet" type="text/css" />
<div id="w-account">
    <div class="z-content">
        <div id="ws-account">
            <h3>Registration at coinedge.biz</h3>
            <br>
            <script language=javascript>
            function checkform() {
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
            <form method=post onsubmit="return checkform()" name="regform">
                <input type=hidden name=a value="signup">
                <input type=hidden name=action value="signup">
                <table cellspacing=0 cellpadding=2 border=0>
                    <tr>
                        <td>Your Full Name:</td>
                        <td>
                            <input type=text name=fullname value="{$frm.fullname|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Your Username:</td>
                        <td>
                            <input type=text name=username value="{$frm.username|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Define Password:</td>
                        <td>
                            <input type=password name=password value="{$frm.password|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Retype Password:</td>
                        <td>
                            <input type=password name=password2 value="{$frm.password2|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    {if $settings.def_payee_account_perfectmoney}
                    <tr>
                        <td>Your PerfectMoney Account:</td>
                        <td>
                            <input type=text class=inpts size=30 name=pay_account[18] value="{$frm.perfectmoney|escape:"quotes"}">
                        </td>
                    </tr>
                    {/if}
                    {if $settings.def_payee_account_payeer}
                    <tr>
                        <td>Your Payeer Account:</td>
                        <td>
                            <input type=text class=inpts size=30 name=pay_account[43] value="{$frm.payeer|escape:"quotes"}">
                        </td>
                    </tr>
                    {/if}
                    {if $settings.def_payee_account_bitcoin}
                    <tr>
                        <td>Your Bitcoin Account:</td>
                        <td>
                            <input type=text class=inpts size=30 name=pay_account[48] value="{$frm.bitcoin|escape:"quotes"}">
                        </td>
                    </tr>
                    {/if}
                    <tr>
                        <td>Your E-mail Address:</td>
                        <td>
                            <input type=text name=email value="{$frm.email|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Retype Your E-mail:</td>
                        <td>
                            <input type=text name=email1 value="{$frm.email1|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Secret question:</td>
                        <td>
                            <input type=text name=sq value="{$frm.sq|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Secret answer:</td>
                        <td>
                            <input type=text name=sa value="{$frm.sa|escape:"quotes"}" class=inpts size=30>
                        </td>
                    </tr>
                    <tr>
                        <td>Your Upline:</td>
                        <td>{$referer.name} ({$referer.username})</td>
                    </tr>
                    <tr>
                        <td colspan=2>
                            <input type=checkbox name=agree value=1> I agree with <a href="?a=rules">Terms and conditions</a></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type="hidden" name="signup_token" value="{$token}">
                            <input type=submit value="Register" class=sbmt>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
</div>
{include file="footer.tpl"}