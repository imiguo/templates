{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<form action="{$settings.site_url}/comfirmhdmoney.php" method="post">
Your HD Money account <b>{$account}</b><br>
Amount ($US): <b>{$amount_format}</b><br>
{if $use_compound}
{if $compound_min_percents == $compound_max_percents && !$compound_percents}
<input type=hidden name=IGS_CUSTOM_compound value="{$compound_min_percents}">
{else}
<table cellspacing=0 cellpadding=2 border=0>
<tr><td nowrap width=1%>Compounding percent: </td>
  {if $compound_percents}
<td><select name='compound' class=inpts>
{section name=p loop=$compound_percents}<option value="{$compound_percents[p].percent}">{$compound_percents[p].percent}%</option>{/section}
</select></td>
  {else}
<td width=99%><input type=text name='IGS_CUSTOM_compound' value="{$compound_min_percents}" class=inpts size=5></td></tr>
<tr><td nowrap colspan=2>(You can set any percent between <b>{$compound_min_percents}%</b> and <b>{$compound_max_percents}%</b>)</td>
  {/if}
</tr>
</table>
{/if}
{else}
<input type=hidden name=IGS_CUSTOM_compound value="0">
{/if}
  <input type=hidden name=cf_1 value="{$userinfo.id}">
  <input type=hidden name=cf_2 value={$h_id}>
  <input type=hidden name=IGS_CUSTOM_a value=checkpayment>
  
<INPUT type=hidden name=amount value="{$amount}">
<INPUT type=hidden name=description value="Deposit to {$settings.site_url}">
<input type=hidden name=currency value="USD" >

<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=deposit'">
</form>
{/if}
{include file="footer.tpl"}
