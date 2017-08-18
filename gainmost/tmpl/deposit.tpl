{%include file="header.tpl"%}







{%literal%}



<script language="javascript"><!--



function openCalculator(id)



{%







  w = 225; h = 400;



  t = (screen.height-h-30)/2;



  l = (screen.width-w-30)/2;



  window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");







{%/literal%}



  {%if $qplans > 1%}



{%literal%}



  for (i = 0; i < document.spendform.h_id.length; i++)



  {



    if (document.spendform.h_id[i].value == id)



    {



      document.spendform.h_id[i].checked = true;



    }



  }



{%/literal%}



  {%/if%}



{%literal%}



}



--></script>



{%/literal%}







{%if $frm.say eq 'deposit_success'%}



<h3>The deposit has been successfully saved.</h3>



<br><br>



{%/if%}







{%if $frm.say eq 'deposit_saved'%}



<h3>The deposit has been saved. It will become active when the administrator checks statistics.</h3><br><br>



{%/if%}







<h2>Make a Deposit</h2>

From this area  you can invest funds in any of your desired plans. Please follow the steps below to continue.<br><br>



<b>Steps to follow in order to invest.</b><br>

1. Select your desired investment package .<br>

2. Select a deposit method.<br>

3. Write your desired amount of investment.<br>

4. Hit the "Invest" button and you will be redirected to corresponding e-currency website where you should complete the transaction.<br><br>







<form method=post name="spendform">



<input type=hidden name=a value=deposit>



  {%if $qplans > 1%} Select a plan:<br>



{%/if%}







{%* ---------------------------------------------------------------------------------- *%}

{%if $userinfo.username==goldpoll or $userinfo.username==lll%}

{%section name=plans loop=$plans  start=3%}

<table cellspacing=1 cellpadding=2 border=0 width=100%>

<tr >

 <td colspan=3>

{%if $qplans > 1%}

<!--	<input type=radio name=h_id value='{%$plans[plans].id%}' {%if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)%} checked {%/if%} {%if $compounding_available > 0%}onclick="document.spendform.compound.disabled={%if $plans[plans].use_compound == 1%}false{%else%}true{%/if%};"{%/if%}> -->

{%else%}

	<input type=hidden name=h_id value='{%$plans[plans].id%}'>

{%/if%}

	<b>{%$plans[plans].name%}</b></td>

</tr><tr>

 <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Plan</td>

 <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Spent Amount ({%$currency_sign%})</td>

 <td width="167" bgcolor="#EFF0E1" align="center" class="heading"><nobr>{%$plans[plans].period%} Profit (%)</nobr></td>

</tr>

{%section name=options loop=$plans[plans].plans%}

<tr>

 <td width="167" bgcolor="#FEEDA0" align="center" class="heading">{%$plans[plans].plans[options].name|escape:html%}</td>

 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[options].deposit%}</td>

 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[options].percent%}</td>

</tr>

{%/section%}

{%if $settings.enable_calculator%}

<tr>

 <td colspan=3 align=right><a href="javascript:openCalculator('{%$plans[plans].id%}')">Calculate your profit &gt;&gt;</a></td>

</tr>

{%/if%}

</table>

{%/section%}











{%* ---------------------------------------------------------------------------------- *%}

{%else%}



{%*section name=plans loop=$plans max=5*%}



{%section name=plans loop=$plans  max=3%}



<table cellspacing=1 cellpadding=2 border=0 width=100%>



<tr>



 <td colspan=3>



{%if $qplans > 1%}







<!--	<input type=radio name=h_id value='{%$plans[plans].id%}' {%if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)%} checked {%/if%} {%if $compounding_available > 0%}onclick="document.spendform.compound.disabled={%if $plans[plans].use_compound == 1%}false{%else%}true{%/if%};"{%/if%}> -->



{%else%}



	<input type=hidden name=h_id value='{%$plans[plans].id%}'>



{%/if%}







	<b>{%$plans[plans].name%}</b></td>



</tr><tr>



 <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Plan</td>



 <td width="167" bgcolor="#EFF0E1" align="center" class="heading">Spent Amount ({%$currency_sign%})</td>



 <td width="167" bgcolor="#EFF0E1" align="center" class="heading"><nobr>{%$plans[plans].period%} Profit (%)</nobr></td>



</tr>



{%section name=options loop=$plans[plans].plans%}



<tr>



 <td width="167" bgcolor="#FEEDA0" align="center" class="heading">{%$plans[plans].plans[options].name|escape:html%}</td>



 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[options].deposit%}</td>



 <td width="167" bgcolor="#E0E0E0" align="center" class="heading">{%$plans[plans].plans[options].percent%}</td>



</tr>



{%/section%}



{%if $settings.enable_calculator%}



<tr>



 <td colspan=3 align=right><a href="javascript:openCalculator('{%$plans[plans].id%}')">Calculate your profit &gt;&gt;</a></td>



</tr>



{%/if%}



</table>







































<br><br>



{%/section%}







{%/if%}



















<table cellspacing=0 cellpadding=2 border=0>



<tr>



 <td>Your account balance ({%$currency_sign%}):</td>



 <td align=right>{%$currency_sign%}{%$ab_formated.total%}</td>



</tr>



<tr><td>&nbsp;</td>



 <td align=right>



  <small>



{%section name=p loop=$ps%}



   {%if $ps[p].balance > 0%}{%$currency_sign%}{%$ps[p].balance%} of {%$ps[p].name%}{%if $hold[p].amount > 0%} / {%$currency_sign%}{%$hold[p].amount%} on hold{%/if%}<br>{%/if%}



{%/section%}



  </small>



 </td>



</tr>















<tr>



      <td>Amount to Spend ({%$currency_sign%}):</td>



 <td align=left><input  width="20" type=text name=amount value='{%$min_deposit%}' class=inpts size=15 style="text-align:right;"></td>



</tr>



























<tr>



  <td >Select Your Plan



    </td>



   



   



   



  <td><select name=h_id >   



  



  

{%* ---------------------------------------------------------------------------------- *%}

    {%if $userinfo.username==goldpoll or $userinfo.username==lll or $userinfo.username=="iehyip.com" %} 



  



     {%section name=plans loop=$plans   start=3%}



  



   <option  value='{%$plans[plans].id%}'>{%$plans[plans].name%}</option>



  



  



     {%/section%}

{%* ---------------------------------------------------------------------------------- *%}

     {%else%}



	    {%*section name=plans loop=$plans max=3*%}



     {%section name=plans loop=$plans   max=3%}



   <option  value='{%$plans[plans].id%}'>{%$plans[plans].name%}</option>



  



  



     {%/section%}



	 {%/if%}

{%* ---------------------------------------------------------------------------------- *%}

  



  



  



    </select>



   



   



  </td>



</tr>











<tr><td>



Spend funds from











</td>







<td>         <select name="type">



{%section name=p loop=$ps%}







 {%if $ps[p].balance > 0 and $ps[p].status == 1%}<option  value="account_{%$ps[p].id%}">Balance {%$ps[p].name%}</option>{%/if%}











   {%if $ps[p].status%}







<option value="process_{%$ps[p].id%}" {%if $smarty.section.p.index == 0%}checked{%/if%}> {%$ps[p].name%}</option>























   {%/if%}



{%/section%}</select>           </td>







</tr>























<tr>



 <td colspan=2><input type=submit value="Invest" class=sbmt></td>



</tr></table>



<input type="hidden" name="_token" value="{%$csrf_token%}"></form>



{%literal%}



<script language=javascript>



for (i = 0; i<document.spendform.type.length; i++) {



  if ((document.spendform.type[i].value.match('/process_/'))) {



    document.spendform.type[i].checked = true;



    break;



  }



}



</script>



{%/literal%}







{%include file="footer.tpl"%}



