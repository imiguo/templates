{include file="header.tpl"}
{*------------>交易码*}
{if $settings.use_transaction_code ==1 && $userinfo.transaction_code == ''}
<b>Note: currently you have not specified
a Transaction code. The Transaction code strengthens your funds security in our
system. The code is required to withdraw funds from your account
	{if $settings.internal_transfer_enabled}
		and for internal transfer to another user account
	{/if}. Just do not change 'Transaction
code' in your account information if you do not want to use this feature.
	<a href=?a=edit_account>Click here</a>
	to specify a new transaction code .
</b>
<br>
<br>
{/if}

{*========================================================================*}


<h2>Account <font color="#4D9001">Overview</font></h2>

<table align="center" border="0" cellpadding="2" cellspacing="0" width="450">
<tbody><tr>
 <td height="20" width="320">User:</td>
 <td>{$userinfo.username}</td>
</tr>

<tr>
 <td height="20">Registration Date:</td>
 <td>{$userinfo.create_account_date}</td>
</tr>

<tr>
 <td height="20">Last Access:</td>
 <td>{$last_access}&nbsp;</td>
</tr>

<tr>
<td colspan="2" height="30"><img src="images/dots.gif" height="30" width="450"></td>
</tr>

<tr>
 <td height="20" valign="top">Account Balance:</td>
 <td>
 	{$currency_sign}<b>{$ab_formated.total}</b>
	<br>
	<small>
		{section name=p loop=$ps}
   			{if $ps[p].balance > 0}
   				{$currency_sign}{$ps[p].balance} of {$ps[p].name}
				<br>
			{/if}
		{/section}
	</small>
 </td></tr>

<tr>
 <td height="20">Earned Total:</td>
 <td>
 	{$currency_sign}
	<b>{$ab_formated.earning}</b>
</td>
</tr>

<tr>
 <td height="20">Pending Withdrawal:</td>
 <td>
	{$currency_sign}
	<b>{$ab_formated.withdraw_pending}</b>
 </td>
</tr>

<tr>
 <td height="20">Withdrew Total:</td>
 <td>
	{$currency_sign}
	<b>{$ab_formated.withdrawal}</b>
 </td>
</tr>

<tr>
 <td height="20">Active Deposit:</td>
 <td>
	{$currency_sign}
	<b>{$ab_formated.active_deposit}</b>
 </td>
</tr>

<tr>
<td colspan="2" height="30"><img src="images/dots.gif" height="30" width="450"></td>
</tr>

<tr>
 <td height="20">Last Deposit:</td>
 <td>
	{$currency_sign}
	<b>{$last_deposit}</b>
	&nbsp;
	<small>{$last_deposit_date}</small>
</td>
</tr>

<tr>
 <td height="20">Total Deposit:</td>
<td>
	{$currency_sign}
	<b>{$ab_formated.deposit}</b>
</td>
</tr>


<tr>
 <td height="20">Last Withdrawal:</td>
<td>
	{$currency_sign}
	<b>{$last_withdrawal}</b>
	&nbsp;
	<small>{$last_withdrawal_date}</small>
</td>
</tr>


<tr>
  <td height="20">Withdrew Total:</td>
<td>
	{$currency_sign}
	<b>{$ab_formated.withdrawal}</b>
</td>
</tr>
<tr>
<td colspan="2" height="30"><img src="images/dots.gif" height="30" width="450"></td>
</tr>
<tr>
	<td>Commission:</td>
	<td>
		{$currency_sign}
		<b>{$commissions}</b>
	</td>
</tr>
<tr>
	<td>Referral Link:</td>
	<td>{$settings.site_url}/?ref={$user.username}</td>
</tr>
</tbody></table>






{*========================================================================*}


{section name=p loop=$ps}
  	{if $ps[p].pending_col > 0}
  		{$ps[p].pending_col} {$ps[p].name} deposit
  		{if $ps[p].pending_col > 1}s
  		{/if}
  		 of {$currency_sign}{$ps[p].pending_amount} total pending
		<br>
	{/if}
{/section}
<br>
<br>
{if $wires}
	{$wires} Wire Transfer(s) pending.
<br>
{/if}
<br>

{include file="footer.tpl"}