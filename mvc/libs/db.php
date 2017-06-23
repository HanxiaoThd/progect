<?php
/**
 * Created by PhpStorm.
 * User: hanxiao
 * Date: 2017/6/22
 * Time: 下午6:42
 */
if(!COMMING){
    exit();
};
class db{
    private $host;
    private $user;
    private $pass;
    private $database;
    private $port;
    private $db;
    function __construct(){
        $config=include ROOT_PATH."/config.php";
        $this->host=$config['database']['host'];
        $this->user=$config['database']['user'];
        $this->pass=$config['database']['pass'];
        $this->database=$config['database']['database'];
        $this->port=$config['database']['port'];
        $this->db=new mysqli($this->host,$this->user,$this->pass,$this->database,$this->port);
        if (!$this->db){
            echo mysqli_connect_error();
            exit();
        }
        $this->db->query("set names utf8");
        $this->opts["field"]="*";
    }
    function select($table,$params="*"){
        $this->opts["field"]=$params;
        $this->table=$table;
        $this->sql="select ".$this->opts["field"]." from ".$this->table." ".$this->opts["where"]." ".$this->opts["order"]." ".$this->opts["limit"];
        $result=$this->db->query($this->sql);
        $array=array();
        while ($row=$result->fetch_assoc()){
            $array[]=$row;
        }
        return $array;
    }
    //查询字段
    function setField($params="*"){
        $this->opts["field"]=$params;
        return $this;
    }
    //查询条件
    function where($params){
        $this->opts["where"]=" WHERE ".$params;
        return $this;
    }
    //排序规则
    function oder($params){
        $this->opts["order"]=" ORDER BY ".$params;
        return $this;
    }
    //查询数量
    function limit($params){
        $this->opts["limit"]=" LIMIT ".$params;
        return $this;
    }
    //删除
    function del($params="",$table=""){
        if(!empty($params)) {
            $this->opts["where"]=$params;
            $this->table=$table;
            $sql = "delete from " . $this->table . " " . $this->opts["where"];
            $result = $this->db->query($sql);
            return $this->db->affected_rows();
        }else{
            echo "请填写参数";
        }
    }
    //修改
    function update(){
        //字段 zhanghao=lisi,mima=123123
    }
    //增加
    function insert(){
        //insert into
    }
}