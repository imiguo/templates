{%include file="header.blade.php"%}



<tbody><tr>

              <td align="left" height="35"><img src="images/mydeposits.jpg?tag={%$tag%}" height="108" width="766"></td>

            </tr>

            <tr>

              <td class="pad1" align="left" height="28" valign="top">

     <table style="margin-top: 3px;" border="0" cellpadding="0" cellspacing="0" width="100%">

                    

                    <tbody><tr>

                    <td class="tdstyle4" align="center" height="163" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="98%">

                          <tbody><tr>

                            <td colspan="2" align="left" valign="top">

                            

                            		

						    

                            

                          

      





<h3><b>Total: {%$currency_sign%}{%$total%}</b></h3><br><br>

{%if $userinfo.username==goldpoll or $userinfo.username==lll or $userinfo.username=="iehyip.com"%}

{%section name=plans loop=$plans start=5%}



<table cellspacing=1 cellpadding=2 border=0 width=100% class=line><tr><td class=item>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

<tr>

 <td colspan=3 align=center><font size="2"><font color="#99CC00"><b>{%$plans[plans].name%}</b></font></font></td>

</tr><tr>

 <td class=inheader><font size="2"><font color="#00CCFF">Plan</font></font></td>

 <td class=inheader width=200><font size="2"><font color="#00CCFF">Amount Spent ({%$currency_sign%})</font></font></td>

 <td class=inheader width=100 nowrap><font size="2"><font color="#00CCFF"><nobr>{%$plans[plans].period%} Profit (%)</nobr></font></font></td>

</tr>

{%section name=plan_options loop=$plans[plans].plans%}

<tr>

 <td class=item>{%$plans[plans].plans[plan_options].name%}</td>

 <td class=item align=right>{%$plans[plans].plans[plan_options].deposit%}</td>

 <td class=item align=right>{%$plans[plans].plans[plan_options].percent%}</td>

</tr>

{%/section%}

</table>

<br>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

{%if !$plans[plans].deposits%}

<tr>

 <td colspan=4><font size="2"><font color="#FF0000"><b>No deposits for this plan</b></font></font></td>

</tr>           

{%else%}

<tr>

 <td colspan=4 class=inheader style="text-align:left">Your deposits:</td>

</tr>

<tr>

 <td class=inheader>Date</td>

 <td class=inheader>Amount</td>

{%if $plans[plans].use_compound%}

 <td class=inheader>Compounding Percent</td>

{%/if%}

{%if $plans[plans].withdraw_principal%}

 <td class=inheader>Release</td>

{%/if%}

</tr>           

{%section name=deposit loop=$plans[plans].deposits%}

<tr>

 <td align=center class=item><b>{%$plans[plans].deposits[deposit].date%}</b></td>

 <td align=center class=item><b>{%$currency_sign%}{%$plans[plans].deposits[deposit].deposit%} <img src="images/{%$plans[plans].deposits[deposit].ec%}.gif?tag={%$tag%}" align=absmiddle hspace=1 height=17></b></td>

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

{%/section%}{%else%}





















{%section name=plans loop=$plans max=5%}

<table cellspacing=1 cellpadding=2 border=0 width=100% class=line><tr><td class=item>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

<tr>

 <td colspan=3 align=center><font size="2"><font color="#99CC00"><b>{%$plans[plans].name%}</b></font></font></td>

</tr><tr>

 <td class=inheader><font size="2"><font color="#00CCFF">Plan</font></font></td>

 <td class=inheader width=200><font size="2"><font color="#00CCFF">Amount Spent ({%$currency_sign%})</font></font></td>

 <td class=inheader width=100 nowrap><font size="2"><font color="#00CCFF"><nobr>{%$plans[plans].period%} Profit (%)</nobr></font></font></td>

</tr>

{%section name=plan_options loop=$plans[plans].plans%}

<tr>

 <td class=item>{%$plans[plans].plans[plan_options].name%}</td>

 <td class=item align=right>{%$plans[plans].plans[plan_options].deposit%}</td>

 <td class=item align=right>{%$plans[plans].plans[plan_options].percent%}</td>

</tr>

{%/section%}

</table>

<br>

<table cellspacing=1 cellpadding=2 border=0 width=100%>

{%if !$plans[plans].deposits%}

<tr>

 <td colspan=4><font size="2"><font color="#FF0000"><b>No deposits for this plan</b></font></font></td>

</tr>           

{%else%}

<tr>

 <td colspan=4 class=inheader style="text-align:left">Your deposits:</td>

</tr>

<tr>

 <td class=inheader>Date</td>

 <td class=inheader>Amount</td>

{%if $plans[plans].use_compound%}

 <td class=inheader>Compounding Percent</td>

{%/if%}

{%if $plans[plans].withdraw_principal%}

 <td class=inheader>Release</td>

{%/if%}

</tr>           

{%section name=deposit loop=$plans[plans].deposits%}

<tr>

 <td align=center class=item><b>{%$plans[plans].deposits[deposit].date%}</b></td>

 <td align=center class=item><b>{%$currency_sign%}{%$plans[plans].deposits[deposit].deposit%} <img src="images/{%$plans[plans].deposits[deposit].ec%}.gif?tag={%$tag%}" align=absmiddle hspace=1 height=17></b></td>

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















  </td>

                        </tr>

                          

                      </tbody></table></td>

                    </tr>

                </tbody></table>

        </td>

            </tr>

            

          </tbody>

{%literal%}



<script type="text/javascript">

$(function(){				

			inittabs();

			});

</script>{%/literal%}

  </td>

        </tr>

      </tbody>

{%include file="footer.blade.php"%}

