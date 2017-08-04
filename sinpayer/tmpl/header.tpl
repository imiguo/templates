{include file="logo.tpl"}

{if $userinfo.logged == 1}
<style>
.hdcont h3:first-of-type {
    margin-top:-147px !Important;
    color:#fff;
    font-weight:400;
    font-size:35px;
}
</style>

<link href="./hustydesigns/dashboard.css" rel="stylesheet" type="text/css" />

<div id="w-account">
    <div class="z-content">
        <div id="ws-account">
            <div id="ws-accmenu">
                <div id="ws-avatar">
                    <img src="./hustydesigns/images/account-icon01.png" />
                </div>
                <div id="ws-menus">
                    <ul>
                        <li><a href="?a=account"><i class="fa fa-user"></i>Account</a></li>
                        <li><a href="?a=deposit"><i class="fa fa-usd"></i>Make Deposit</a></li>
                        <li><a href="?a=deposit_list"><i class="fa fa-usd"></i>Your Deposits</a></li>
                        <li><a href="?a=deposit_history"><i class="fa fa-archive"></i>Deposits History</a></li>
                        <li><a href="?a=earnings"><i class="fa fa-archive"></i>Earnings History</a></li>
                        <li><a href="?a=earnings&type=commissions"><i class="fa fa-archive"></i>Referrals History</a></li>
                        <li><a href="?a=withdraw"><i class="fa fa-caret-square-o-down"></i>Withdraw</a></li>
                        <li><a href="?a=withdraw_history"><i class="fa fa-archive"></i>Withdrawals History</a></li>
                        <li><a href="?a=referals"><i class="fa fa-users"></i>Your Referrals</a></li>
                        <li><a href="?a=referallinks"><i class="fa fa-external-link-square"></i>Referral Links</a></li>
                        <li><a href="?a=edit_account"><i class="fa fa-cog"></i>Edit Account</a></li>
                        <li><a href="?a=logout"><i class="fa fa-power-off"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="ws-myaccount">
{/if}