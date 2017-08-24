{%include file="header.blade.php"%}

{%if $false_data != 1%}
    <h3>Please confirm your deposit</h3>
    <br>
    <br>
    <form action="https://www.asmoney.com/sci.aspx" method="post">

        Your Bitcoin account: <b>{%$userinfo.bitcoin%}</b><br>
        Amount ($US): <b>{%$amount_format%}</b><br>

        <input type="hidden" name="USER_NAME" value="{%$settings.def_payee_username_bitcoin%}"/>
        <input type="hidden" name="STORE_NAME" value="{%$settings.def_payee_storename_bitcoin%}"/>
        <input type="hidden" name="PAYMENT_UNITS" value="USD"/>
        <input type="hidden" name="PAYMENT_AMOUNT" value="{%$amount%}"/>
        <input type="hidden" name="PAYMENT_ID" value="{%$payment_id%}"/>
        <input type="hidden" name="PAYMENT_METHOD" value="BITCOIN"/>
        <input type="hidden" name="PAYMENT_MEMO" value="Deposit to {%$settings.site_name%} User {%$userinfo.username%}"/>

        <br>
        <input type=submit name=i_submit value="Process" class=sbmt> &nbsp;
        <input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
    </form>
{%/if%}
{%include file="footer.blade.php"%}

