$(function(){
	$(".fa-info-circle").parent().on("click",function(){
		$("#about_me").appendTo("body").modal("show");
		return false;
	})
})