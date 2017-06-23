<?php
/**
 * Created by PhpStorm.
 * User: hanxiao
 * Date: 2017/6/22
 * Time: 下午3:41
 */
header("content-type:text/html,charset=utf-8");
//定义进入指令
define("COMMING","OK");
$server=$_SERVER;
$http=substr($server["SERVER_PROTOCOL"],0,strpos($server["SERVER_PROTOCOL"],"/"));//获取http协议 SERVER_PROTOCOL
$server["HTTP_HOST"];//获取域名 HTTP_HOST  服务器路径
define("REQUEST_URL",substr($server["REQUEST_URI"],0,strrpos($server["REQUEST_URI"],"/")));//REQUEST_URI 项目路径
define("HOST_PATH",$http."://".$server["HTTP_HOST"].REQUEST_URL);
//根目录
define("ROOT_PATH",$server["DOCUMENT_ROOT"].REQUEST_URL);
//模块目录
define("MODULE_PATH",$server["DOCUMENT_ROOT"].REQUEST_URL."/module");
//引擎文件
define("LIBS_PATH",$server["DOCUMENT_ROOT"].REQUEST_URL."/libs/");
//模版目录
define("TEM_PATH",$server["DOCUMENT_ROOT"].REQUEST_URL."/template／");
//css／js/img路径
define("CSS_PATH",ROOT_PATH."/static/css");
define("JS_PATH",ROOT_PATH."/static/js");
define("IMG_PATH",ROOT_PATH."/static/img");
include LIBS_PATH."function.class.php";
include LIBS_PATH."route.php";
include_once LIBS_PATH."db.php";
//include_once LIBS_PATH."smarty.class.php";
include_once LIBS_PATH."smarty/Smarty.class.php";
$obj=new route();
$obj->getInfo();