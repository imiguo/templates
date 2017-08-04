$(function(){

/* modal wondow */
$(document).on('click','.box-modal', function(event)
{

		$this=$(this);
		$('.cwrap').remove();
		//$('#main').addClass('grey');
		var style=$this.data('style');
		var url=$this.attr('href');
		var datahref=$this.data('href');
		//var active=$this.data('active');
		$('.cwrap').animate({'opacity':'0'},200).remove();
		if (datahref==undefined)
		{
			closeval="<div class='close'>Close</div>";

		}
		else
		{
			closeval="<a href='/"+datahref+"' class='close'></a>";
		}
			if (style==undefined)
				{
				style='';
				}

			if (url==undefined)
				{
				var block=$this.attr('rel');
				var inner=$('#'+block).html();
				var inner_size=$this.data('width');
				}
			else
				{
				var inner='';
				var inner_size=$this.data('width');
				}

			var html="<div class='cwrap' style='opacity:0;'  >"+
			"<div class='modal_block animated fadeInDown ui-widget-content "+style+"' id='draggable' style='width:"+inner_size+"px; '>"+closeval+
			"<div class='inset ajax_modal'>"+
			inner+
			"</div>"+
			"</div>"+
			"</div>";
			$('body').prepend(html);
			if (url!=undefined)
				{
						$('.cwrap').delay(1000).css({'opacity':'1','filter':'alpha(opacity=100)'});
						$(".modal_block > .inner").load(url,function() {
						});
				}
			else {
					$('.cwrap').delay(1000).css({'opacity':'1','filter':'alpha(opacity=100)'});
				}
			$( "#draggable" ).draggable({cursor: "move", handle: ".title"});

			$( "#drag" ).draggable({cursor: "e-resize", axis: "x" ,containment: "parent", drag: function(event, ui)
				{

						var plan=$('.calculate-select').val();
						var data = sw(plan);
						var c=ui.position.left;
						console.clear();
			 			console.log(c);
						var e=parseFloat(data.min)+c*(data.max-data.min)/($(this).parent().width()-$(this).width());
						var output=Math.round(e).toFixed(0)*100/100;
			 			$('.p_before').css({'width': c});
						$(this).children('span').text(output);
			 			$('.calculate-amount').val(output);
						calc(data, output);
				}
			});


		event.preventDefault();
		changecalc();
		/* Act on the event */
});

$('body').on('keypress, keydown', function(event)
{
	var show=$(this).find('.cwrap')[0];
	if (show!=undefined)
	{
		var code = event.keyCode ? event.keyCode : event.which;
		if (code==27)
    	{
    		$('.modal_block').removeClass('fadeInDown').addClass('fadeOutUp');
			$('.cwrap').fadeOut('1000', function(){$('.cwrap').remove();});
			//$('#main').removeClass('grey');
		}
	}
});
$('body').on('click', function(event) {
	if (event.target.className=='close'  || event.target.className=='btn-close')
	{
		$('.modal_block').removeClass('fadeInDown').addClass('fadeOutUp');
		$('.cwrap').fadeOut('1000', function(){$('.cwrap').remove();});
		//$('#main').removeClass('grey');
	}
});




$(document).on('change','.calculate-select',function()
{
	changecalc();
})

function changecalc(){
	var plan=$('.calculate-select').val();
	var data = sw(plan);
	//console.log(plan);
	if (plan>1) { $('.calculate-duration').prop( "disabled", true ); }
	else {  $('.calculate-duration').prop( "disabled", false ); }

			$('.calculate-amount').val(data.min);
			$('.calculate-duration').val(data.duration);
			//$('.compound').val('0');
			$('.drag').children('span').text(data.min);
			$('.drag').animate({'left': '0px'},400);
			$('.p_before').animate({'width': '0'},400);
	calc(data,data.min);
}

$(document).on('change keyup','.calculate-amount', function()
		{
				var amount=$(this).val();
				var duration=$('.calculate-duration').val();
				var plan=$('.calculate-select').val();
				var data = sw(plan);

				if (amount>data.max) amount=data.max;
				$(this).val(amount);
				var position=Math.round((amount-data.min)*($( ".drag" ).parent().width()-$(".drag" ).width())/(data.max-data.min));
				if (position<0) position=0;
				$('.p_before').animate({'width': position},400);
				$(".drag").animate({'left': position+'px'},400);
				calc(data, amount);
		}).on('keypress','.calculate-amount', isNumber);

$(document).on('change keyup','.calculate-duration', function()
		{
				var amount=$('.calculate-amount').val();
				var duration=$(this).val();
				var plan=$('.calculate-select').val();
				var data = sw(plan);
				console.clear();
				data.duration=duration;
				calc(data, amount);
		}).on('keypress','.calculate-duration', isNumber);

function isNumber(event)
{
	var charCode = (event.which) ? event.which : event.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57))
		return false;
	return true;
}
function sw(plan)
{
		data=[];
		amount=$('.calculate-amount').val();
		data.min=10;
		data.max=50000;
		data.percent=126;
		switch (plan)
		{
		case '1':
				data.min = 10;
				data.max = 50000;
				data.plan=1;
				data.duration=1;
				percent=103;

				if(amount>=10&&amount<=500) { percent=103; }
				else if(amount>=501&&amount<=1000){ percent=106; }
				else if(amount>=1001&&amount<=5000){ percent=109; }
				else if(amount>=5001&&amount<=10000){ percent=114; }
				else if(amount>=10001&&amount<=25000){ percent=120; }
				else if(amount>=25001&&amount<=50000){ percent=126; }
				else if(amount<10){ percent=103; }
				data.percent=percent;
				break;
		case '2':
				data.min = 10;
				data.max = 50000;
				data.plan=2;
				data.duration=5;
				percent=120;

				if(amount>=10&&amount<=500) { percent=120; }
				else if(amount>=501&&amount<=1000){ percent=135; }
				else if(amount>=1001&&amount<=5000){ percent=150; }
				else if(amount>=5001&&amount<=10000){ percent=180; }
				else if(amount>=10001&&amount<=25000){ percent=220; }
				else if(amount>=25001&&amount<=50000){ percent=260; }
				else if(amount<10){ percent=120; }
				data.percent=percent;
				break;
		case '3':
				data.min = 10;
				data.max = 50000;
				data.plan=3;
				data.duration=10;
				percent=150;

				if(amount>=10&&amount<=500) { percent=150; }
				else if(amount>=501&&amount<=1000){ percent=180; }
				else if(amount>=1001&&amount<=5000){ percent=210; }
				else if(amount>=5001&&amount<=10000){ percent=280; }
				else if(amount>=10001&&amount<=25000){ percent=350; }
				else if(amount>=25001&&amount<=50000){ percent=430; }
				else if(amount<10){ percent=150; }
				data.percent=percent;
				break;
		case '4':
				data.min = 10;
				data.max = 50000;
				data.plan=4;
				data.duration=15;
				percent=175;

				if(amount>=10&&amount<=500) { percent=175; }
				else if(amount>=501&&amount<=1000){ percent=220; }
				else if(amount>=1001&&amount<=5000){ percent=275; }
				else if(amount>=5001&&amount<=10000){ percent=360; }
				else if(amount>=10001&&amount<=25000){ percent=480; }
				else if(amount>=25001&&amount<=50000){ percent=600; }
				else if(amount<10){ percent=175; }
				data.percent=percent;
				break;
		case '5':
				data.min = 10;
				data.max = 50000;
				data.plan=5;
				data.duration=20;
				percent=300;

				if(amount>=10&&amount<=500) { percent=300; }
				else if(amount>=501&&amount<=1000){ percent=450; }
				else if(amount>=1001&&amount<=5000){ percent=600; }
				else if(amount>=5001&&amount<=10000){ percent=750; }
				else if(amount>=10001&&amount<=25000){ percent=900; }
				else if(amount>=25001&&amount<=50000){ percent=1100; }
				else if(amount<10){ percent=300; }
				data.percent=percent;
				break;
		case '6':
				data.min = 10;
				data.max = 50000;
				data.plan=6;
				data.duration=25;
				percent=400;

				if(amount>=10&&amount<=500) { percent=400; }
				else if(amount>=501&&amount<=1000){ percent=650; }
				else if(amount>=1001&&amount<=5000){ percent=900; }
				else if(amount>=5001&&amount<=10000){ percent=1150; }
				else if(amount>=10001&&amount<=25000){ percent=1400; }
				else if(amount>=25001&&amount<=50000){ percent=1650; }
				else if(amount<10){ percent=400; }
				data.percent=percent;
				break;
		case '7':
				data.min = 1000;
				data.max = 10000;
				data.plan=7;
				data.duration=14;
				percent=1500;
				data.percent=percent;
				break;
		case '8':
				data.min = 10000;
				data.max = 100000;
				data.plan=8;
				data.duration=21;
				percent=2500;
				data.percent=percent;
				break;
		
		}
		$('.min-value').text(data.min+'$');
		$('.max-value').text(data.max+'$');
		
	return data;
}

function calc(data, amount)
{
	if (jQuery.isEmptyObject(data))
	{
		data = sw();
		amount = data.min;
		$('.amount').val(data.min);
		calculate(amount,data.percent,data.id,103);

	}
	calculate(amount,data.percent,data.plan,data.duration,data.percent);
}

 function calculate(amount,percent,plan,duration,percent)
 {
 	var plan=Number(plan);
 	var amount=Number(amount);

 	var duration=Number(duration);
	var percent=Number(percent);
	if(plan>1)
		{
			var total=Math.round(amount*percent).toFixed(0)/100;
		}
	else
		{
			var total=Math.round(amount*percent*duration).toFixed(0)/100;
		}
	$('.calculate-duration').val(duration);
	$('.depos').val('$'+amount.toFixed(2));
	$('.total').val('$'+(total-amount).toFixed(2));
	$('.summ').val('$'+total.toFixed(2));
	$('.percent').val(percent+'%');
 }

});

