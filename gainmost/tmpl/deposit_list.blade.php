{%include file="header.blade.php"%}



<h2>Total Deposits: <font color="#008B67">{%$currency_sign%}{%$total%}</font></h2>

<br><br>







{%* ---------------------------------------------------------------------------------- *%}

{%if $userinfo.username==goldpoll or $userinfo.username==lll or $userinfo.username=="iehyip.com"%}



{%section name=plans loop=$plans start=3%}

<table cellspacing=1 cellpadding=2 border=0 width=100% class=line><tr><td class=item>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

<tr>

 <td colspan=3 align=center><b>{%$plans[plans].name%}</b></td>

</tr><tr>

  <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Plan</td>

  <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Amount Spent ({%$currency_sign%})</td>

  <td width="167" bgcolor="#EFF0E1" align="center" class="heading"><nobr>{%$plans[plans].period%} Profit (%)</nobr></td>

</tr>

{%section name=plan_options loop=$plans[plans].plans%}

<tr>

 <td width="167" bgcolor="#FEEDA0" align="center" class="heading">{%$plans[plans].plans[plan_options].name%}</td>

 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[plan_options].deposit%}</td>

 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[plan_options].percent%}</td>

</tr>

{%/section%}

</table>

<br>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

{%if !$plans[plans].deposits%}

<tr>

 <td colspan=4><b><font color="red">No deposits for this plan</font></b></td>

</tr>           

{%else%}

<tr>

 <td colspan=4 bgcolor="#EFF0E1" align="center" class="heading">Your deposits:</td>

</tr>

<tr>

 <td bgcolor="#EFF0E1" align="center" class="heading">Date</td>

 <td bgcolor="#EFF0E1" align="center" class="heading">Amount</td>

{%if $plans[plans].use_compound%}

 <td class=inheader>Compounding Percent</td>

{%/if%}

{%if $plans[plans].withdraw_principal%}

 <td class=inheader>Release</td>

{%/if%}

</tr>           

{%section name=deposit loop=$plans[plans].deposits%}

<tr>

 <td bgcolor="#E0E0E0" align="center" class="heading"><b>{%$plans[plans].deposits[deposit].date%}</b></td>

 <td bgcolor="#E0E0E0" align="center" class="heading"><b>{%$currency_sign%}{%$plans[plans].deposits[deposit].deposit%} <img src="images/{%$plans[plans].deposits[deposit].ec%}.gif?tag={%$tag%}" align=absmiddle hspace=1 height=17></b></td>

{%if $plans[plans].use_compound%}

 <td align=center class=item align=center>{%$plans[plans].deposits[deposit].compound%}% <a href="?a=change_compound&deposit={%$plans[plans].deposits[deposit].id%}">[change]</a></td>

{%/if%}

{%if $plans[plans].withdraw_principal%}

 <td align=center class=item>

  {%if $plans[plans].deposits[deposit].can_withdraw%}

   <a href="?a=withdraw_principal&deposit={%$plans[plans].deposits[deposit].id%}">[release]</a>

  {%else%}

   {%if $plans[plans].deposits[deposit].pending_duration > 0%}

    {%$plans[plans].deposits[deposit].pending_duration%} day{%if $plans[plans].deposits[deposit].pending_duration > 1%}s{%/if%} left

   {%else%}

    not available

   {%/if%}

  {%/if%}

 </td>

{%/if%}

</tr>

{%/section%}

{%/if%}

</table>

{%if $plans[plans].total_deposit > 0 || $plans[plans].today_profit > 0 || $plans[plans].total_profit > 0%}

<table cellspacing=0 cellpadding=1 border=0>

<tr><td>Deposited Total:</td><td><b>{%$currency_sign%}{%$plans[plans].total_deposit%}</b></td></tr>

<tr><td>Profit Today:</td><td><b>{%$currency_sign%}{%$plans[plans].today_profit%}</b></td></tr>

<tr><td>Total Profit:</td><td><b>{%$currency_sign%}{%$plans[plans].total_profit%}</b></td></tr>

</table>

{%/if%}

<br>

</td></tr></table>

<br>

{%/section%}



{%* ---------------------------------------------------------------------------------- *%}

{%else%}

{%*section name=plans loop=$plans max=5*%}





{%section name=plans loop=$plans max=3%}

<table cellspacing=1 cellpadding=2 border=0 width=100% class=line><tr><td class=item>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

<tr>

 <td colspan=3 align=center><b>{%$plans[plans].name%}</b></td>

</tr><tr>

  <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Plan</td>

  <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Amount Spent ({%$currency_sign%})</td>

  <td width="167" bgcolor="#EFF0E1" align="center" class="heading"><nobr>{%$plans[plans].period%} Profit (%)</nobr></td>

</tr>

{%section name=plan_options loop=$plans[plans].plans%}

<tr>

 <td width="167" bgcolor="#FEEDA0" align="center" class="heading">{%$plans[plans].plans[plan_options].name%}</td>

 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[plan_options].deposit%}</td>

 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[plan_options].percent%}</td>

</tr>

{%/section%}

</table>

<br>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

{%if !$plans[plans].deposits%}

<tr>

 <td colspan=4><b><font color="red">No deposits for this plan</font></b></td>

</tr>           

{%else%}

<tr>

 <td colspan=4 bgcolor="#EFF0E1" align="center" class="heading">Your deposits:</td>

</tr>

<tr>

 <td bgcolor="#EFF0E1" align="center" class="heading">Date</td>

 <td bgcolor="#EFF0E1" align="center" class="heading">Amount</td>

{%if $plans[plans].use_compound%}

 <td class=inheader>Compounding Percent</td>

{%/if%}

{%if $plans[plans].withdraw_principal%}

 <td class=inheader>Release</td>

{%/if%}

</tr>           

{%section name=deposit loop=$plans[plans].deposits%}

<tr>

 <td bgcolor="#E0E0E0" align="center" class="heading"><b>{%$plans[plans].deposits[deposit].date%}</b></td>

 <td bgcolor="#E0E0E0" align="center" class="heading"><b>{%$currency_sign%}{%$plans[plans].deposits[deposit].deposit%} <img src="images/{%$plans[plans].deposits[deposit].ec%}.gif?tag={%$tag%}" align=absmiddle hspace=1 height=17></b></td>

{%if $plans[plans].use_compound%}

 <td align=center class=item align=center>{%$plans[plans].deposits[deposit].compound%}% <a href="?a=change_compound&deposit={%$plans[plans].deposits[deposit].id%}">[change]</a></td>

{%/if%}

{%if $plans[plans].withdraw_principal%}

 <td align=center class=item>

  {%if $plans[plans].deposits[deposit].can_withdraw%}

   <a href="?a=withdraw_principal&deposit={%$plans[plans].deposits[deposit].id%}">[release]</a>

  {%else%}

   {%if $plans[plans].deposits[deposit].pending_duration > 0%}

    {%$plans[plans].deposits[deposit].pending_duration%} day{%if $plans[plans].deposits[deposit].pending_duration > 1%}s{%/if%} left

   {%else%}

    not available

   {%/if%}

  {%/if%}

 </td>

{%/if%}

</tr>

{%/section%}

{%/if%}

</table>

{%if $plans[plans].total_deposit > 0 || $plans[plans].today_profit > 0 || $plans[plans].total_profit > 0%}

<table cellspacing=0 cellpadding=1 border=0>

<tr><td>Deposited Total:</td><td><b>{%$currency_sign%}{%$plans[plans].total_deposit%}</b></td></tr>

<tr><td>Profit Today:</td><td><b>{%$currency_sign%}{%$plans[plans].today_profit%}</b></td></tr>

<tr><td>Total Profit:</td><td><b>{%$currency_sign%}{%$plans[plans].total_profit%}</b></td></tr>

</table>

{%/if%}

<br>

</td></tr></table>

<br>

{%/section%}

{%/if%}

{%* ---------------------------------------------------------------------------------- *%}

{%include file="footer.blade.php"%}

