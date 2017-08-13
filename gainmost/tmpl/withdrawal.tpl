{include file="header.tpl"}


{literal}
<script Language='JavaScript'>
function formsubmit() {
Today = new Date();
var NowHour = Today.getHours();
var NowMinute = Today.getMinutes();
var NowSecond = Today.getSeconds();
var mysec = (NowHour*3600)+(NowMinute*60)+NowSecond;
if((mysec-document.formsubmitf.mypretime.value)>120)
//600只是一个时间值，就是5分钟内禁止重复提交，值随你高兴设
{
document.formsubmitf.mypretime.value=mysec;
}
else
{
alert('Please waiting');
return false;
}
document.forms.formsubmitf.submit();
}
</script>
{/literal}




<h2>Withdraw Money</h2>
Earnings on your investment fund are added to your account balance every day. You can withdraw your available balance at any time.<br>Withdrawals are processed in 24 hours.<br><br><br>


<h2>Account Info</h2>

{if $fatal}

{if $fatal == 'one_per_month'}
You can withdraw once per month only.
{/if}

{if $fatal == 'withdrawal_percent_reached'}
Withdrawl percent has been reached. We have stopped all withdrawals.
{/if}

{else}

{if $say eq 'on_hold'}
Sorry, this amount on hold now.<br><br>
{/if}
{if $say eq 'zero'}
Sorry, you can't request a withdraw smaller than {$currency_sign}0.00 only<br><br>
{/if}
{if $say eq 'less_min'}
Sorry, you can request not less than {$currency_sign}{$settings.min_withdrawal_amount}<br><br>
{/if}
{if $say eq 'greater_max'}
Sorry, you can request not greater than {$currency_sign}{$settings.max_withdrawal_amount}<br><br>
{/if}
{if $say eq 'daily_limit'}
Sorry, you have exceeded a daily limit<br><br>
{/if}
{if $say eq 'processed'}
{if $batch eq ''}
Withdrawal request saved.<br><br>
{else} Withdrawal processed, batch_id: {$batch}<br>
<br>
{/if}
{/if}
{if $say eq 'not_enought'}
Sorry, you have requested the amount larger than the one on your balance.<br><br>
{/if}
{if $say eq 'invalid_transaction_code'}
You have entered the invalid transaction code.<br><br>
{/if}
{if $say eq 'no_deposits'}
You have not done any deposits yet. Withdrawal function will be available after a deposit.
<br><br>
{/if}
{if $say eq 'no_active_deposits'}
You must have active deposit to withdraw.
{/if}


{if $preview}

<form name=formsubmitf id ="the" method="post">
<input type=hidden name='mypretime' value='0'> 
<input type=hidden name=a value=withdraw>
<input type=hidden name=action value=withdraw>
<input type=hidden name=amount value={$amount}>
<input type=hidden name=ec value={$ec}>
<input type=hidden name=comment value="{$comment|escape:html}">

<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td colspan=2>You are withdrawing <b>{$currency_sign}{$amount}</b> of {$currency}. 
{if $settings.withdrawal_fee > 0 || $settings.withdrawal_fee_min > 0} Our fee is 
{if $settings.withdrawal_fee > 0}<b>{$settings.withdrawal_fee}%</b>{/if}
{if $settings.withdrawal_fee > 0 && $settings.withdrawal_fee_min > 0} or {/if}
{if $settings.withdrawal_fee_min > 0} <b>{$currency_sign}{$settings.withdrawal_fee_min}</b>{if $settings.withdrawal_fee > 0} as a minimum{/if}{/if}
.
{else}
We have no fee for this operation. 
{/if}
</td>
</tr>
<tr>
 <td colspan=2>Actually you will acquire the total of <b>{$currency_sign}{$to_withdraw}</b> on your {$currency} account {if $account}{$account}{/if}.</td>
</tr>
{if $comment}
<tr>
 <td colspan=2>Your comments: {$comment|escape:html}</td>
</tr>
{/if}
{if $settings.use_transaction_code && $userinfo.transaction_code}
<tr>
 <td colspna=2>&nbsp;</td>
</tr>
<tr>
 <td width=1% nowrap>Transaction Code:</td>
 <td width=99%><input type="password" name="transaction_code" class=inpts size=15></td>
</tr>
{/if}
<tr>
 <td><br><input type=button value="Confirm" class=sbmt name="button1"  onclick='formsubmit()' ></td>
</tr></table>
<input type="hidden" name="_token" value="{$csrf_token}"></form>

{*-----------------------------------------------------------------------------------------*}
{else}


<form method="post">
<input type="hidden" value="withdraw" name="a">
<input type="hidden" value="preview" name="action">


<table width="580" cellspacing="0" cellpadding="0" border="0" bgcolor="#FAFAFA" align="center">
<tbody><tr>
 <td width="380" valign="middle" height="25" class="reg">Account Balance:</td>
 <td width="200" valign="middle" class="dots">{$currency_sign}<b>{$ab_formated.total}</b></td>
</tr>

<tr><td valign="middle" height="30" class="field3">&nbsp;</td>
 <td valign="middle" class="dots">
 <small>
 	{section name=p loop=$ps}
   		{if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}{if $hold[p].amount > 0} / {$currency_sign}{$hold[p].amount} on hold{/if}<br>{/if}
	{/section}
 </small></td>
</tr>

<tr>
 <td valign="middle" height="25" class="reg">Pending Withdrawals:</td>
 <td valign="middle" class="dots">{$currency_sign}<b>{if $ab_formated.withdraw_pending != 0}{$ab_formated.withdraw_pending}{else}0.00{/if}</b></td>
</tr>


{section name=ps loop=$pay_accounts}
<tr>
 <td valign="middle" height="25" class="reg">Your {$pay_accounts[ps].name} Account:</td>
 <td valign="middle" class="dots">{if $pay_accounts[ps].account != ''}{$pay_accounts[ps].account}{else}<a href=?a=edit_account><i>not set</i></a>{/if}</td>
</tr>
{/section}
</tbody>
</table>
<br><br><br>


<h2>Withdraw Form</h2>

<table width="420" cellspacing="0" cellpadding="2" border="0" align="center">
  <!--DWLayoutTable-->
<tbody><tr>
 <td valign="middle" height="30">Select eCurrency:</td>
 <td valign="middle" height="30"><select name=ec>
{section name=p loop=$withdraw_systems}
   <option value={$withdraw_systems[p].id}>{$withdraw_systems[p].name}</option>
{/section}
     </select>
 </td>
</tr>

<tr>
 <td valign="middle" height="30">Withdrawal ({$currency_sign}):</td>
 <td valign="middle" height="30"><input type="text" style="width:175;height:20;" class="inpts" value="10.00" name="amount"></td>
</tr>

<tr align="center">
 <td valign="middle" colspan="2"><div style="padding-top:10px;padding-bottom:10px;"><textarea rows="9" cols="55" class="inpts2" name="comment">Your comment</textarea></div>
</td></tr>

<tr>
 <td valign="top" height="28" align="center" colspan="2"><input type="submit" style="width:120px;height:25px;" class="sbmt" value="Request"></td>
</tr></tbody>
</table>

<center><i><font color="#E44721"><small>You have no funds to withdraw!</small></font></i></center>
<input type="hidden" name="_token" value="{$csrf_token}"></form>

{/if}

{/if}
{include file="footer.tpl"}
