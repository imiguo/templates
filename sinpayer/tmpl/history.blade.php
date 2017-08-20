@if (config('hm.show_history'))
<style type="text/css">
    #history {
        background: #222222 url("hustydesigns/graphics/revshare.png") no-repeat center bottom / 100%;
        padding: 10px 0;
        overflow: hidden;
    }
    .hlastbox {
        display: inline-block;
        margin: 10px;
        width: 45%;
        min-height: 50px;
        max-height: 480px;
        padding: 10px;
        border: 1px solid #ccc;
        background: rgba(255,255,255,0.7);
        vertical-align: top;
    }
    .hlastbox table {
        overflow: hidden;
    }
    .hlastboxtit {
        background: #c2a712;
        padding: 10px;
        font-size: 16pt;
        font-family: title;
        color: #fff;
    }
    .pm-img {
        background: url(images/pm-img.png) no-repeat;
        display: block;
        height: 29px;
        min-width: 56px;
    }
    .btc-img {
        background: url(images/btc-img.png) no-repeat;
        display: block;
        height: 29px;
        min-width: 56px;
    }
    .payeer-img {
        background: url(images/payeer-img.png) no-repeat;
        display: block;
        height: 29px;
        min-width: 56px;
    }
    .lastborder {
        border-bottom: 1px dashed #ccc;
        text-align: left;
        padding: 5px;
    }
</style>
<div id="history">
    <div class="amk_wrap wow fadeIn" data-wow-delay="0s" style="visibility: visible; animation-delay: 0s; animation-name: fadeIn;">
    <center>
        <div class="hlastbox">
            <div class="hlastboxtit">Last Deposits</div>
            <br>
            <table width="100%" border="0">
                <tbody>
                @foreach (app('App\Services\DataService')->deposits(10) as $deposit)
                    <tr>
                        <td class="lastborder">
                            <div class="{{$deposit['payment']}}-img"></div>
                        </td>
                        <td class="lastborder">{{$deposit['username']}}</td>
                        <td class="lastborder">${{$deposit['amount']}}</td>
                        <td class="lastborder">{{$deposit['time']}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <div class="hlastbox">
            <div class="hlastboxtit">Last Withdraw</div>
            <br>
            <table width="100%" border="0">
                <tbody>
                @foreach (app('App\Services\DataService')->payouts(10) as $payout)
                    <tr>
                        <td class="lastborder">
                            <div class="{{$payout['payment']}}-img"></div>
                        </td>
                        <td class="lastborder">{{$payout['username']}}</td>
                        <td class="lastborder">${{$payout['amount']}}</td>
                        <td class="lastborder">{{$payout['time']}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </center>
    </div>
</div>
@endif
