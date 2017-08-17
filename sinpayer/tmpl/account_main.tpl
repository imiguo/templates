{%include file="header.tpl"%}
<h3>Dashboard</h3>
<br>
<div id="ws-promote">
    <div id="ws-refurl">
        <p>Referral Link :</p>
        <a href="/?ref=world" target="blank">{%$app_url%}/?ref=world</a>
    </div>
    <div id="ws-reftool">
    </div>
</div>
<!--Promote-->
<div id="ws-buttons">
    <a href="./?a=withdraw" class="acc-aa">Withdraw</a>
    <a href="./?a=deposit" class="acc-bb">Deposit</a>
    <a href="./?a=referals" class="acc-cc">Referrals</a>
    <a href="./?a=edit_account" class="acc-dd">Settings</a>
</div>
<!--Buttons-->
<div id="ws-reward">
    <div class="ws-reward ws-space">
        <img src="./hustydesigns/images/coins-bg.png" />
        <h2>${%$ab_formated.earning|default:'0:00'%}</h2>
        <p>Earned Total</p>
    </div>
    <div class="ws-reward ws-space">
        <img src="./hustydesigns/images/prize-bg.png" />
        <h2>${%$ab_formated.total|default:'0:00'%}</h2>
        <p>Account Balance</p>
    </div>
    <div class="ws-reward ws-space mano">
        <img src="./hustydesigns/images/atm-bg.png" />
        <h2>${%$ab_formated.active_deposit|default:'0:00'%}</h2>
        <p>Active Deposit</p>
    </div>
    <div class="ws-reward ws-right">
        <img src="./hustydesigns/images/earn-bg.png" />
        <h2>${%$ab_formated.withdrawal|default:'0:00'%}</h2>
        <p>Withdrew Total</p>
    </div>
</div>
<!--Reward-->
<div id="ws-user" style="height: auto;">
    <div class="ws-detailed">
        <div id="ws-input">Username</div>
        <div id="ws-output">{%$userinfo.username%}</div>
    </div>
    <div class="ws-detailed">
        <div id="ws-input">Registration Date</div>
        <div id="ws-output">{%$userinfo.create_account_date%}</div>
    </div>
    <div class="ws-detailed">
        <div id="ws-input">Last Access</div>
        <div id="ws-output">{%$last_access%}</div>
    </div>
</div>
<br>
<br>
<div id="ws-user" style="height: auto;">
    <div class="ws-detailed">
        <div id="ws-input">Last Deposit</div>
        <div id="ws-output">${%$last_deposit|default:'0:00'%}</div>
    </div>
    <div class="ws-detailed">
        <div id="ws-input">Total Deposit</div>
        <div id="ws-output">${%$ab_formated.deposit|default:'0:00'%}</div>
    </div>
    <div class="ws-detailed">
        <div id="ws-input">Last Withdrawal</div>
        <div id="ws-output">${%$last_withdrawal|default:'0:00'%}</div>
    </div>
    <div class="ws-detailed">
        <div id="ws-input">Pending Withdrawal</div>
        <div id="ws-output">${%$ab_formated.withdraw_pending|default:'0:00'%}</div>
    </div>
    <div class="ws-detailed">
        <div id="ws-input">Referral Link</div>
        <div id="ws-output">{%$settings.site_url%}/?ref={%$userinfo.username%}</div>
    </div>
</div>
<br>
<br>
<br>
</div>
</div>
</div>
</div>
</div>
{%include file="footer.tpl"%}