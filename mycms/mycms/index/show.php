<?php
session_start();
include "../admin/common.php";
include "header.php";
$id=$_GET['id'];
$sql="select * from lists WHERE id={$id}";
$result=$db->query($sql);
$row=$result->fetch_assoc();

?>
<link rel="stylesheet" href="../static/css/index/show.css">
<div class="container">
    <div class="col-xs-12">
        <h2 class="s-title">
            <?php echo $row['titles']?>
        </h2>
        <div class="author">
            <span><?php echo $row['author']?> </span>
            <span> <?php echo $row['times']?></span>
        </div>
        <div class="s-con"><?php echo $row['con']?></div>
    </div>
</div>
<div class="messageBox container">
    <div class="row">
        <div class="col-xs-12 talkbox">
            <textarea id="talk" placeholder="表达你的观点，可以输入120个字符" name="message"></textarea>
            <div class="textalert"></div>
            <button id="mesbtn">发表</button>
        </div>
    </div>
    <div class="row">
        <ul class="col-xs-12 mesp">
        <?php
        $sql="select * from notes WHERE pid={$id}";
        $result=$db->query($sql);
        $array=array();
        while ($row=$result->fetch_assoc()){
            $array[]=$row;

        }

        foreach ($array as $v){
        ?>
            <li  class="mesBox">
                <?php
                $sql="select * from friend WHERE id={$v['users']}";
                $result=$db->query($sql);
                $row=$result->fetch_assoc();
                $name=isset($row['names'])?$row['names']:$row['users'];
                if ($row['portrait']==""){
                    $head="../src/img/index/2.jpg";
                }else{
                    $head=$row['portrait'];
                }
                ?>
                <div class="headimg" style="background-image:url('<?php echo $head?>') ">
                    <div class="name">
                      <?php echo $name ?>
                    </div>
                </div>
                <div class="line"></div>
                <div class="titlebox">
                    <div class="con">
                        <?php echo $v["contents"]?>
                        <div class="conbtn" value="<?php echo $row['id']?>">
                            回复
                        </div>
                    </div>
<!---->
<!--                    <div class="conlist">-->
<!--                        <div class="listhead" style="background-image: url('../upload/17-06-15/0d02087817d13d42ce2bdd65229736574.jpg');"></div>-->
<!--                        <div class="listname">asdaasd <span>16-12</span></div>-->
<!--                        <div class="listcon">asd</div>-->
<!--                    </div>-->
                </div>
            </li>
        <?php }?>
            <div class="listalert">回复成功</div>
        </ul>
    </div>
</div>
    <input type="hidden" value="<?php echo $id?>" id="cid">
    <script src="../lib/show.js"></script>
<?php include "footer.php"?>