{%include file="header.blade.php"%}

<h2>Referral Links.</h2><br><br>
Your referral link:
{%$settings.site_url%}/?ref={%$user.username%}<br />

<a href={%$settings.site_url%}/?ref={%$user.username%}>
The best internet investment<br>
Earn a XXX% daily profit!
</a>

<br><br>
<textarea class=inpts cols=60 rows=4>
<a href={%$settings.site_url%}/?ref={%$user.username%}>
The best internet investment<br>
Earn a XXX% daily profit!
</a>
</textarea><br><br><br>


<a href={%$settings.site_url%}/?ref={%$user.username%}>
{%$settings.site_name%}.<br>
Easy. Safe. No risk.
</a>

<br><br>
<textarea class=inpts cols=60 rows=4>
<a href={%$settings.site_url%}/?ref={%$user.username%}>
{%$settings.site_name%}.<br>
Easy. Safe. No risk.
</a>
</textarea><br><br><br>


<a href={%$settings.site_url%}/?ref={%$user.username%}>
XX% daily for X weeks - total XX% guaranteed
</a>
<br><br>
<textarea class=inpts cols=60 rows=4>
<a href={%$settings.site_url%}/?ref={%$user.username%}>
XX% daily for X weeks - total XX% guaranteed
</a>
</textarea><br><br><br>



{%include file="footer.blade.php"%}
