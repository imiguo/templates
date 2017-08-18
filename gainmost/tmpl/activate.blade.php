{%include file="header.blade.php"%}

{%if $activated == 0%}
<b>Account not activated</b><br><br>
Account has been already activated or you have provide invalid activation code.
Please check link you received.
{%else%}
<b>Account activated</b><br><br>
{%/if%}


{%include file="footer.blade.php"%}
