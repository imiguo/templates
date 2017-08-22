{%include file="header.blade.php"%}

{%if $false_data != 1%}
    <h3>Please confirm your deposit:</h3>
    <br>
    <br>
    Amount ($US): <b>{%$amount_format%}</b><br>
        
    Send us to address: <i><a href="bitcoin:{%$settings.def_payee_account_bitcoin%}?message=Deposit+to+{%$settings.site_name%}+User+{%$userinfo.username%}">{%$settings.def_payee_account_bitcoin%}</a></i>
    <br>
    <br>
    <img id="coin_payment_image" src="{%$settings.def_payee_qrcode_bitcoin%}">
{%/if%}
{%include file="footer.blade.php"%}

