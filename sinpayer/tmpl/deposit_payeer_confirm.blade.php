{%include file="header.blade.php"%}

{%if $false_data != 1%}
    <h3>Please confirm your deposit</h3>
    <br>
    <br>
    <form action="//payeer.com/api/merchant/m.php" method="GET">

        Your Payeer account: <b>{%$userinfo.payeer_account%}</b><br>
        Amount ($US): <b>{%$amount_format%}</b><br>

        <input type="hidden" name="m_shop" value="{%psconfig('pe.shop_id')%}">
        <input type="hidden" name="m_orderid" value="{%$m_orderid%}">
        <input type="hidden" name="m_amount" value="{%$amount%}">
        <input type="hidden" name="m_curr" value="USD">
        <input type="hidden" name="m_desc" value="{%$m_desc%}">
        <input type="hidden" name="m_sign" value="{%$m_sign%}">

        <br>
        <input type=submit name=i_submit value="Process" class=sbmt> &nbsp;
        <input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
    </form>
{%/if%}
{%include file="footer.blade.php"%}

