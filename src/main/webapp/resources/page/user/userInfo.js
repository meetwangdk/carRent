var form, $,areaData,custname,identity,realname,sex,phone,address,career;
layui.config({
    base : "../../js/"
}).extend({
    "address" : "address"
})


layui.use(['form','layer','upload','laydate',"address"],function(){
    form = layui.form;
    $ = layui.jquery;
    $.ajax({
        url:"",
        type:"post",
        data:{

        }
    })

    $(document).ready(function(){
        $.ajax({
            url:"/session/getSession.action",
            type:"get",
            async:false,
            success:function (data) {
                // console.log(data)
                identity = data.identity;
                custname = data.loginname;
                realname = data.realname;
                sex = data.sex;
                phone = data.phone;
                address = data.address;
                //career = data.career;
                $("#identity").val(identity);
                $("#realname").val(realname);
                $("#sex").val(sex);
                $("#phone").val(phone);
                $("#address").val(address);
                // $("career").val(career);
            }
        })


        $.ajax({
            url:"/customer/getCareer.action",
            type:"get",
            async:false,
            data:{
                "identity":identity
            },
            success:function (data) {
                $("#career").val(data.toString());
            }
        })
    })

    var layer = parent.layer === undefined ? layui.layer : top.layer,
        upload = layui.upload,
        laydate = layui.laydate,
        address = layui.address;

    //上传头像
    upload.render({
        elem: '.userFaceBtn',
        url: '../../json/userface.json',
        method : "get",  //此处是为了演示之用，实际使用中请将此删除，默认用post方式提交
        done: function(res, index, upload){
            var num = parseInt(4*Math.random());  //生成0-4的随机数，随机显示一个头像信息
            $('#userFace').attr('src',res.data[num].src);
            window.sessionStorage.setItem('userFace',res.data[num].src);
        }
    });
    //获取省信息
    address.provinces();

    //提交个人资料
    $('#changeCustomer').on("click",function(data){
        let phoneReg = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
        if ($("#realname").val() == null | $("#realname").val() == ""){
            layer.msg('真实姓名不能为空');
            return ;
        }else if($("#address").val() == null | $("#address").val() == ""){
            layer.msg('地址不能为空');
            return ;
        }else if($("#career").val() == null | $("#career").val() == ""){
            layer.msg('职业不能为空');
            return ;
        }else if (!phoneReg.test($("#phone").val())|$("#phone").val() == ""){
            layer.msg('电话格式输入有误');
            return ;
        }
        $.ajax({
            url:"/customer/updateCustomerMassage.action",
            type:"post",
            dataType:"json",
            sync:false,
            data:{
                'identity' : $("#identity").val(),
                'realname' : $("#realname").val(),
                'sex' : $("#sex").val(),
                'phone' : $("#phone").val(),
                'address' : $("#address").val(),
                'career' : $("#career").val(),
            },
            success:function (massage){
                layer.msg('提交中，请稍候',{icon: 16,time:800,shade:0.8});
                setTimeout(function (){
                    layer.msg(massage.msg)
                },800)

            }
        })
    })

    //修改密码
   /* form.on("submit(changePwd)",function(data){
        var index = layer.msg('提交中，请稍候',{icon: 16,time:false,shade:0.8});
        setTimeout(function(){
            layer.close(index);
            layer.msg("密码修改成功！");
            $(".pwd").val('');
        },2000);
        return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
    })*/
})