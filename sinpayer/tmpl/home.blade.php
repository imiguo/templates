<!DOCTYPE html>
<html lang="en">

<head>
    <title>{%$app_full_name%}</title>
    <link href="style.css?tag={%$tag%}" rel="stylesheet" type="text/css">
    <link href="hustydesigns/style.css?tag={%$tag%}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="hustydesigns/hd_animate.css?tag={%$tag%}">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css?tag={%$tag%}">
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
        <div class="amk_slider">
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
                    <a href=?a=home class="amk_logo"><img src="hustydesigns/graphics/logo.png?tag={%$tag%}" /></a>
                    <h1>FOREVER INCOME</h1>
                    <p>LET MONEY WORK FOR YOU!</p>
                    {%if $userinfo.logged != 1%}
                    <a href=?a=signup class="amk_btn">Register Now</a>
                    {%else%}
                    <a href=?a=account class="amk_btn">My Account</a>
                    {%/if%}
                </div>
                <div class="amk_loginform amk_right">
                    {%if $userinfo.logged != 1%}
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
                    <input type="hidden" name="_token" value="{%$csrf_token%}"></form>
                    {%else%}
                    <h2>hello,{%$userinfo.name%}</h2>

                    <div class="customloggedininput"><span>Balance :</span><p>${%$ab_formated.total|default:"0.00"%}</p></div>
                    <div class="customloggedininput"><span>Earned Total :</span><p>${%$ab_formated.earning|default:"0.00"%}</p></div>

                    <a href="./?a=logout" class="customloggedinbtn">Logout</a>
                    {%/if%}
                </div>
            </div>
        </div>
        {%if $userinfo.logged == 1%}
        <style>
        .hdcont h3:first-of-type {
            margin-top:-147px !Important;
            color:#fff;
            font-weight:400;
            font-size:35px;
        }
        </style>

        <link href="./hustydesigns/dashboard.css?tag={%$tag%}" rel="stylesheet" type="text/css" />
        {%/if%}
        {%blade('home_plans')%}
    </div>
    {%*blade('home_calc')*%}
    <div id="amk_main">
        <div class="amk_wrap wow fadeInUp" data-wow-delay="0s">
            <div class="amk_box amk_left">
                <h3>What <span>we do ?</span></h3>
                <p>We are active in the foreign exchange trading and bitcoin mining market and endeavour to remain at the forefront of the bitcoin industry and such we can provide all our clients with strong investment choices. Our regular use of progressive infrastructure and automated payment processing has allowed us to look for ways to offer our customers more value. It's time to begin drawing your assets! </p>
            </div>
            <div class="amk_box amk_right">
                <h3>Our <span>Vision</span></h3>
                <p>{%$app_full_name%} has only motive to offer an investment platform that is user-friendly which will help our investors make smart profits. {%$app_full_name%} offers investment portfolio using ON-TO-GO technology. Because of our consistency in the provision of investment opportunities for clients we are renowned in the crypto-currency market. Client satisfaction with our services is the only motive for {%$app_site%} </p>
            </div>
        </div>
    </div>
    <div id="amk_live">
        <div class="amk_wrap">
            <div class="featured_box">
                <span class="icon"><img src="hustydesigns/graphics/insta.png?tag={%$tag%}" /></span>
                <h3>Instant Withdraw</h3></div>
            <div class="featured_box">
                <span class="icon"><img src="hustydesigns/graphics/ddos.png?tag={%$tag%}" /></span>
                <h3>DDOS-GUARD Protection</h3></div>
            <div class="featured_box">
                <span class="icon"><img src="hustydesigns/graphics/team.png?tag={%$tag%}" /></span>
                <h3>Professional Team</h3></div>
        </div>
    </div>
    {%blade('history')%}
    <div id="amk_referrals">
        <div class="amk_wrap wow fadeIn" data-wow-delay="0s">
            <h2>Introducing <span>The</span></h2>
            <span class="amk_percent-amount">4</span><span class="amk_percent-sign">%</span>
            <h3>Referral Commission</h3>
        </div>
    </div>
    <div class="amk_banklavel-wrap">
        <div class="amk_banklavel">
            <h3>Bank Level Security</h3>
            <img src="hustydesigns/graphics/sitelock.png?tag={%$tag%}" />
            <img src="hustydesigns/graphics/comodo.png?tag={%$tag%}" />
            <img src="hustydesigns/graphics/geotrust.png?tag={%$tag%}" />
            <img src="hustydesigns/graphics/avg.png?tag={%$tag%}" />
            <img src="hustydesigns/graphics/trust-e.png?tag={%$tag%}" />
            <img src="hustydesigns/graphics/Macffee.png?tag={%$tag%}" />
            <img src="hustydesigns/graphics/DnB.png?tag={%$tag%}" />
            <img src="hustydesigns/graphics/companyhouse.png?tag={%$tag%}" />
        </div>
    </div>
    <div id="amk_about">
        <div class="amk_wrap">
            <div class="amk_box1">
                <a href=# class="amk_designed"></a>
                <div class="amk_payments">
                    <h3>Payment Methods</h3>
                    <img src="hustydesigns/graphics/pay-btc.png?tag={%$tag%}" />
                    <img src="hustydesigns/graphics/pay-pay.png?tag={%$tag%}" />
                    <img src="hustydesigns/graphics/pay-pm.png?tag={%$tag%}" />
                </div>
            </div>
            <div class="amk_box2">
                <a target="_blank" href="cert.pdf"><img src="hustydesigns/graphics/co.png?tag={%$tag%}" />
                <div class="amk_cobox">
                    <h3>{%$app_full_name%}</h3>
                    <ul>

                        <li><a target="_blank" href=https://beta.companieshouse.gov.uk/company/09865621>Company No.  09865621</a></li>
                </ul>
                <p>
                    12 GOLDHAZE CLOSE WOODFORD GREEN,
                    <br> ENGLAND,
                    <br> UNITED KINGDOM,
                    <br> IG8 7LE
                </p>
            </div>
        </div>
    </div>
    </div>
    <div id="amk_footer">
        <div class="amk_wrap">
            <div class="amk_left">
                <ul>
                    <li><a href=?a=cust&amp;page=about>About Us</a> | </li>
                    <li><a href=?a=faq>FAQ</a> | </li>
                    <li><a href=?a=support>Support</a> | </li>
                    <li><a href=?a=news>News</a> | </li>
                    <li><a href=?a=rules>Terms</a></li>
                </ul>
                <p>Copyright 2017 <a href=?a=home>{%$app_site%}</a> - All rights reserved.</p>
            </div>
            <a href=?a=home class="amk_right"><img src="hustydesigns/graphics/ft-logo.png?tag={%$tag%}" /></a>
        </div>
    </div>
    <script src="//code.jquery.com/jquery-1.7.min.js?tag={%$tag%}"></script>
    <script src="hustydesigns/popup/jquery.reveal.js?tag={%$tag%}"></script>
    <script src="calc/js/html5.js?tag={%$tag%}"></script>
    {%*<script src="calc/js/scripts.js?tag={%$tag%}"></script>*%}
    <script src="calc/js/jquery.bxslider.min.js?tag={%$tag%}"></script>
    <script src="calc/js/jquery-ui.js?tag={%$tag%}"></script>
    <script src="calc/source/jquery.fancybox.js?tag={%$tag%}"></script>
    <script src="hustydesigns/hd_animate.js?tag={%$tag%}"></script>
    <script src="jquery.min.js?tag={%$tag%}"></script>
    <script>
    wow = new WOW({
        animateClass: 'animated',
        offset: 100,
        callback: function(box) {
        }
    });
    wow.init();
    </script>
</body>

</html>
