{%include file="header.tpl"%}

	
			
			
<h2>Account Overview</h2>
<strong>The Account Overview page provides a snapshot of all your financial activity. You can view your account balance easy including the total balance of all your investments and interest earned .The balance of your account is updated in real time, up to the time of enquiry.</strong><br><br>
You can also use the navigation menu buttons to access different areas of your account, make new deposits, get referral link or change settings.<br><br><br>



<p align="center"><font size="4" face="MV Boli" color="#FE8A03">
User Info</font></p>

				<!--  / TEXT BOX \ -->
				<div class="textBox">
					


<table width="550" cellspacing="1" cellpadding="0" border="0" align="center">
<tbody><tr>
 <td width="400" class="field">User:</td>
 <td class="field"><strong>{%$userinfo.username%}</strong></td>
</tr>

<tr>
 <td class="field">Registration Date:</td>
 <td class="field"><strong>{%$userinfo.create_account_date%}</strong></td>
</tr>
	<tr>
<td>&nbsp;</td>
	</tr>
<tr>
 <td class="field">Last Access:</td>
 <td class="field"><strong>{%$last_access%}&nbsp;</strong>&nbsp;</td>
</tr>
</tbody></table>













				</div>
				<!--  \ TEXT BOX / -->


<p align="center"><font size="4" face="MV Boli" color="#FE8A03">Earnings</font></p>

				<!--  / TEXT BOX \ -->
				<div class="textBox">
					<table width="550" cellspacing="1" cellpadding="0" border="0" align="center">
<tbody><tr>
 <td width="400" valign="top" class="field">Account Balance:</td>
 <td class="field">{%$currency_sign%}<b>{%$ab_formated.total%}</b><br>
</td></tr>

<tr>
 <td class="field">Earned Total:</td>
 <td class="field">{%$currency_sign%}<b>{%$ab_formated.earning%}</b></td>
</tr>

<tr>
 <td class="field">Pending Withdrawal:</td>
 <td class="field">{%$currency_sign%}<b>{%$ab_formated.withdraw_pending%}</b></td>
</tr>

<tr>
 <td class="field">Withdrew Total:</td>
 <td class="field">{%$currency_sign%}<b>{%$ab_formated.withdrawal%}</b></td>
</tr>

<tr>
 <td class="field">Active Deposit:</td>
 <td class="field">{%$currency_sign%}<b>{%$ab_formated.active_deposit%}</b></td>
</tr>

</tbody></table>
				</div>
				<!--  \ TEXT BOX / -->


<p align="center"><font size="4" face="MV Boli" color="#FE8A03">Account History</font></p>

				<!--  / TEXT BOX \ -->
				<div class="textBox">
					<table width="550" cellspacing="1" cellpadding="0" border="0" align="center">
<tbody><tr>
 <td width="400" class="field">Last Deposit:</td>
 <td class="field">{%$currency_sign%}<b>{%$last_deposit%}</b> &nbsp; <small>{%$last_deposit_date%}</small></td>
</tr>

<tr>
 <td class="field">Total Deposit:</td>
 <td class="field">{%$currency_sign%}<b>{%$ab_formated.deposit%}</b></td>
</tr>

<tr>
 <td class="field">Last Withdrawal:</td>
 <td class="field">{%$currency_sign%}<b>{%$last_withdrawal%}</b> &nbsp; <small>{%$last_withdrawal_date%}</small></td>
</tr>

<tr>
    <td class="field">Withdrew Total:</td>
 <td class="field">{%$currency_sign%}<b>{%$ab_formated.withdrawal%}</b></td>
</tr>
</tbody></table>
				</div>
				<!--  \ TEXT BOX / -->



<!--  \ TEXT BOX / -->
{%include file="footer.tpl"%}
