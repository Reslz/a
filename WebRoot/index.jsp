<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, minimun-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=0">
    <meta name="format-detection" content="telephone=no">
    <script src="static/js/swiper.min.js"></script>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/layer/layer.js"></script>
    <script src="static/js/global.js" type="text/javascript" language="javascript"></script>
    <link rel="stylesheet" href="static/css/swiper.min.css">
    <link rel="stylesheet" href="static/css/homepage.css">
    <!-- <link rel="stylesheet" href="static/css/jieguo.css"> -->
    <!-- 1 -->
    <link rel="stylesheet" href="static/css/fullpage.css">
    <script src="static/js/jquery.min.js"></script>
    <!--基于jquery-->
    <title>LOLA ROSE 香港正品驗證系統</title>
    <%@ include file="WEB-INF/jsp/system/index/basepath.jsp"%>
    <!-- 2 -->
    <style type="text/css">
        body {
            font-family: 'microsoft yahei', arial, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
        }

        /*修改提示文字的颜色*/
        input::-webkit-input-placeholder {
            /* WebKit browsers */
            color: white;
        }

        input:-moz-placeholder {
            /* Mozilla Firefox 4 to 18 */
            color: white;
        }

        input::-moz-placeholder {
            /* Mozilla Firefox 19+ */
            color: white;
        }

        input:-ms-input-placeholder {
            /* Internet Explorer 10+ */
            color: white;
        }

        header {
            width: 100%;
            height: 4.94em;
            background-color: rgb(0, 41, 80);
        }

        .head {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.3);
            margin-top: -5em;
            left: 50%;
            margin-left: -2.5em;
            position: absolute;
            z-index: 99
        }

        .img {
            width: 66px;
            height: 66px;
            overflow: hidden;
            border-radius: 50%;
            margin: 7px auto;
            background-color: #fff;
        }

        .img img {
            width: 100%;
            height: 100%;
        }

        /*banner*/
        .swiper-container {
            width: 100%;
            height: 15em;
            margin-top: 0;
            overflow: hidden;
            position: relative;
        }

        .swiper-slide {
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }

        .swiper-slide img {
            width: 100%;
            height: 15em;
        }

        .btn_a a {
            display: block;
            text-decoration: none;
            color: black;
        }

        .div_both {
            clear: both;
        }

        .upper {
            width: 100%;
            height: 7em;
            background-color: rgb(0, 41, 80);
            position: relative;
        }

        .upperhead {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.3);
            top: 1em;
            left: 50%;
            margin-left: -2.5em;
            position: absolute;
            z-index: 99
        }

        .code {
            font-size: 1em;
            color: #fff;
            text-align: center;
            letter-spacing: 0.1em;
            line-height: 3.27em;
            background-color: rgb(0, 41, 80);
        }

        .prompt {
            width: 100%;
            height: 4.6em;
            background-color: #fff;
            margin: 3px 0;
        }

        .successcss {
            width: 2.2em;
            height: 2.2em;
            display: block;
            margin: 0 auto 0.5em auto;
            padding-top: 0.625em;
        }

        .prompt h1 {
            font-size: 1em;
            color: #36a057;
            text-align: center;
        }

        .p_name {
            width: 100%;
            height: auto;
            background-color: #fff;
            margin-bottom: 1px;
        }

        .nametitle {
            width: 100%;
            height: auto;
            padding: 0 0 0 1em;
            box-sizing: border-box;
        }

        .imgcss {
            width: 1.125em;
            float: left;
            margin-top: 0.7em;
        }

        .nametitle h2 {
            font-size: 1em;
            color: #0a6ac4;
            margin-left: 2em;
            line-height: 2em;
            padding: 0.54em 1em 0.54em 0;
            border-bottom: solid 1px #f2f2f2;
            box-sizing: border-box;
        }

        .p_name h3 {
            font-size: 1em;
            color: #272727;
            margin-left: 3.125em;
            line-height: 2em;
            padding: 0.54em 1em 0.54em 0;
            box-sizing: border-box;
        }

        .detail {
            width: 100%;
            height: auto;
            padding: 0.5em 1em;
            box-sizing: border-box;
            background-color: #fff;
            margin-bottom: 3px;
        }

        .detail p {
            font-size: 0.8125em;
            color: #272727;
            margin-left: 24px;
            line-height: 1.3em;
            padding: 0.54em 0;
            box-sizing: border-box;
        }

        .swiper-slide a {
            padding-top: 3px;
        }

        .kong {
            width: 10%;
            height: 100%;
            float: left;
        }

        .bottom {
            float: left;
            font-size: 14px;
            text-align: center;
            width: 80%;
        }

        .footer {
            height: 3.5em;
            margin-top: 2.5em;
            margin-bottom: 2em;
            width: 100%;
            background-color: rgb(0, 41, 80);
            line-height: 3.5em;
        }

        .footer a {
            text-decoration: none;
            color: white;
        }

        .tel {
            float: left;
            background: url('static/images/tel.png') no-repeat;
            background-size: 100% 100%;
            width: 2em;
            height: 2em;
            margin-top: 0.75em;
        }

        /*3*/
        .swiper-wrapper {
            z-index: -1;
        }

        .fp-tableCell>img {
            width: 100%;
            height: 100%;
        }

        .section {
            position: relative
        }
    </style>
</head>

<body>
<div id="gufeibai">
    <div class="section">
        <div style="clear:both; padding:10px;background-color: rgb(0,41,80);">
            <form id="qForm" name="qForm" method="post" action="">
                <input type="hidden" name="act" value="query">
                <div style="height:40px; clear:both;">
                    <input name="bianhao" type="tel" id="c" style="float:left;background-color:rgb(0,41,80);border-left-width:0px;border-top-width:0px;border-right-width:0px;border-bottom-width: 1px;border-bottom-color:rgb(255,255,255); width:80%; height:33px; font-size:16px; line-height:33px; padding-left:6px; color:#FFFFFF" value="" placeholder="請刮開塗層輸入16位防偽碼">
                    <div style="float:right; width:10%; height:33px;" onclick="compareSso()"><img src="static/picture/select_btn.png" width="33px" height="35px"> </div>
                    <!--<div style="float:right; width:25%; height:40px; font-size:16px; color:white; line-height:33px; background: #0a6ac4; border:2px solid #0a6ac4; border-radius:5px; font-weight:bold; text-align:center;" onClick="submitForm()">查 询</div>-->
                </div>
            </form>
        </div>
        <div style="height:279px; clear:both; background-color:rgb(0,41,80);">
            <!--<div style="height: 200px; background-color: yellow;">-->
            <section class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><a href="#"><img src="static/picture/zssj_lun1.png"></a></div>
                    <div class="swiper-slide"><a href="#"><img src="static/picture/zssj_lun2.png"></a></div>
                    <div class="swiper-slide"><a href="#"><img src="static/picture/zssj_lun3.png"></a></div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <div class="head">
                    <div class="img"> <img src="static/picture/zssj_logo.png"> </div>
                </div>
            </section>
        </div>
        <div style="width:100%;;margin: 0 auto; margin-top: 50px;text-align: center;">
            <img src="static/picture/logoa.png" width="120"></a>
            <div style="width:100%;;margin: 0 auto; margin-top: 10px;text-align: center;">
                <img src="static/picture/shou.png" width="30"></a>
                <div style=" margin-top:10px; line-height:25px; font-size:16px">
                    <img src="static/picture/yingguo.png" width="25" style="vertical-align:middle">
                    <a>www.lolarose.com</a>
                </div>
            </div>
            <div class="div_both"></div>
            <!-- <div class='footer'>
  <div class='kong'></div>
  <div class='bottom'> <a href='#'>干盾防伪技术支持 >>> </a> </div>-->
            <!-- <a href='tel:0592-6793823'><div class='tel'></div></a> -->
        </div>
    </div>
</div>
<script>
    var swiper = new Swiper('.swiper-container', {
        loop: true,
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false
    });
</script>
<script type="text/javascript">
    (function() {
        //common
        function tagName(tagName) {
            return document.getElementsByTagName(tagName);
        }

        function $(id) {
            return document.getElementById(id);
        }

        function addEvent(obj, type, func) {
            if (obj.addEventListener) {
                obj.addEventListener(type, func, false);
            } else if (obj.attachEvent) {
                obj.attachEvent('on' + type, func);
            }
        }
        //这里可以按照需要配置些参数
        var v = {
            eleGroup: null,
            eleTop: null,
            eleHeight: null,
            screenHeight: null,
            visibleHeight: null,
            scrollHeight: null,
            scrolloverHeight: null,
            limitHeight: null
        }
        //对数据进行初始化
        function init(element) {
            v.eleGroup = tagName(element)
            screenHeight = document.documentElement.clientHeight;
            scrolloverHeight = document.body.scrollTop;
            for (var i = 0, j = v.eleGroup.length; i < j; i++) {
                if (v.eleGroup[i].offsetTop <= screenHeight && v.eleGroup[i].getAttribute('data-url')) {
                    v.eleGroup[i].setAttribute('src', v.eleGroup[i].getAttribute('data-url'));
                    v.eleGroup[i].removeAttribute('data-url')
                }
            }
        }

        function lazyLoad() {
            if (document.body.scrollTop == 0) {
                limitHeight = document.documentElement.scrollTop + document.documentElement.clientHeight;
            } else {
                limitHeight = document.body.scrollTop + document.documentElement.clientHeight;
            }
            for (var i = 0, j = v.eleGroup.length; i < j; i++) {
                if (v.eleGroup[i].offsetTop <= limitHeight && v.eleGroup[i].getAttribute('data-url')) {
                    v.eleGroup[i].src = v.eleGroup[i].getAttribute('data-url');
                    v.eleGroup[i].removeAttribute('data-url')
                }
            }
        }
        init('img')
        addEvent(window, 'scroll', lazyLoad);
    })()
    $("input").on("blur", function() {
        setTimeout(function() {
            window.scrollTo(0, 0)
        }, 100)
    })

    $('#qForm').submit(function() {
        submitForm3();
        return false;
    })

    //
    function compareSso(){

        var a = $("#c").val();
        var code = a.replace(/\D/g,'');
        if(code.length != 16){
            alert("防偽碼格式有誤，請輸入16位防偽碼！");
        }else{
            var str = document.getElementById("c").value;
            $.ajax({
                type: "POST",
                url: <%=basePath%>+'/compareSso/compareSso.do?SSO='+str,
                data: {},
                dataType:'json',
                cache: false,
                success: function(data){
                    if(true == data.result){
                        layer.msg(code+' 恭喜您驗證成功！您購買的是LOLA ROSE正品！渠道為：香港九龍尖沙咀廣東道28號DFS免稅店，感謝您對LOLA ROSE正品的支持！', {time: 10000,icon: 1});
                    }else{
                        layer.msg('防偽碼'+code+'不存在！請謹防假冒。', {icon: 2});
                    }
                }
            });

        }
    }



</script>
</body>

</html>