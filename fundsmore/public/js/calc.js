function calc()
				{
					var plan = jQuery('#planm').val();
					var principal = jQuery('#principal').val();
					if (plan==1){
						if (principal<99.99)
							percent = 0;
						else if (principal<=100000)
							percent = 10000;
						else if (principal>100000)
							percent = 0;
						
						
						
					}
					else if (plan==2){
						if (principal<9.999)
							percent = 0;
						else if (principal<=499.99)
							percent = 105;
						else if (principal<9999.99)
							percent = 0;
						else if (principal>=10000)
							percent = 125;
						
						
						
					}
					else if (plan==3){
							if (principal<9.999)
							percent = 0;
						else if (principal<=499.99)
							percent = 116;
						else if (principal<9999.99)
							percent = 0;
						else if (principal>=10000)
							percent = 200;
						
						
						
					}
					else if (plan==4){
							if (principal<9.999)
							percent = 0;
						else if (principal<=499.99)
							percent = 136;
						else if (principal<9999.99)
							percent = 0;
						else if (principal>=10000)
							percent = 500;
						
						
					}
					else if (plan==5){
							if (principal<9.999)
							percent = 0;
						else if (principal<=9999.99)
							percent = 500;
						else if (principal>=10000)
							percent = 1000;
						
						
					}
					
					else if (plan==6){
							if (principal<9.99)
							percent = 0;
						else if (principal<=100000)
							percent = 2200;
}

	else if (plan==7){
							if (principal<9.99)
							percent = 0;
						else if (principal<=100000)
							percent = 3600;
}

	else if (plan==8){
							if (principal<9.99)
							percent = 0;
						else if (principal<=100000)
							percent = 5800;
}



					
					
					
					var x = percent-100;
					var y = document.getElementById('principal').value;
					document.getElementById('total_return_persent').value = percent+'%';					
					principal = principal*percent/100;
					profit = y*x/100;
					document.getElementById('total_return_dollar').value = '$'+principal;
					document.getElementById('total_return_profit').value = '$'+profit;
				}
				$(function() {
					$('#principal').numeric();
				});
