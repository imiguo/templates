<!DOCTYPE html>
<html lang="en">

<head>
    <title>COINEDGE LIMITED</title>
    <base #href="">
    <link href="style.css" rel="stylesheet" type="text/css">
    <link href="hustydesigns/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="hustydesigns/hd_animate.css">
    <script type="text/javascript" src="hustydesigns/hd_animate.js"></script>
    <script src="jquery.min.js"></script>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
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
                    <a href=?a=home class="amk_logo"><img src="hustydesigns/graphics/logo.png" /></a>
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
                    </form>
                    {else}
                    <h2>hello,{$userinfo.name}</h2>

                    <div class="customloggedininput"><span>Balance :</span><p>${$ab_formated.total|default:"0.00"}</p></div>
                    <div class="customloggedininput"><span>Earned Total :</span><p>${$ab_formated.earning|default:"0.00"}</p></div>

                    <a href="./?a=logout" class="customloggedinbtn">Logout</a>
                    {/if}
                </div>
            </div>
        </div>
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
        {/if}
        <div class="amk_revshare">
            <div class="amk_wrap">
                <ul>
                    <li class="wow fadeInUp" data-wow-delay="0s">
                        <h3>126%</h3>
                        <h4>After</h4>
                        <h5><b>1</b> Day</h5>
                        <span class="amk_hline"></span>
                        <p>Min : <b>$10</b></p>
                        <p>Max : <b>$50000</b></p>
                    </li>
                    <li class="wow fadeInUp" data-wow-delay="0.2s">
                        <h3>260%</h3>
                        <h4>After</h4>
                        <h5><b>5</b> Day</h5>
                        <span class="amk_hline"></span>
                        <p>Min : <b>$500</b></p>
                        <p>Max : <b>$$50000</b></p>
                    </li>
                    <li class="wow fadeInUp" data-wow-delay="0.4s">
                        <h3>430%</h3>
                        <h4>After</h4>
                        <h5><b>10</b> Days</h5>
                        <span class="amk_hline"></span>
                        <p>Min : <b>$350</b></p>
                        <p>Max : <b>$$50000</b></p>
                    </li>
                    <li class="wow fadeInUp" data-wow-delay="0.6s">
                        <h3>600%</h3>
                        <h4>After</h4>
                        <h5><b>15</b> Day</h5>
                        <span class="amk_hline"></span>
                        <p>Min : <b>$300</b></p>
                        <p>Max : <b>$$50000</b></p>
                    </li>
                    <li class="wow fadeInUp" data-wow-delay="0.8s">
                        <h3>1100%</h3>
                        <h4>After</h4>
                        <h5><b>20</b> Day</h5>
                        <span class="amk_hline"></span>
                        <p>Min : <b>$250</b></p>
                        <p>Max : <b>$$50000</b></p>
                    </li>
                    <li class="wow fadeInUp" data-wow-delay="1s">
                        <h3>1650%</h3>
                        <h4>After</h4>
                        <h5><b>25</b> Day</h5>
                        <span class="amk_hline"></span>
                        <p>Min : <b>$200</b></p>
                        <p>Max : <b>$$50000</b></p>
                    </li>
                </ul>
                <div class="amk_clear"></div>
                <a class="amk_btn1 amk_left box-modal wow fadeInUp" data-wow-delay="1.2s" rel="calculator">Profit Calculator</a>
                <a href="?a=cust&page=about" class="amk_btn amk_btn2 amk_right wow fadeInUp" data-wow-delay="1.4s">About Us</a>
                <a href="?a=support" class="amk_btn amk_btn3 amk_right wow fadeInUp" data-wow-delay="1.6s">Our Contact</a>
            </div>
        </div>
    </div>
    <link rel="stylesheet" href="hustydesigns/popup/reveal.css">
    <script type="text/javascript" src="../code.jquery.com/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="hustydesigns/popup/jquery.reveal.js"></script>
    <script src="calc/js/html5.js" type="text/javascript"></script>
    <script src="calc/js/scripts.js" type="text/javascript"></script>
    <script src="calc/js/jquery.bxslider.min.js" type="text/javascript"></script>
    <script src="calc/js/jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript" src="calc/source/jquery.fancybox.js"></script>
    <script type="text/javascript" src="calc/source/helpers/jquery.fancybox-media.html"></script>
    <link rel="stylesheet" href="calc/css/calc.css" type="text/css" />
    <link rel="stylesheet" href="calc/css/jquery.bxslider.css" />
    <link rel="stylesheet" href="calc/css/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="calc/css/main.css" type="text/css" />
    <link rel="stylesheet" href="calc/css/modal.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="calc/source/jquery.fancybox8cbb.css?v=2.1.5" media="screen" />
    <div class="none">
        <div id="calculator">
            <center>
                <h2 style="text-transform:uppercase;" class="title">Calculate <span> Your Profit</span></h2></center>
            <div class="panel-calc">
                <ul>
                    <li class="calc-amount">
                        <label>Amount to spend</label>
                        <input type="text" class="calculate-amount" value="10">
                    </li>
                    <li class="calc-select">
                        <label>Select a plan</label>
                        <select class="calculate-select">
                            <option value="1">126% After 1 day</option>
                            <option value="2">260% After 5 Days</option>
                            <option value="3">430% After 10 Days</option>
                            <option value="4">600% After 15 Days</option>
                            <option value="5">1100% After 20 Days</option>
                            <option value="6">1650% After 25 Days</option>
                        </select>
                    </li>
                    <li class="light">
                        <div class="selector">
                            <div class="p_before" style="width:0px;"></div>
                            <div class="p_line"></div>
                            <div id="drag" class="drag resize ui-widget-content ui-draggable" style="left: 0;">
                                <span>25</span>
                            </div>
                        </div>
                        <div class="min-value">10<small>$</small></div>
                        <div class="max-value">50000<small>$</small></div>
                    </li>
                    <li class="blocks-profit2" style="width:17%">
                        <label style="color:#222;text-align:center">Duration Days</label>
                        <input type="text" class="calculate-duration" value="1">
                    </li>
                    <li class="blocks-profit3" style="width:20%">
                        <label style="color:#222;text-align:center">Your Deposit</label>
                        <input class="readonly depos" type="text" value="$10.00" readonly />
                    </li>
                    <li class="blocks-profit3" style="width:17%">
                        <label style="color:#222;text-align:center">Profit %</label>
                        <input class="readonly percent" type="text" value="103%" readonly />
                    </li>
                    <li class="blocks-profit3" style="width:22%">
                        <label style="color:#222;text-align:center">Your Profit</label>
                        <input class="readonly total" type="text" value="$0.30" readonly />
                    </li>
                    <li class="blocks-profit3" style="width:24%">
                        <label style="color:#222;text-align:center">Total Sum</label>
                        <input class="readonly summ" style="font-size:17px;font-weight:bold" type="text" value="$10.30" readonly />
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div id="amk_main">
        <div class="amk_wrap wow fadeInUp" data-wow-delay="0s">
            <div class="amk_box amk_left">
                <h3>About <span>Us!</span></h3>
                <p>Welcome to Coinedge Limited.
                    <br> Coinedge Limited is the newest venture in the field of forex and crypto mining industry. Coinedge Limited is trusted dependable investment company that offers Great opportunities with zero risks. You found what you're looking for with Coinedge.biz , which offers High End asset management program based on Forex and global hardware mining pools!! With Coinedge Limited, anyone can participate from anywhere in the world. Since 2015, Coinedge has been listed as the Registered Company at the British Royal Register - Company House UK with company number #09865621. </p>
                <br />
                <p>Our trading experts are hybrid of professionals from various fields with highly extensive experience as such we can offer our members various investment portfolio. We provide a variety of services developed by experienced traders in investing assets at strong interest rates. Coinedge support system is always available for any concern our client might have. Join Coinedge.biz today and Let your money work for you! </p>
                <br />
            </div>
            <div class="amk_box amk_right">
                <iframe width="480" height="350" src="https://www.youtube.com/embed/f7iXTyHGYX4?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="amk_clear"></div><span class="amk_hline_big"></span>
            <div class="amk_box amk_left">
                <h3>What <span>we do ?</span></h3>
                <p>We are active in the foreign exchange trading and bitcoin mining market and endeavour to remain at the forefront of the bitcoin industry and such we can provide all our clients with strong investment choices. Our regular use of progressive infrastructure and automated payment processing has allowed us to look for ways to offer our customers more value. It's time to begin drawing your assets! </p>
            </div>
            <div class="amk_box amk_right">
                <h3>Our <span>Vision</span></h3>
                <p>Coinedge has only motive to offer an investment platform that is user-friendly which will help our investors make smart profits. Coinedge offers investment portfolio using ON-TO-GO technology. Because of our consistency in the provision of investment opportunities for clients we are renowned in the crypto-currency market. Client satisfaction with our services is the only motive for Coinedge.biz </p>
            </div>
        </div>
    </div>
    <div id="amk_live">
        <div class="amk_wrap">
            <div class="featured_box">
                <span class="icon"><img src="hustydesigns/graphics/insta.png" /></span>
                <h3>Instant Withdraw</h3></div>
            <div class="featured_box">
                <span class="icon"><img src="hustydesigns/graphics/ddos.png" /></span>
                <h3>DDOS-GUARD Protection</h3></div>
            <div class="featured_box">
                <span class="icon"><img src="hustydesigns/graphics/team.png" /></span>
                <h3>Professional Team</h3></div>
        </div>
    </div>
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
            <img src="hustydesigns/graphics/sitelock.png" />
            <img src="hustydesigns/graphics/comodo.png" />
            <img src="hustydesigns/graphics/geotrust.png" />
            <img src="hustydesigns/graphics/avg.png" />
            <img src="hustydesigns/graphics/trust-e.png" />
            <img src="hustydesigns/graphics/Macffee.png" />
            <img src="hustydesigns/graphics/DnB.png" />
            <img src="hustydesigns/graphics/companyhouse.png" />
        </div>
    </div>
    <div id="amk_about">
        <div class="amk_wrap">
            <div class="amk_box1">
                <a href=# class="amk_designed"></a>
                <div class="amk_payments">
                    <h3>Payment Methods</h3>
                    <img src="hustydesigns/graphics/pay-btc.png" />
                    <img src="hustydesigns/graphics/pay-pay.png" />
                    <img src="hustydesigns/graphics/pay-pm.png" />
                </div>
            </div>
            <div class="amk_box2">
                <a target="_blank" href="cert.pdf">"><img src="hustydesigns/graphics/co.png" />
                <div class="amk_cobox">
                    <h3>COINEDGE LIMITED</h3>
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
                <p>Copyright 2017 <a href=?a=home>Coinedge.biz</a> - All rights reserved.</p>
            </div>
            <a href=?a=home class="amk_right"><img src="hustydesigns/graphics/ft-logo.png" /></a>
        </div>
    </div>

    <script>
    wow = new WOW({
        animateClass: 'animated',
        offset: 100,
        callback: function(box) {
            console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
        }
    });
    wow.init();
    </script>
</body>

</html>
