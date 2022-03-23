$(document).ready(function(){

	//head 전체메뉴
	$(".heder_btn").on("click", function(){
		$(this).toggleClass("on");


		if($("#header").hasClass("in_mob")){
			$("#header").removeClass("in_mob");
		}else{
			$("#header").addClass("in_mob");
		}

	});

	// 약관보기 
	$(".agree_pop").hide();
	$(".agr_pop1_open").on("click", function(){
		$(".agr_1").fadeIn(300);
		$("html, body").on("scroll touchmove mousewheel", function(event) {
			event.preventDefault();
			event.stopPropagation();
			return false;
		});
	});
	$(".agr_close_btn").on("click", function(){
		$(".agr_1").fadeOut(300);
		$("html, body").off("scroll touchmove mousewheel");
	});

	$(".agr_pop2_open").on("click", function(){
		$(".agr_2").fadeIn(300);
		$("html, body").on("scroll touchmove mousewheel", function(event) {
			event.preventDefault();
			event.stopPropagation();
			return false;
		});
	});
	$(".agr_close_btn").on("click", function(){
		$(".agr_2").fadeOut(300);
		$("html, body").off("scroll touchmove mousewheel");
	});

	$(".agr_pop3_open").on("click", function(){
		$(".agr_3").fadeIn(300);
		$("html, body").on("scroll touchmove mousewheel", function(event) {
			event.preventDefault();
			event.stopPropagation();
			return false;
		});
	});
	$(".agr_close_btn").on("click", function(){
		$(".agr_3").fadeOut(300);
		$("html, body").off("scroll touchmove mousewheel");
	});

	$(".agr_pop4_open").on("click", function(){
		$(".agr_4").fadeIn(300);
		$("html, body").on("scroll touchmove mousewheel", function(event) {
			event.preventDefault();
			event.stopPropagation();
			return false;
		});
	});
	$(".agr_close_btn").on("click", function(){
		$(".agr_4").fadeOut(300);
		$("html, body").off("scroll touchmove mousewheel");
	});

	/*option*/
	$(".option_label").on("click", function(){
		if($(this).hasClass("on")){
			$(this).removeClass("on");
			$(this).parent().find("ul").stop().slideUp(500,"linear");			
		}else{
			$(this).addClass("on");
			$(this).parent().find("ul").stop().slideDown(500,"linear");
		}
	});

	/*투자유치금/수츨금 여 체크 하면 금액란 나오기*/
	$(".chk.have").on("click", function(){
		$(this).parent(".radio").next(".entry_box").show();
	});

	$(".chk.not").on("click", function(){
		$(this).parent(".radio").next(".entry_box").hide();
	});



	
	/*파일첨부 사업자 구분*/
	$(".radio input").on("click", function(){
		if($("#businessType_01").is(':checked')){
			$(".file_list.fs1").show();
			$(".file_list.fs2").hide();

		}else if($("#businessType_02").is(':checked') || $("#businessType_03").is(':checked')){
			$(".file_list.fs1").hide();
			$(".file_list.fs2").show();
		}
	});


	/*신청자 리스트 개별 체크*/
	$('tbody td input').on("click", function(){
		
		$(this).parents().parents().addClass("on");

		if($(this).is(':checked') == false){

			$(this).parents().parents().removeClass("on");
		}else{
		}

	});	

	/*전체 신청자 리스트 전부 체크*/
	$('#chkall').on("click", function(){
		var checked = $('#chkall').is(':checked');
		
		if(checked){
			$('tbody td input:checkbox').prop('checked',true);
			$("tbody tr").addClass("on");
		}else{
			$('tbody td input:checkbox').prop('checked',false);
			$("tbody tr").removeClass("on");
		}

	});



});







/*약관 전부 체크*/
function allBtn(){

	if ($("#allCheck").is(':checked')){
		$(".agr.radio").find(".agr_like").prop("checked", true);
	}else{
		$(".agr.radio").find("input[type=radio]").prop("checked", false);
	}

}


