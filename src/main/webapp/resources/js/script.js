$(function(){
	$(document).on("click","#personal-info",function(){ 
		$("#about_me").appendTo("body").modal("show");
		return false;
	})
})