{%include file="header.blade.php"%}

{%if $false_data != 1%}
    <h3>Please confirm your deposit</h3>
    <br>
    <br>
    <form action="https://perfectmoney.is/api/step1.asp" method="POST">

        Your PerfectMoney account: <b>{%$userinfo.perfectmoney_account%}</b><br>
        Amount ($US): <b>{%$amount_format%}</b><br>

        <input type="hidden" name="PAYEE_ACCOUNT" value="{%psconfig('pm.marchant_id')%}">
        <input type="hidden" name="PAYEE_NAME" value="{%psconfig('pm.marchant_name')%}">
        <input type="hidden" name="PAYMENT_ID" value="{%$payment_id%}">

        <input type="hidden" name="PAYMENT_AMOUNT" value="{%$amount%}">
        <input type="hidden" name="PAYMENT_UNITS" value=USD>
        <input type="hidden" name="SUGGESTED_MEMO" value="Deposit to {%$settings.site_name%} User {%$userinfo.username%}">
        <input type="hidden" name="STATUS_URL" value="{%$settings.site_url%}/perfectmoney_processing.php">
        <input type="hidden" name="PAYMENT_URL" value="{%$settings.site_url%}/callback?a=return_perfectmoney&process=yes">
        <input type="hidden" name="PAYMENT_URL_METHOD" value="POST">
        <input type="hidden" name="NOPAYMENT_URL" value="{%$settings.site_url%}/callback?a=return_perfectmoney&process=no">
        <input type="hidden" name="NOPAYMENT_URL_METHOD" value="POST">

        <br>
        <input type=submit name=i_submit value="Process" class=sbmt> &nbsp;
        <input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
    </form>
{%/if%}
{%include file="footer.blade.php"%}

