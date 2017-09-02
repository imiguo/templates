<link rel="stylesheet" href="hustydesigns/popup/reveal.css?tag={%$tag%}">
<link rel="stylesheet" href="calc/css/calc.css?tag={%$tag%}" type="text/css" />
<link rel="stylesheet" href="calc/css/jquery.bxslider.css?tag={%$tag%}" />
<link rel="stylesheet" href="calc/css/jquery-ui.min.css?tag={%$tag%}" type="text/css" />
<link rel="stylesheet" href="calc/css/main.css?tag={%$tag%}" type="text/css" />
<link rel="stylesheet" href="calc/css/modal.css?tag={%$tag%}" type="text/css" />
<link rel="stylesheet" type="text/css" href="calc/source/jquery.fancybox8cbb.css?v=2.1.5" media="screen" />
<div class="none">
    <div id="calculator">
        <center>
            <h2 style="text-transform:uppercase;" class="title">Calculate <span> Your Profit</span></h2>
        </center>
        <div class="panel-calc">
            <ul>
                <li class="calc-amount">
                    <label>Amount to spend</label>
                    <input type="text" class="calculate-amount" value="10">
                </li>
                <li class="calc-select">
                    <label>Select a plan</label>
                    <select class="calculate-select">
                        <option value="1">1261% After 1 day</option>
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