{%include file="header.blade.php"%}

<h3>Your Deposit status</h3><br>

<br>

{%if $process eq 'yes'%} We have received your deposit. Thank you! {%else%} We have 

not received your deposit. Please try again. {%/if%} {%include file="footer.blade.php"%}