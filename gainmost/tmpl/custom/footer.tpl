
</div>
      <!--  \ LEFT CONTAINER / -->
      
  
      
      <!--  / RIGHT CONTAINER \ -->
      <div id="rightCntr">
{if $userinfo.logged != 1}

        <!--  / GET BOX \ -->

        <div class="getBox">
          
{literal} 
<script language=javascript>
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
</script>
{/literal} 
<form method=post name=loginform onsubmit="return checklogin()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value=''>

  <table border="0" width="100%">
<tr>
 <th colspan=2 class=title>Member login</th>
 </tr>
  </table>
  <p>&nbsp;</p>
  


<table border="0" width="100%">

  <tr>
     <td class=menutxt >Username:</td>
 <td><input type=text name=username class=inpts size=20></td>

  </tr>
    <tr>

     <td class=menutxt>Password:</td>
 <td><input type=password name=password class=inpts size=20></td>
  </tr>
    <tr>

<td class=menutxt>&nbsp;</td>
 <td><input type=submit value="Login" class=sbmt size=15></td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td><a href="?a=forgot_password"><font color="#000000">Forgot your password!</font></a></td>
    <font color="#008000">
    <td></font><a href="?a=signup"><font color="#FF6600">Sign up now!</font></a><font color="#008000"></td>
  </tr></font>
</table>
  <br>
<div align="center">
  <table border="0" width="90%">
  <tr>
    <td><p align="center"><font color="#00FF00"><span style="background-color: #000000">
<a href="?a=login"><font color="#FFA300">For Secure Login Click Here</font></a></span></font></p></td>
  </tr>
</table>
</div>



        </div>
        <!--  / GET BOX \ -->





        
        <!--  / INVESTMENT BOX \ -->
        <div class="investmentBox">
          <div class="top">
              <div class="bottom" >
                <h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWe Accept</h2>
                <center>
                  
                <div class="cont">
                <img src="images/payments.png?tag={$tag}">
                <center><img src="images/ap.gif?tag={$tag}"></center>
                </div>
              </center>

            </div>

            <div class="bottom" >
              <h2>Our Investments</h2>
              <ul>
              <li><a href="?a=login">Client Log In</a></li>
              <li><a href="?a=signup">Lets’s Get Start</a></li>
              <li><a href="?a=faq">Frequently Asked Questions</a></li>
              <li><a href="?a=news">Company News</a></li>
              <li><a href="?a=rules">Terms and Conditions</a></li>
              <li><a href="?a=cust&page=aboutus">About Us</a></li>
              <li><a href="?a=support" class="last">Contact Us</a></li>
              </ul>
            </div>


          </div>
        </div>
        <!--  \ INVESTMENT BOX / -->
        {else}

        <!--  / GET BOX \ -->

        <!--  / INVESTMENT BOX \ -->
        <div class="investmentBox">
          <div class="top">
            <div class="bottom">
              <h2>Members Menu</h2>
              <ul>
              <li><a href="?a=account">Your account</a></li>
              <li><a href="?a=deposit">Make Deposit</a></li>
              <li><a href="?a=deposit_list">Your Deposits</a></li>
              <li><a href="?a=deposit_history">Deposits History</a></li>
              <li><a href="?a=earnings">Earnings History</a></li>
              <li><a href="?a=referals">Your Referrals</a></li>
              <li><a href="?a=earnings&amp;type=commissions">Referrals History</a></li>
              <li><a href="?a=referallinks">Referral Links</a></li>
              <li><a href="?a=withdraw">Withdraw</a></li>
              <li><a href="?a=withdraw_history">Withdrawals History</a></li>
              <li><a href="?a=edit_account">Edit Account</a></li>
              <li><a class="last" href="?a=logout">Logout</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!--  \ INVESTMENT BOX / -->



        {/if}


      </div>
      <!--  \ RIGHT CONTAINER / -->

    </div>
    <!--  \ CONTENT CONTAINER / -->
  
  </div>
  <!--  \ MAIN CONTAINER / -->
  
      <!--  / BOTTOM CONTAINER \ -->
      <div id="bottomCntr">
        <div id="bottomInnerCntr" >
          <!--  / WEB SITE BOX \ -->
          <!--  \  FOLLOW BOX / -->
        
        
        </div> 
        
        <!--  / FOOTER BOX \ -->
        <div class="footerBox">
        
          <ul>
            <li class="last"><a href="?a=home">Home  </a></li>
            <li><a href="?a=signup">Sign Up </a></li>
            <li><a href="?a=login">Client Login</a></li>
            <li><a href="?a=rules">Terms</a></li>
            <li><a href="?a=faq">F.A.Q</a></li>
            <li><a href="?a=support"> Contact </a></li>
          </ul>
                  <p>Copyright &copy; 2013 Gain Most. All Rights Reserved</p>
          
        </div>

        <!--  \ FOOTER BOX / -->

      </div>
    <!--  \ BOTTOM CONTAINER / -->
    

</div>
<!--  \ WRAPPER / -->

</body>

</html>