<?php
session_start();
include "../admin/common.php";
if(isset($_SESSION['users'])){
    $user=$_SESSION['users'];
    $sql="select * from friend WHERE id=".$user;
    $result=$db->query($sql);
    $row=$result->fetch_assoc();
    if ($row['names']==''){
        $uname="未设置昵称";
    }else {
        $uname = $row['names'];
    }
    if ($row['tel']==""){
        $tel="未设置电话";
    }else{
        $tel=$row['tel'];
    }
    if (!$row['email']==''){
        $email=$row['email'];
    }else{
        $email="未设置邮箱";
    }
}else{
    $user="false";
};
?>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>韩笑个人博客</title>
    <link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="../static/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../static/css/index/header.css"/>
    <script type="text/javascript" src="../static/js/jquery.min.js"></script>
    <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../static/js/jquery.validate.min.js"></script>
    <script src="../static/js/heade.js"></script>
</head>
<body>
<div id="alert">登录成功</div>
<input type="hidden" value="<?php echo $user?>" id="user">
<!--顶部开始-->
<div class="container-fluid top" >
    <div class="container nopad" >
        <div class="header col-xs-12" >
            <div class="logoBox nopad col-sm-3 col-xs-4 " >
                <div class="logo ">
                    <img src="../src/img/index/head.jpg" class="logoImg" />
                </div>
            </div>
            <div class="loginBox" con="con">
                <section class="login" con="con">
                    <?php if(isset($_SESSION['users'])){$display="block";$display2="none";}else{$display="none";$display2="block";};?>
                    <div class="titulo" id="loa" con="con" style="display: <?php echo $display2?>">登录</div>
                    <form  method="post" con="con" id="loginform" style="display: <?php echo $display2?>">
                        <input type="text" id="zhanghao" autocomplete="off"  con="con" title="Username required" placeholder="用户名" data-icon="U" name="user">
                        <input type="password" id="mima" con="con"  title="Password required" placeholder="密码" data-icon="x" name="password">
                        <div class="olvido" con="con">
                            <div class="col" con="con"><div con="con" class="sign">注册</div></div>
<!--<div class="col"><a href="" title="Recuperar Password">忘记密码？</a></div>-->
                        </div>
                        <input class="enviar loadBtn" con="con" value="登录" type="submit">
                    </form>
                    <div class="titulo" id="welcome"  con="con" style="display: <?php echo $display?>"><?php echo $uname; ?></div>
                    <div class="personal"  con="con" style="display: <?php echo $display?>">
                        <h2  con="con"><a con="con"  href="personal.php" target="_blank">个人中心</a></h2>
                        <p con="con" tel><?php echo $tel?></p>
                        <p con="con" email><?php echo $email?></p>
                        <p con="con" message>站内信(暂未开通)</p>
                        <p con="con" class="out">退出登录</p>
                    </div>
                </section>
                <section class="login none" con="con" style="height:305px;">
                    <div class="titulo" con="con">注册</div>
                    <form  action="" method="post" con="con" id="signform" style="text-align: center">
                        <input type="text" id="account" autocomplete="off" con="con" required title="Username required" placeholder="用户名" data-icon="U" name="sinName" >
                        <input type="password" con="con" required title="Password required" placeholder="密码" data-icon="x" name="sinPass" id="password">
                        <input type="password" con="con" required title="Password required" placeholder="再次输入密码" data-icon="x" name="againPass">
<!--                        <input type="text" name="check" con="con" required placeholder="验证码">-->
<!--                        <img con="con" src="../admin/check2.php" style="width: 120px" height="40px" onclick="this.src='../admin/check2.php?abc='+Math.random()" class="img"><br>-->
                        <div class="olvido" con="con">
                            <div class="col" con="con"><div class="sign" con="con">已有账号?请登录</div></div>
                            <div class="col" con="con"><a href="#" title="Recuperar Password"></a></div>
                        </div>
                        <input class="enviar signBtn" con="con" value="注册" type="submit">
                    </form>
                </section>
            </div>
            <!--大屏顶部-->
            <ul class="navBox col-sm-9  hidden-xs col-md-7 col-md-offset-2">
                <li class="catgory">
                    <a href="index.php">首页<span></span></a>
                </li>
                <?php
                $sql="select * from tables WHERE pid=0";
                $result=$db->query($sql);
                while($row=$result->fetch_assoc()){
                    ?>
                    <li class="catgory" >
                        <a href="lists.php?id=<?php echo $row['id'];?>"><?php echo $row['tablename'];?><span></span></a>
                    </li>
                <?php }?>
            </ul>
            <!--小屏顶部-->
            <div class="s-navBox hidden-lg hidden-md hidden-sm col-xs-2 col-xs-offset-6">
                <span class="glyphicon glyphicon-list"></span>
            </div>
        </div>
    </div>
</div>
<div class="s-listsBox hidden-sm hidden-md hidden-lg col-xs-12">
    <ul>
        <li>
            <a href="index.php">首页</a>
        </li>
        <?php
        $sql2="select * from tables WHERE pid=0";
        $result2=$db->query($sql2);
        while($row2=$result2->fetch_assoc()){
            ?>
            <li>
                <a href="lists.php?id=<?php echo $row2['id']?>"><?php echo $row2["tablename"]?></a>
            </li>
        <?php }?>
    </ul>
</div>
<!--顶部结束-->