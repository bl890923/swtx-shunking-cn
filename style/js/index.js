/*
* by 主厨 20180712
* */
//百度js埋码
window._agl = window._agl || [];
(function () {
_agl.push(
['production', '_f7L2XwGXjyszb4d1e2oxPybgD']
);
(function () {
var agl = document.createElement('script');
agl.type = 'text/javascript';
agl.async = true;
agl.src = 'https://fxgate.baidu.com/angelia/fcagl.js?production=_f7L2XwGXjyszb4d1e2oxPybgD';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(agl, s);
})();
})();
//倒计时插件
(function($){
var intervalDate;
var day,hour,min,sec;

$.fn.extend({
countDown: function(options){
var opts = $.extend({},defaults,options);
this.each(function(){
var $this = $(this);
var nowTime = new Date().getTime();
var startTime = new Date(opts.startTimeStr).getTime(); 
var endTime = new Date(opts.endTimeStr).getTime();  
endTime = endTime > startTime ? endTime : startTime;
startTime = endTime > startTime ? startTime : endTime;
intervalDate = setInterval(function(){
nowTime = new Date().getTime();
if(startTime >= nowTime){
$this.beforeAction(opts);
clearInterval(intervalDate);
}else if(endTime >= nowTime){
var t = endTime - nowTime;
day = Math.floor(t/1000/60/60/24);
hour = Math.floor(t/1000/60/60%24);
min = Math.floor(t/1000/60%60);
sec = Math.floor(t/1000%60);
$(opts.daySelector).html($this.doubleNum(day)+"");
$(opts.hourSelector).html($this.doubleNum(hour)+":");
$(opts.minSelector).html($this.doubleNum(min)+":");
$(opts.secSelector).html($this.doubleNum(sec));
}else{
$this.afterAction(opts);
clearInterval(intervalDate);
}
},1000);
});
},
doubleNum:function(num){ 
if(num<10){
return "0"+num;
}else{
return num+"";
}
},
beforeAction:function(options){
$(options.daySelector).parent().html("敬请期待");
},
afterAction:function(options){
$(options.daySelector).parent().html("活动结束");
}
});

var defaults = {
startTimeStr: "2017/01/10 00:00:00",
endTimeStr: "2017/01/17 23:59:59",
daySelector:".day",
hourSelector:".hour",
minSelector:".min",
secSelector:".sec"
}
})(jQuery);

$(".count_down").countDown({
startTimeStr:'2017/11/28 00:00:00',
endTimeStr:'2099/12/31 23:59:59',
//daySelector:".day_num",
hourSelector:".hour_num",
minSelector:".min_num",
secSelector:".sec_num"
});
//jquery 自定义扩展
(function ($) {
//导航栏效果
$.fn.extend({
'oBJClass': function () {
return this.each(function () { //这里的this 指jquery 对象
var $this = $(this);
$this.mouseenter(function () {
$(this).addClass("active").siblings().removeClass("active")
});
$this.mouseleave(function () {
$(this).removeClass("active").siblings()
});
})
},
'divShow':function () {
return this.each(function () {
var $this = $(this),
$index = $this.index();
$this.mouseenter(function () {
$(this).addClass('active').siblings().removeClass('active');
$(this).parent().siblings('.num-list').children().eq($index).show().siblings().hide();
})
})
},
'getNavIndex':function (ele) {
var NavIndex = '';
NavIndex = this.attr('data-index');
$('.nav a').eq(NavIndex).children('.bg-block').stop().animate({
'top': 0
},'fast');
},
'crossNav': function (options) {
var opts = $.extend( {},defaluts, options);
return this.each(function () { //这里的this 指jquery 对象
var $this = $(this),
$this_index = $this.index();
NavIndex = $('body').attr('data-index');
$this.on('mouseenter',function () {
if( NavIndex ==  $this_index ){
return false;
};
$(this).children('.bg-block').stop().animate({
'top': 0
},'fast');
$('.nav a').eq(NavIndex).children('.bg-block').stop().animate({
'top': 64 + 'px'
},'fast');
});
$this.on('mouseleave',function () {
$(this).children('.bg-block').stop().animate({
'top': 64 + 'px'
},'fast');
$('.nav a').eq(NavIndex).children('.bg-block').stop().animate({
'top': 0
},'fast');
})
})
}
});
//默认参数
var defaluts = {};
})(jQuery);


$(function () {
	//给百度埋点添加自定义属性
	$('.kf').attr("data-agl-cvt","1");
	$('.banner-kf').attr("data-agl-cvt","1");
	$('.side-box .btn-vo-sub').attr("data-agl-cvt","5");
//导航栏效果
$('.nav a').crossNav();
$('.how-tems .tem').oBJClass("active");
$('.Promotion .tag').divShow();
$('body').getNavIndex();
//常见问题切换
$('.question-list .list-item p.a').click(function(event) {
/* Act on the event */
$value = $(this).hasClass('active');
if ($value) {
$(this).removeClass('active');
$(".arrow-tips .a-w").show();
$(".arrow-tips .a-r").hide();
$(this).siblings('.content').slideUp();
} else{
$(this).addClass('active');
$(".arrow-tips .a-w").hide();
$(".arrow-tips .a-r").show();
$(this).siblings('.content').slideDown();
}
});
//返回顶部
$(window).scroll(function() {
/* 判断滚动条 距离页面顶部的距离 100可以自定义*/
var $wHight = $(window).height();
if($(window).scrollTop() > $wHight) {
$(".goTo").fadeIn(100); /* 这里用.show()也可以 只是效果太丑 */
} else {
$(".goTo").fadeOut(100);
}
});
});
/* 给图片元素绑定 回到顶部的事件 */
$(function() {
(function(){
if( $(".side-bar").length > 0 ){

$(window).scroll(function(){
if($(window).scrollTop() > $(window).height() ){
$(".side-bar").addClass("active");
}else{
$(".side-bar").removeClass("active");
}

var $toTopPx = $(window).scrollTop();
var $tianti_1 = $("#tianti-1").offset().top,
$tianti_2 = $("#tianti-2").offset().top,
$tianti_3 = $("#tianti-3").offset().top,
$tianti_4 = $("#tianti-4").offset().top,
$tianti_5 = $("#tianti-5").offset().top,
$tianti_6 = $("#tianti-6").offset().top,
$tianti_7 = $("#tianti-7").offset().top,
$tianti_8 = $("#tianti-8").offset().top,
$tianti_9 = $("#conectUs").offset().top;
if( $toTopPx >= $tianti_1 && $toTopPx < $tianti_2) {
$(".side-bar .item1").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_2 &&  $toTopPx < $tianti_3){
$(".side-bar .item2").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_3 &&  $toTopPx < $tianti_4){
$(".side-bar .item3").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_4 &&  $toTopPx < $tianti_5){
$(".side-bar .item4").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_5 &&  $toTopPx < $tianti_6){
$(".side-bar .item5").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_6 &&  $toTopPx < $tianti_7){
$(".side-bar .item6").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_7 &&  $toTopPx < $tianti_8){
$(".side-bar .item7").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_8 &&  $toTopPx < $tianti_9){
$(".side-bar .item8").addClass("on").siblings().removeClass("on");
}else if($toTopPx >= $tianti_9){
$(".side-bar .item9").addClass("on").siblings().removeClass("on");
}

});
}
})();
// 点击跳转
$(".side-bar .item").click(function(){
var $this = $(this);
var $getId = $this.attr("data-tt");
console.log($getId);
function _scrollTop(){
var $el = $("#"+$getId);
$("html,body").animate({scrollTop:$el.offset().top},200);
}
_scrollTop();
});

$(".goTo,.side-bar .sub").on("click", function() {
$('body,html').animate({
scrollTop: 0
}, 500);
return false;
});
//侧边表单
(function () {
var thisTxt,thatTxt;
$('.side-box .form-box input').on('focus',function () {
thisTxt = $(this).val();
if(thisTxt === "您的称呼"){
$(this).val("") ;
}else if(thisTxt === "手机号"){
$(this).val("") ;
}else if(thisTxt === "验证码"){
$(this).val("") ;
}
}).on('blur',function () {
thatTxt = $(this).val();
if(thatTxt === ""){
$(this).val(thisTxt) ;
}else if(thatTxt === ""){
$(this).val(thisTxt) ;
}else if(thisTxt === thatTxt){
$(this).val(thisTxt) ;
}
});
$("#code-vo-sub").on("click",function () {
createCode($(this));
});
function createCode(id) {
var code = "";
var codeLength = 4; //验证码的长度
var checkCode = $(id);
var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
for (var i = 0; i < codeLength; i++) {
var charNum = Math.floor(Math.random() * 52);
code += codeChars[charNum];
}
if (checkCode) {
checkCode.html(code)
}
}
createCode('.code-vo-sub');
var commonUrl = '//server.400.com/codeApi/commonapply400';
//normal url 'http://server.400.com/codeApi/commonapply400';
// test url 'http://192.168.1.117:8012/codeApi/commonapply400'
function validateCode(inputCode,code,phone,name,num,title) {
$(".btn-vo-sub").attr("disabled", "disabled");
if (name == "") {
alert('请输入姓名');
$(".btn-vo-sub").attr("disabled", false);
return false;
} else if (phone == "") {
alert("请输入手机号码");
$(".btn-vo-sub").attr("disabled", false);
return false;
} else if (!(/^1[3456789]\d{9}$/.test(phone))) {
//验证手机号码格式)
alert("手机号码有误，请重填");
$(".btn-vo-sub").attr("disabled", false);
return false;
} else if (inputCode.length <= 0) {
alert("请输入验证码！");
$(".btn-vo-sub").attr("disabled", false);
return false;
} else if (inputCode.toUpperCase() != code.toUpperCase()) {
alert("验证码输入有误！");
$(".btn-vo-sub").attr("disabled", false);
createCode('code');
return false;
} else {
$('.btn-vo-sub').attr("disabled","disabled");
title = encodeURIComponent(title);
$.ajax({
url: commonUrl,
type: 'GET',
dataType: 'jsonp',
jsonp: 'callback',
jsonpCallback: "handler",
data: {"phone": phone, "title": title, "username": name, "code": "1","preOccupationNum":num},
beforeSend: function(){
$(".btn-vo-sub").val("提交中，请稍后.....")
},
success: function (data) {
alert('提交成功');
$('.name-vo-sub').val('您的称呼');
$('.phone-vo-sub').val('手机号码');
$('.inputcode-vo-sub').val('验证码');
$(".btn-vo-sub").val("立即提交");
$('btn-vo-sub').attr("disabled", false);
// $('.layer').hide();
createCode('.code-vo-sub');
},
error: function () {
alert('提交失败');
$(".btn-vo-sub").val("立即提交");
createCode('.code-vo-sub');
}
})
}
}
$('.btn-vo-sub').click(function () {
var $thisForm = $(this).parents('.form-box');
var title = $thisForm.attr("data-title");
var inputCode =  $thisForm.find('.inputcode-vo-sub').val();  //$('.inputcode-vo-sub').val();
var code = $thisForm.find('.code-vo-sub').html();//$("#code-vo-sub").html();
var phone =  $thisForm.find('.phone-vo-sub').val();//$('.phone-vo-sub').val();
var name = $thisForm.find('.name-vo-sub').val();//$('.name-vo-sub').val();
var num = "";
validateCode(inputCode,code,phone,name,num,title);
});
})();
//申请免单2 free2
(function () {
var thisTxt,thatTxt;
$('.free2 .form-box input').on('focus',function () {
thisTxt = $(this).val();
if(thisTxt === "您的姓名"){
$(this).val("") ;
}else if(thisTxt === "手机号码"){
$(this).val("") ;
}else if(thisTxt === "验证码"){
$(this).val("") ;
}
}).on('blur',function () {
thatTxt = $(this).val();
if(thatTxt === ""){
$(this).val(thisTxt) ;
}else if(thatTxt === ""){
$(this).val(thisTxt) ;
}else if(thisTxt === thatTxt){
$(this).val(thisTxt) ;
}
});
$("#code-vo-sub2").on("click",function () {
createCode($(this));
});
function createCode(id) {
var code = "";
var codeLength = 4; //验证码的长度
var checkCode = $(id);
var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
for (var i = 0; i < codeLength; i++) {
var charNum = Math.floor(Math.random() * 52);
code += codeChars[charNum];
}
if (checkCode) {
checkCode.html(code)
}
}
createCode('.code-vo-sub2');
//normal url 'http://server.400.com/codeApi/commonapply400';
// test url 'http://192.168.1.117:8012/codeApi/commonapply400'
function validateCode(inputCode,code,phone,name,num,title) {
$(".btn-vo-sub2").attr("disabled", "disabled");
if (name == "") {
alert('请输入姓名');
$(".btn-vo-sub2").attr("disabled", false);
return false;
} else if (phone == "") {
alert("请输入手机号码");
$(".btn-vo-sub2").attr("disabled", false);
return false;
} else if (!(/^1[3456789]\d{9}$/.test(phone))) {
//验证手机号码格式)
alert("手机号码有误，请重填");
$(".btn-vo-sub2").attr("disabled", false);
return false;
} else if (inputCode.length <= 0) {
alert("请输入验证码！");
$(".btn-vo-sub2").attr("disabled", false);
return false;
} else if (inputCode.toUpperCase() != code.toUpperCase()) {
alert("验证码输入有误！");
$(".btn-vo-sub2").attr("disabled", false);
createCode('.code-vo-sub2');
return false;
} else {
$('.btn-vo-sub2').attr("disabled","disabled");
title = encodeURIComponent(title);
$.ajax({
url: commonUrl,
type: 'GET',
dataType: 'jsonp',
jsonp: 'callback',
jsonpCallback: "handler",
data: {"phone": phone, "title": title, "username": name, "code": "1","preOccupationNum":num},
beforeSend: function(){
$(".btn-vo-sub2").val("提交中，请稍后.....")
},
success: function (data) {
alert('提交成功');
$('.name-vo-sub2').val('您的姓名');
$('.phone-vo-sub2').val('手机号码');
$('.inputcode-vo-sub2').val('验证码');
$(".btn-vo-sub2").val("立即提交申请").attr("disabled", false);
// $('.layer').hide();
createCode('.code-vo-sub2');
},
error: function () {
alert('提交失败');
$(".btn-vo-sub2").val("立即提交申请");
createCode('.code-vo-sub2');
}
})
}
}
$('.btn-vo-sub2').click(function () {
var $thisForm = $(this).parents('.form-box');
var title = $thisForm.attr("data-title");
var inputCode =  $thisForm.find('.inputcode-vo-sub2').val();  //$('.inputcode-vo-sub').val();
var code = $thisForm.find('.code-vo-sub2').html();//$("#code-vo-sub").html();
var phone =  $thisForm.find('.phone-vo-sub2').val();//$('.phone-vo-sub').val();
var name = $thisForm.find('.name-vo-sub2').val();//$('.name-vo-sub').val();
var num = "";
validateCode(inputCode,code,phone,name,num,title);
});
})();
});
/*号码轮播*/
if($(".zjia").length > 0 ){
$(".zjia").slide({
mainCell:".table-wrap",
easing:"swing",
delayTime:1000
// effect:"leftLoop"
});
};
