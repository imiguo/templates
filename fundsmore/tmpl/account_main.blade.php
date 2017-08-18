{%include file="header.blade.php"%}



<br>



<div class="boxreg2">

  <div class="boxregt">General Overview</div>



<table width="610" height="50" cellspacing="0" cellpadding="0" border="0" align="center">

  <!--DWLayoutTable-->

   <tbody><tr>

    <td width="375" valign="middle" height="45" class="regbg l">Your Username:</td>

    <td valign="middle" class="regbg"><b>{%$userinfo.username%}</b></td>

   </tr>

   <tr>

    <td width="375" valign="middle" height="45" class="regbg l">Last Access:</td>

    <td valign="middle" class="regbg">{%$last_access%}&nbsp;</td>

   </tr>

   <tr>

    <td valign="middle" height="45" class="regbg l">Account Balance:</td>

    <td valign="middle" class="regbg">{%$currency_sign%}<b>{%$ab_formated.total%}</b><br>

 <small>

</small></td></tr>

 

 

  <tr>

		<td width="195" valign="middle" height="45" class="regbg l">Earned Total:</td>

		<td valign="middle" class="regbg">{%$currency_sign%}<b>{%$ab_formated.earning%}</b></td>

   </tr>

</tbody></table></div><small><small><small>









<div style="width:290px; float:left;" class="boxreg2">

  <div class="boxregt">Deposits Details</div>





<table width="290" height="50" cellspacing="0" cellpadding="0" border="0" align="center">

   <tbody><tr>

		<td valign="middle" height="45" class="regbg l">Active Deposit:</td>

		<td valign="middle" class="regbg">{%$currency_sign%}<b>{%$ab_formated.active_deposit%}</b></td>

   </tr>

   <tr>

		<td width="190" valign="middle" height="45" class="regbg l">Last Deposit</td>

		<td valign="middle" class="regbg">{%$currency_sign%}<b>{%$last_deposit%}</b> &nbsp; <small>{%$last_deposit_date%}</small></td>

   </tr>

   <tr>

		<td valign="middle" height="45" class="regbg l">Total Deposit:</td>

		<td valign="middle" class="regbg">{%$currency_sign%}<b>{%$ab_formated.deposit%}</b></td>

   </tr>

</tbody></table> 

</div>

  

  

  

<div style="width:291px; float:left; margin-left:19px;" class="boxreg2">

  <div class="boxregt">Withdrawals Details</div>



<table width="291" height="50" cellspacing="0" cellpadding="0" border="0" align="center">

  <!--DWLayoutTable-->

   <tbody><tr>

    <td valign="middle" height="45" class="regbg l">Pending Withdrawal:</td>

    <td valign="middle" class="regbg">{%$currency_sign%}<b>{%$ab_formated.withdraw_pending%}</b></td>

   </tr>

   <tr>

    <td width="195" valign="middle" height="45" class="regbg l">Last Withdrawal:</td>

    <td valign="middle" class="regbg">{%$currency_sign%}<b>{%$last_withdrawal%}</b> &nbsp; <small>{%$last_withdrawal_date%}</small>	</td>

   </tr>

   <tr>

    <td valign="middle" height="45" class="regbg l">Total Withdrawal:</td>

    <td valign="middle" class="regbg">{%$currency_sign%}<b>{%$ab_formated.deposit%}</b></td>

   </tr>

</tbody></table></div>  



                                                                

<br><br>

<div class="boxreg">

  <table width="610" cellspacing="0" cellpadding="0" border="0" align="center">



 

<tbody><tr>

 <td valign="middle" class="regbg2">

<img width="150" height="150" class="alignleft" src="images/info.png?tag={%$tag%}"> <br>



<strong><font color="#2f2f2f">.	Minimum deposit is only $1.<br>

.	Payouts 7 days a week, our plans work on the basis of calendar days, not a business days.<br>

.	Fast withdrawals, no fee for withdraw.<br>

.	Principal is included in your profit.<br>

.	Earnings, which include your principal are reflected on your account upon plan expiry.<br>

.	Are you newbie? <a href="?a=cust&amp;page=getstarted">Get Started now!</a></font></strong><br>



</td>

</tr>

</tbody></table>

</div>









        

    

</small></small></small>







{%include file="footer.blade.php"%}

