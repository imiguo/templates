{%include file="header.blade.php"%}

{%if $false_data != 1%}
    <h3>Please confirm your deposit</h3>
    <br>
    <br>
    <form action="https://www.asmoney.com/sci.aspx" method="post">

        Your Bitcoin account: <b>{%$userinfo.bitcoin%}</b><br>
        Amount ($US): <b>{%$amount_format%}</b><br>

        <input type="hidden" name="USER_NAME" value="{%psconfig('am.user_name')%}"/>
        <input type="hidden" name="STORE_NAME" value="{%psconfig('am.store_name')%}"/>
        <input type="hidden" name="PAYMENT_UNITS" value="{%psconfig('am.payment_units')%}"/>
        <input type="hidden" name="PAYMENT_AMOUNT" value="{%$amount%}"/>
        <input type="hidden" name="PAYMENT_ID" value="{%$payment_id%}"/>
        <input type="hidden" name="PAYMENT_METHOD" value="{%psconfig('am.payment_method')%}"/>
        <input type="hidden" name="PAYMENT_MEMO"
            value="Deposit to {%$settings.site_name%} User {%$userinfo.username%}"/>

        <br>
        <input type=submit name=i_submit value="Process" class=sbmt> &nbsp;
        <input type=button class=sbmt value="Cancel" onclick="document.location='?a=deposit'">
    </form>
{%/if%}
{%include file="footer.blade.php"%}

