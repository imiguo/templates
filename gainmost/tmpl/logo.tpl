<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">



<head>



  <title>Gain Most</title>



  <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />



  <meta name="keywords" content="" />

  <meta name="description" content="" />

  <meta name="robots" content="" /><!-- change into index, follow -->



  <link rel="stylesheet" href="stylesheets/style.css?tag={$tag}" type="text/css" />



  <!--[if lte IE 6]>

    <script type="text/javascript" src="javascripts/pngfix.js?tag={$tag}"></script>

    <script type="text/javascript" src="javascripts/ie6.js?tag={$tag}"></script>

    <link rel="stylesheet" href="stylesheets/ie6.css?tag={$tag}" type="text/css" />

  <![endif]-->

  <script type="text/javascript" src="javascripts/jquery.js?tag={$tag}"></script>

  <script type="text/javascript" src="javascripts/easySlider1.7.js?tag={$tag}"></script>

  {literal}

  <script type="text/javascript">

    $(document).ready(function(){

      $("#slider").easySlider({

        auto: true,

        continuous: true,

        numeric: true

      });

    });

  </script>









  {/literal}

<link href="stylesheets/screen.css?tag={$tag}" rel="stylesheet" type="text/css" media="screen" />



</head>



<body>



<!--  / WRAPPER \ -->

<div id="wrapper">



    <!--  / MAIN CONTAINER \ -->

    <div id="mainCntr">



    <!--  / HEADER CONTAINER \ -->

    <div id="headerCntr">



      <h1><a href="index.php">Gain Most</a></h1>



{if $userinfo.logged != 1}



        <!--  / SEARCH BOX \ -->

<div style="0px 0px no-repeat; width:180px; height:47px; float:right; margin-top:49px; overflow:hidden">







<a href="?a=signup"><img src="images/signup.gif?tag={$tag}" border="0"></a>

</div>

{/if}



        <!--  \ SEARCH BOX / -->













    </div>

    <!--  \ HEADER CONTAINER / -->



      <!--  / MENU CONTAINER \ -->

      <div id="menuCntr">



        <ul>

          <li><a href="?a=home" {if !$frm.a || $frm.a == 'home'}class="active"{/if}><span class="orange">.01</span>HOME<span class="text">&nbsp</span></a></li>

          {if $userinfo.logged != 1}

          <li><a href="?a=signup" {if $frm.a == 'signup'}class="active"{/if}><span class="orange">.02</span>REGISTER<span class="text">&nbsp</span></a></li>

          {else}

          <li><a href="?a=logout" {if $frm.a == 'logout'}class="active"{/if}><span class="orange">.02</span>LOG OUT<span class="text">&nbsp</span></a></li>

          {/if}

          <li><a href="?a=cust&page=aboutus" {if $frm.page == 'aboutus'}class="active"{/if}><span class="orange">.03</span>ABOUT US<span class="text">&nbsp</span></a></li>

          <li ><a href="?a=faq" {if $frm.a == 'faq'}class="active"{/if}><span class="orange">.04</span>F.A.Q<span class="text">&nbsp</span></a></li>

          <li><a href="?a=rules" {if $frm.a == 'rules'}class="active"{/if}><span class="orange">.05</span>TERMS AND CONDITIONS<span class="text">&nbsp</span></a></li>

          <li><a href="?a=support" {if $frm.a == 'support'}class="active"{/if}><span class="orange">.06</span>Contact Us<span class="text">&nbsp</span></a></li>



        </ul>



      </div>

      <!--  \ MENU CONTAINER / -->





