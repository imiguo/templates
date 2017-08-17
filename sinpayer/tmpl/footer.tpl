{%if $userinfo.logged == 1%}
            </div>
        </div>
    </div>
</div>
{%/if%}
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
            <p>Copyright 2017 <a href="?a=home">{%$app_site%}</a> - All rights reserved.</p>
        </div>
        <a href="?a=home" class="amk_right"><img src="hustydesigns/graphics/ft-logo.png?tag={%$tag%}" /></a>
    </div>
</div>
<script src="jquery.min.js?tag={%$tag%}"></script>
<script src="hustydesigns/hd_animate.js?tag={%$tag%}"></script>
<script>
wow = new WOW({%
    animateClass: 'animated',
    offset: 100,
    callback: function(box) {
    %}
});
wow.init();
</script>
<script>
$(document).ready(function() {%
    $(".hdopen").click(function() {
        $(".addmenu").slideDown();
    %});
    $(".hdclose").click(function() {%
        $(".addmenu").slideUp();
    %});
});
</script>
<script>
$(document).ready(function() {%
    $(".hdopensmall").click(function() {
        $(".addmenusmall").slideDown();
    %});
    $(".hdclosesmall").click(function() {%
        $(".addmenusmall").slideUp();
    %});
});
</script>
</body>

</html>