<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb" dir="ltr" >

<head>

<title>FundsMore.biz Enjoy Luxury LifeStyle.</title>

 <link rel="icon" href="images/fav.ico" type="image/x-icon" />

 <script src="js/core.js?tag={$tag}" type="text/javascript"></script>

 <script src="js/caption.js?tag={$tag}" type="text/javascript"></script>

 <script src="js/mootools-more.js?tag={$tag}" type="text/javascript"></script>

{literal}

<script type="text/javascript">

window.addEvent('domready', function() {

$$('.hasTip').each(function(el) {

var title = el.get('title');

if (title) {

var parts = title.split('::', 2);

el.store('tip:title', parts[0]);

el.store('tip:text', parts[1]);

}

});

var JTooltips = new Tips($$('.hasTip'), { maxTitleChars: 50, fixed: false});

});

</script>

{/literal}



 <link rel="stylesheet" href="css/main.css?tag={$tag}" type="text/css" media="screen,projection" />

 <link rel="stylesheet" href="css/position.css?tag={$tag}" type="text/css" media="screen,projection" />

 <link rel="stylesheet" href="css/layout.css?tag={$tag}" type="text/css" media="screen,projection" />

 <link rel="stylesheet" href="css/personal.css?tag={$tag}" type="text/css" media="screen,projection" />

 <link rel="stylesheet" href="css/general.css?tag={$tag}" type="text/css" media="screen,projection" />



 <script type="text/javascript" src="js/hide.js?tag={$tag}"></script>

 <script type="text/javascript" src="js/jquery-1.4.2.min.js?tag={$tag}"></script>

 <script type="text/javascript" src="js/tiny.js?tag={$tag}"></script>

 <script type="text/javascript" src="js/cufon-yui.js?tag={$tag}"></script>



 <script type="text/javascript" src="js/cufon-replace.js?tag={$tag}"></script>

 <script type="text/javascript" src="js/HeliosCond_400.font.js?tag={$tag}"></script>

 <script type="text/javascript" src="js/Heliosthin.font.js?tag={$tag}"></script>

 <script type="text/javascript" src="js/tabs.js?tag={$tag}"></script>



 <script src="js/tab.js?tag={$tag}" type="text/javascript"></script>

 <link href="js/SpryTabbedPanels.css?tag={$tag}" rel="stylesheet" type="text/css" />



{literal}

<script type="text/javascript">

var $j = jQuery.noConflict();

$j(document).ready(function(){

$j('#header ul li.parent').hover(

function() {

$j(this).addClass("actives");

$j(this).find('> ul').stop(false, true).fadeIn();

$j(this).find('> ul').addClass("pie");

$j(this).find('>ul ul').stop(false, true).fadeOut('fast');

$j(this).find('>ul ul').addClass("pie2");

Cufon.refresh();

},

function() {

$j(this).removeClass("actives");

$j(this).find('ul').stop(false, true).fadeOut('fast');

Cufon.refresh();

}

);

$j('.ulwrapper').hover(

function() {

$j('.parent').addClass("active_tab");

Cufon.refresh();

},

function() {

$j('.parent').removeClass("active_tab");

Cufon.refresh();

}

);

});

$j(window).load(function(){

$j('#carousel1').bxCarousel({

display_num: 5,

move: 1,

auto: true,

prev_image: 'images/arrow_left.png',

next_image: 'images/arrow_right.png',

margin: 0

});

});

</script>

<!--[if lt IE 9]>

<style type="text/css">

.pie { behavior:url(PIE.php) }

.pie2 { behavior:url(PIE.php) }

</style>

<![endif]-->

{/literal}

</head>

	<body class=" main">

      <div id="overlay" style="display: none;"></div>

<div id="access" style="display: none;">

  <div class="close2"><a href="#" onClick="showLogin(); return false;"><img src="images/close.png?tag={$tag}" alt="" /></a></div>



  <form style="margin:85px 0 0 105px;" method="post" action="?" name="loginform" onSubmit="return checklogin();">

	<input type="hidden" name="a" value='do_login' />

	<input type="hidden" name="follow" value='' />

    <div>

      <label2 for="" style="text-align:right;  padding-right: 15px;">Username:</label2>

      <input type="text" id="login" class=inpts2 name="username" />

    </div>

    <div>



      <label2 for="" style="text-align:right; padding-right: 15px;">Password:</label2>

      <input type="password" class=inpts2 id="password" name="password" />

    </div>



    <div style="padding: 10px 0 0 170px;"><input type=submit  class="sbmt" value="Login" class="button"></div><br>

	 <div style=" padding-left: 160px;"><a href="?a=forgot_password">Password Recovery</a></div>

  </form>

</div>





{literal}

<script type="text/javascript">

function checklogin() {

if (document.loginform.username.value=='') {

alert("Please enter your username!");

document.loginform.username.focus();

return false;

}

if (document.loginform.password.value=='') {

alert("Please enter your password!");

document.loginform.password.focus();

return false;

}

return true;

}

function showLogin() {

var loginbox = document.getElementById('access');

if (loginbox.style.display == 'none')

{

loginbox.style.display = 'block';

document.getElementById('overlay').style.display = 'block';

}

else

{

loginbox.style.display = 'none';

document.getElementById('overlay').style.display = 'none';

}

}

</script>

 {/literal}



 <div id="all">

  <div id="header">

   <div id="head">



         <div class="logoheader">

          <h1 id="logo">

           <a href=?a=home><img src="images/logo.png?tag={$tag}"  alt="" /></a>

           <span class="header1"></span>

          </h1>

         </div><!-- end logoheader -->

{if $userinfo.logged != 1}

         <div class="social">

          <ul class="menu">

                      <li id="item-510" ><a href="#" onClick="showLogin(); return false;" ><img src="images/log.png?tag={$tag}" /></a></li>

                     </ul>

         </div>

{/if}

          <div class="header_3">

           <div class="menu2">

            <a href="?a=home" class="a1"><span class="notext">Home</span></a>

			     {if $userinfo.logged != 1}

            <a href="?a=signup" class="a2"><span class="notext">Register</span></a>

					{else}

						<a class="a10" href="?a=logout"><span class="notext">Logout</span></a>

					{/if}

            <a href="?a=cust&amp;page=about"  class="a3"><span class="notext">About us</span></a>

	    <a href="?a=faq" class="a4"><span class="notext">Faq</span></a>

            <a href="?a=cust&amp;page=getstarted" class="a6"><span class="notext">Get started</span></a>

            <a href="?a=cust&amp;page=global" class="a7"><span class="notext">Representatives</span></a>

	    <a href="?a=cust&amp;page=banners" class="a8"><span class="notext">Millione Promo</span></a>

	    <a href="?a=support" class="a9"><span class="notext">Support</span></a>

           </div>

          </div>

   </div>

  </div><!-- end header -->

         <div class="main_banner">

          <div class="custom">

	   <div class="article">

            <div class="title_main">

             <br>

            </div>
           </div>

               <div class="carousel">

                <ul id="carousel1">

                 <li><a href=?a=signup><img src="images/carousel_icon1.png?tag={$tag}" alt="" /></a>

		 <a href=?a=signup class="carousel_link">Plan1</a></li>

                 <li><a href=?a=signup><img src="images/carousel_icon2.png?tag={$tag}" alt="" /></a>

		 <a href=?a=signu pclass="carousel_link">Plan2</a></li>

                 <li><a href=?a=signup><img src="images/carousel_icon3.png?tag={$tag}" alt="" /></a>

		 <a href=?a=signup class="carousel_link">Plan3</a></li>

                 <li><a href=?a=signup><img src="images/carousel_icon4.png?tag={$tag}" alt="" /></a>

                 <a href=?a=signup class="carousel_link">Plan4</a></li>

                 <li ><a href=?a=signup><img src="images/carousel_icon5.png?tag={$tag}" alt="" /></a>

		 <a href=?a=signup class="carousel_link">Plan5</a></li>

                 <li ><a href=?a=signup><img src="images/carousel_icon6.png?tag={$tag}" alt="" /></a>

		 <a href=?a=signup class="carousel_link">Plan6</a></li>

                 <li ><a href=?a=signup><img src="images/carousel_icon7.png?tag={$tag}" alt="" /></a>

		 <a href=?a=signup class="carousel_link">Plan7</a></li>

                 <li ><a href=?a=signup><img src="images/carousel_icon8.png?tag={$tag}" alt="" /></a>

		 <a href=?a=signup class="carousel_link">Plan8</a></li>

		</ul>

               </div>

          </div>

         </div>





