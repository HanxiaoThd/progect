<?php
if(!COMMING){
    exit();
}
class Smarty{
    public $compile="compile";
    public $template="template";
    function setCompileDir($dir){
        $this->compile=$dir;
        if (!is_dir($this->compile)){
            mkdir($this->compile);
            return $this;
        }
    }
    function setTemplateDir($dir){
        $this->template=$dir;
        if (!is_dir($this->template)){
            mkdir($this->template);
            return $this;
        }
    }
    function display(){
        //展示
        include $this->template."/index.html";

    }
    function assign(){
        //插入
    }
}