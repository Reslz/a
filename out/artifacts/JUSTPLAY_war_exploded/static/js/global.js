// JavaScript Document
function $(obj){
	return document.getElementById(obj);	
}
function sn(n){
	$("c").value += n;
	check();
}
function check(){
	var code = $("c").value.replace(/\D/g,'');
	var newCode = "";
	for(var i = 0; i < code.length; i++){
		if(i % 10 == 0 && i > 0){ newCode += " "; }
		newCode += code.substr(i, 1);
	}
	$("c").value = newCode;
}
function r(obj){
	obj.src = 'media/safe/?t=' + Math.random();	
}
function submitForm(){
	console.log($("c").value);
	var code = $("c").value.replace(/\D/g,'');
	if(code.length != 20){
		alert("防伪码格式有误，请输入20位防伪码！");	
	}else{
		document.forms.item(0).submit();
		//window.location = "?act=query&c=" + code;	
	}
}
function submitForm3(){
	var a = $("#c").val();
	console.log(a);
	var code = a.replace(/\D/g,'');
	if(code.length != 16){
		alert("防偽碼格式有誤，請輸入16位防偽碼！");
	}else{
		// document.forms.item(0).submit();
		//window.location = "?act=query&c=" + code;
		var ids = [
			'1988457631058432',
			'1797765178578624',
			'1322789457911054',
			'1377985487531866',
			'1887457665484225',
			'1754885165412395',
			'2547816875613854',
			'3874567654812264',
			'3795484156134888',
			'3157115789221549',
			'3278945611875315',
			'1214562248964534',
			'8798435554894331',
			'1165898778444687',
			'4898166687984813',
			'3248187965486541',
			'2368745089845665',
			'3218508984862145',
			'3378945318945348',
			'1478917933308487',
			
		];
		if($.inArray(code, ids) != -1) {
			layer.msg(code+' 恭喜您驗證成功！您購買的是LOLA ROSE正品！渠道為：香港九龍尖沙咀廣東道28號DFS免稅店，感謝您對LOLA ROSE正品的支持！', {time: 10000,icon: 1});
		} else {
			layer.msg('防偽碼'+code+'不存在！請謹防假冒。', {icon: 2});
		}
	}
}
function submitForm_tw(){
	var code = $("c").value.replace(/\D/g,'');
	if(code.length != 20){
		alert("防偽碼格式有誤，請輸入20位防偽碼！");	
	}else{
		document.forms.item(0).submit();
		//window.location = "?act=query&c=" + code;	
	}
}
function submitForm2(){
	var code = $("c").value.replace(/\D/g,'');
	if(code.length != 20){
		alert("防伪码格式有误，请输入20位防伪码！");	
	}else if($("s").value == ""){
		alert("请输入验证码！");	
	}else{
		document.forms.item(0).submit();
		//window.location = "?act=query&c=" + code + "&s=" + $("SafeNumber").value;	
	}
}
function submitForm_tw2(){
	var code = $("c").value.replace(/\D/g,'');
	if(code.length != 20){
		alert("防偽碼格式有誤，請輸入20位防偽碼！");	
	}else{
		// console.log(document.forms.item(0));
		document.forms.item(0).submit();
		//window.location = "?act=query&c=" + code + "&s=" + $("SafeNumber").value;	
	}
}

function tmysubmitForm(){
	console.log($("#c").val());
	var code = $("#c").val().replace(/\D/g,'');
	if(code.length != 20){
		alert("防伪码格式有误，请输入20位防伪码！");	
	}else{
		document.forms.item(0).submit();
		//window.location = "?act=query&c=" + code;	
	}
}

function submitFormen(){
	var code = $("c").value.replace(/\D/g,'');
	if(code.length != 20){
		alert("the code you enter is invalid, please enter 20 codes!");	
	}else{
		document.forms.item(0).submit();
		//window.location = "?act=query&c=" + code;	
	}
}