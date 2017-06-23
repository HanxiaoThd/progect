
$('#mesbtn').click(function () {
    var user=$("#user").val();
    var cid=$("#cid").val();
    if(user=='false'){
        $(".textalert").html("请登陆").stop().fadeIn().delay(500).fadeOut();
        return;
    }
    var text=$("#talk").val();
    if (!text=="") {
        var js={"text":text,"id":user,"cid":cid};
        $.ajax({
            type: "post",
            url: "message.php",
            dataType: "json",
            data: js,
            success: function (e) {
                $(".textalert").html("回复成功").fadeIn().delay(500).fadeOut();
                $("#talk").val("");
                var box=$("<li class='mesBox'>");
                var head = $("<div class='headimg'>");
                var img=e[0][portrait];
                if(e[0][portrait]=="") {
                    img=" ../src/img/index/2.jpg";
                }
                var name=e[0][names]==""?e[0][user]:e[0][names];
                head.css("background-image",img).append($("<div class='name'>").html(name));
            },
            error: function (e) {
                $(".textalert").html("回复失败").fadeIn().delay(500).fadeOut();
                console.log(e);

            }
        });
    }else {
        $(".textalert").html("请写内容").fadeIn().delay(500).fadeOut();

    }

})
$('.conbtn').click(function () {
    var user=$("#user").val();
    var cid=$("#cid").val();
    var uid=$(this).attr("value");
    var parent=$(this).parents(".titlebox");
    var con=$(this).parents(".con");
    if(user=='false'){
        $(".listalert").html("请登陆").fadeIn().delay(500).fadeOut();
        return;
    }
    if(!$("#listinput")[0]){
        $('<input type="text" name="listcon" id="listinput">').appendTo(con ).focus().blur(function () {
            var val=$(this).val();
            if (!val==""){
                $.ajax({
                    url:"mesadd.php",
                    dataType:"json",
                    data:"mescon:"+val,
                    success:function (res) {
                        $(".listalert").html("回复成功").stop().fadeIn().delay(500).fadeOut(500);
                        var conbox=$("<div class='conlist'>");
                        var conhead=$("<div class='listhead'>");
                        var conname=$("<div class='listname'>");
                        var time=$("<span>").html('12-12');
                        var listcon=$("<div class='listcon'>");
                        listcon.html("asdasd");
                        conname.append(time);
                        conbox.append(conhead).append(conname).append(listcon).appendTo(parent);
                    },
                    error:function () {
                        $(".listalert").html("回复失败").stop().fadeIn().delay(500).fadeOut(500);

                    },
                })
            }
            $(this).remove();
        });
    }
})