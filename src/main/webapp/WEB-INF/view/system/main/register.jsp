<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="registerHtml">
<head>
    <meta charset="utf-8">
    <title>注册-婚庆用车注册服务平台</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="${alfred}/resources/favicon.ico">
    <link rel="stylesheet" href="${alfred}/resources/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="${alfred}/resources/css/public.css" media="all" />
    <style>
        #loginFrm{
            height: auto;
        }
    </style>
</head>
<body class="loginBody">
<br><br>
<h1 align="center"  style="color:#863961 ; font-size: 50px">用户注册</h1>
<br><br>
<form class="layui-form" id="loginFrm">
    <div style="color: red "  ></div>
    <div class="login_face"><img src="${alfred}/resources/images/face.jpg" class="userAvatar"></div>
    <div class="layui-form-item input-item">
        <label for="identity">身份证号</label>
        <input type="text" placeholder="请输入身份证号码" autocomplete="off" name="identity" id="identity" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label >真实姓名</label>
        <input type="text" placeholder="请输入真实姓名" autocomplete="off" name="realname" id="realname" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="custname">用户名</label>
        <input type="text" placeholder="请输入用户名" autocomplete="off" name="custname" id="custname" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="custvalue">密码</label>
        <input type="password" placeholder="请输入密码" autocomplete="off" name="custvalue" id="custvalue" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="reCustvalue">再次输入密码</label>
        <input type="password" placeholder="请再次输入密码" autocomplete="off" name="custvalue" id="reCustvalue" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label class="layui-form-label"></label>
        <div class="layui-input-inline">
            <input type="radio" name="sex"  value="1" checked="checked" title="男">
            <input type="radio" name="sex"  value="0" title="女">
        </div>
    </div>
    <div class="layui-form-item input-item">
        <label for="address">地址</label>
        <input type="text" placeholder="请输入地址" autocomplete="off" name="address" id="address" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="phone">电话</label>
        <input type="text" placeholder="请输入电话" lay-verify="required|phone" autocomplete="off" name="phone" id="phone" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="career">职业</label>
        <input type="text" placeholder="请输客户职业" autocomplete="off" name="career" id="career" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item">
        <span class="layui-btn layui-block" id="register">注册</span>
    </div>

    <div class="layui-form-item layui-row" style="text-align: center;color: red;">
        ${error}
    </div>
</form>
<script type="text/javascript" src="${alfred}/resources/layui/layui.js"></script>
<script type="text/javascript" src="${alfred}/resources/js/cache.js"></script>
<script type="text/javascript">
    layui.use(['form','layer','jquery'],function(){
        var form = layui.form,
            layer = parent.layer === undefined ? layui.layer : top.layer
        $ = layui.jquery;
        $(".loginBody .input-item").click(function(e){
            e.stopPropagation();
            $(this).addClass("layui-input-focus").find(".layui-input").focus();
        })
        $(".loginBody .layui-form-item .layui-input").focus(function(){
            $(this).parent().addClass("layui-input-focus");
        })
        $(".loginBody .layui-form-item .layui-input").blur(function(){
            $(this).parent().removeClass("layui-input-focus");
            if($(this).val() != ''){
                $(this).parent().addClass("layui-input-active");
            }else{
                $(this).parent().removeClass("layui-input-active");
            }
        })

        $("#register").click(function () {
            let identityReg = /^\d+$/g;
            let phoneReg = /^\d+$/g;
            if(!identityReg.test($("#identity").val())){
                layer.msg('身份证号格式不正确');
                return ;
            }else if ($("#realname").val()==""){
                layer.msg("用户真实姓名不能为空")
                return;
            }else if ($("#custvalue").val()==""|$("#reCustvalue").val()==""|$("#custname").val()==""){
                layer.msg("用户名、密码以及确认密码均不能为空")
                return;
            }
            else if ($("#custvalue").val() != $("#reCustvalue").val()){
                layer.msg("两次输入密码不一致")
                return;
            }else if (!phoneReg.test($("#phone").val())|$("#phone").val() == ""){
                layer.msg('电话输入有误');
                return ;
            }else if ($("#address").val()==""){
                layer.msg("地址不能为空")
                return;
            }

            $.ajax({
                url:"registerCust.action",
                type:"post",
                data:{
                    identity:$("#identity").val(),
                    realname:$("#realname").val(),
                    custname:$("#custname").val(),
                    custvalue:$("#custvalue").val(),
                    sex:$("input[name='sex']:checked").val(),
                    address:$("#address").val(),
                    phone:$("#phone").val(),
                    career:$("#career").val()
                },
                dataType:"json",
                success:function (date) {
                    console.log(date)
                     if(date.code == 0){
                         layer.msg("注册成功");
                        setTimeout(function () {
                            window.location.href="/"
                        },2000)
                     }else {
                         layer.msg("注册失败")
                     }
                }
            })
        })
    })

</script>
</body>
</html>
