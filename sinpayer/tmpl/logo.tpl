<!DOCTYPE html>
<html lang="en">

<head>
    <title>{$app_full_name}</title>
    <link href="style.css?tag={$tag}" rel="stylesheet" type="text/css">
    <link href="hustydesigns/style.css?tag={$tag}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="hustydesigns/hdcustomcss.css?tag={$tag}">
    <link rel="stylesheet" href="hustydesigns/hd_animate.css?tag={$tag}">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css?tag={$tag}">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
    #style-1::-webkit-scrollbar-track {
        -webkit-box-shadow: none;
        background-color: transparent;
    }

    #style-1::-webkit-scrollbar {
        width: 5px;
        background-color: transparent;
    }

    #style-1::-webkit-scrollbar-thumb {
        background-color: #555555;
        border: 0px solid #256DC0;
    }

    .amk_loginform .amk_input input::-webkit-input-placeholder {
        color: pink!important;
    }
    </style>
</head>

<body id="style-1" class="scrollbar">
    <!-- For top pages to have no sidebar -->
    <div id="amk_top">
        <div class="amk_slider addmenusmall" style="display:none;">
            <a class="hdclosesmall hdopen floatcloseopenbtn  tooltip"><i class="material-icons  md-48">keyboard_arrow_down</i>
            <span class="tooltiptext">Click to Open menu</span>
            </a>
            <div class="amk_wrap">
                <div class="amk_intro amk_left" style="margin-left:300px;height:70px;">
                    <a href="?a=home" class="amk_logo"><img src="hustydesigns/graphics/logo.png?tag={$tag}" /></a>
                </div>
            </div>
        </div>
        <div class="amk_slider addmenu">
            <a class="hdclose hdopensmall floatcloseopenbtn   tooltip"><i class="material-icons  md-48">keyboard_arrow_up</i>
            <span class="tooltiptext">Click to close menu</span>
            </a>
            <div class="amk_wrap">
                <ul class="amk_left">
                    <li class="wow bounceIn" data-wow-delay="0s"><a href=?a=home>Home</a></li>
                    <li class="wow bounceIn" data-wow-delay="0.1s"><a href=?a=cust&amp;page=aboutus>About Us</a></li>
                    <li class="wow bounceIn" data-wow-delay="0.3s"><a href=?a=cust&amp;page=howtoinvest>How To Invest</a></li>
                    <li class="wow bounceIn" data-wow-delay="0.2s"><a href=?a=faq>FAQ</a></li>
                    <li class="wow bounceIn" data-wow-delay="0.7s"><a href=?a=rules>Terms</a></li>
                    <li class="wow bounceIn" data-wow-delay="0.4s"><a href=?a=news>News</a></li>
                    <li class="wow bounceIn" data-wow-delay="0.5s"><a href=?a=support>Support</a></li>
                </ul>
                <div class="amk_intro amk_left">
                    <a href="?a=home" class="amk_logo"><img src="hustydesigns/graphics/logo.png?tag={$tag}" /></a>
                    <h1>FOREVER INCOME</h1>
                    <p>LET MONEY WORK FOR YOU!</p>
                    {if $userinfo.logged != 1}
                    <a href=?a=signup class="amk_btn">Register Now</a>
                    {else}
                    <a href=?a=account class="amk_btn">My Account</a>
                    {/if}
                </div>
                <div class="amk_loginform amk_right">
                {if $userinfo.logged != 1}
                <h2>Member Login</h2>
                <script language=javascript>
                function checkform() {
                    if (document.mainform.username.value == '') {
                        alert("Please type your username!");
                        document.mainform.username.focus();
                        return false;
                    }
                    if (document.mainform.password.value == '') {
                        alert("Please type your password!");
                        document.mainform.password.focus();
                        return false;
                    }
                    return true;
                }
                </script>
                <form method="post" name="mainform" onSubmit="return checkform()">
                    <div class="amk_input">
                        <input type="text" name="username" placeholder="Username" />
                    </div>
                    <div class="amk_input">
                        <input type="password" name="password" placeholder="Password" />
                    </div>
                    <input type="hidden" name="a" value="do_login">
                    <input type="hidden" name="follow" value="">
                    <input type="hidden" name="follow_id" value="">
                    <input type="submit" value="Signin" />
                <input type="hidden" name="_token" value="{$csrf_token}"></form>
                {else}
                <h2>hello,{$userinfo.name}</h2>

                <div class="customloggedininput"><span>Balance :</span><p>${$ab_formated.total|default:"0.00"}</p></div>
                <div class="customloggedininput"><span>Earned Total :</span><p>${$ab_formated.earning|default:"0.00"}</p></div>

                <a href="./?a=logout" class="customloggedinbtn">Logout</a>
                {/if}
                </div>
            </div>
        </div>
    </div>
    <div class="hdcont">