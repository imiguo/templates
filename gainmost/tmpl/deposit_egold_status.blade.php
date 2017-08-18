{%include file="header.blade.php"%}
<h2>Your Deposit status</h2><br>
<br>
{%if $process eq 'yes'%} We have received your deposit. Thank you! {%else%} We have 
not received your deposit. Please try again. {%/if%} {%include file="footer.blade.php"%}