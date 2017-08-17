{%include file="header.tpl"%}
<h3>Support Form</h3>
<br>

{%if $say eq 'send'%}
Message has been successfully sent. We will back to you in next 24 hours. Thank you.<br><br>
{%else%}
<script language=javascript>
{%if $userinfo.logged == 1%}
function checkform() {%
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  %}
  return true;
}
{%else%}
function checkform() {%
    if (document.mainform.name.value == '') {
        alert("Please type your full name!");
        document.mainform.name.focus();
        return false;
    %}
    if (document.mainform.email.value == '') {%
        alert("Please enter your e-mail address!");
        document.mainform.email.focus();
        return false;
    %}
    if (document.mainform.message.value == '') {%
        alert("Please type your message!");
        document.mainform.message.focus();
        return false;
    %}
    return true;
}
{%/if%}
</script>
<form method=post name=mainform onsubmit="return checkform()">
    <input type=hidden name=a value=support>
    <input type=hidden name=action value=send>
    <table cellspacing=0 cellpadding=2 border=0>
        <tr>
            <td>Your Name:</td>
            <td>
                {%if $userinfo.logged%}
                <b>{%$userinfo.name%}</b>
                {%else%}
                <input type="text" name="name" value="" size=30 class=inpts>
                {%/if%}
            </td>
        </tr>
        <tr>
            <td>Your Email:</td>
            <td>
                {%if $userinfo.logged%}
                <b>{%$userinfo.email%}</b>
                {%else%}
                <input type="text" name="email" value="" size=30 class=inpts>
                {%/if%}
            </td>
        </tr>
        <tr>
            <td>Subject:</td>
            <td>
                <input type="text" name="subject" value="" size=30 class=inpts>
            </td>
        </tr>
        <tr>
            <td colspan=2>Message:
                <br>
                <br>
                <textarea name=message class=inpts cols=45 rows=4></textarea>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <input type=submit value="Send" class=sbmt>
            </td>
        </tr>
    </table>
<input type="hidden" name="_token" value="{%$csrf_token%}"></form>
{%/if%}
{%include file="footer.tpl"%}