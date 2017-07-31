var $j = jQuery.noConflict();
$j(document).ready(function() {

	//When page loads...
	$j(".tab_content").hide(); //Hide all content
	$j("ul.tabs_custom li:first").addClass("active").show(); //Activate first tab
	$j(".tab_content:first").show(); //Show first tab content

	//On Click Event
	$j("ul.tabs_custom li").click(function() {

		$j("ul.tabs_custom li").removeClass("active"); //Remove any "active" class
		$j(this).addClass("active"); //Add "active" class to selected tab
		$j(".tab_content").hide(); //Hide all tab content

		var activeTab = $j(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
		$j(activeTab).fadeIn(); //Fade in the active ID content
		return false;
	});

});
