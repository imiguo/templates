<div class="amk_revshare">
    <div class="amk_wrap">
        <ul>
            @foreach (plan_group_all() as $item)
                <li class="wow fadeInUp" data-wow-delay="0s">
                    <h3>{{ $item['percent'] }}%</h3>
                    @if ($item['period'] == 'after')
                        <h4>{{ $item['period'] }}</h4>
                        <h5><b>{{$item['days']}}</b> Day</h5>
                    @else
                        <h4>{{ $item['period'] }}</h4>
                    @endif

                    <span class="amk_hline"></span>
                    <p>Min : <b>${{ $item['min'] }}</b></p>
                    <p>Max : <b>${{ $item['max'] }}</b></p>
                </li>
            @endforeach
        </ul>
        <div class="amk_clear"></div>
        {{--
        <a class="amk_btn1 amk_left box-modal wow fadeInUp" data-wow-delay="1.2s" rel="calculator"> Profit Calculator</a>
        --}}
        <a href="?a=cust&page=about" class="amk_btn amk_btn2 amk_right wow fadeInUp" data-wow-delay="1.4s">About Us</a>
        <a href="?a=support" class="amk_btn amk_btn3 amk_right wow fadeInUp" data-wow-delay="1.6s">Our Contact</a>
    </div>
</div>