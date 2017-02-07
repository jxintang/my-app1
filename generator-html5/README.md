## yeoman

* 使用yeoman是当做脚手架来用的，通过指定的命令来完成简单重复的一些功能以及组件化

### 安装

* npm install -g yo
* git clone xxx.git


### 已有的命令

* yo html5 add-router 添加路由的命令，同时会生成路由文件[name]/index.js、模板文件[name]/index.tpl(app/templates/index.tpl的拷贝)、静态文件(js)、测试文件([name].test.js)
* yo html5 remove-router // 删除路由，删除添加路由时生成的所有文件，谨慎使用！


其中html5为generator-name中的name

### TODO

* yo html5 add-component
* yo html5 remove-component
* yo html5 init


### 目前存在的问题

* 如何共享基础的项目（当成工具，然后通过该工具生成新项目）
* 建议把所有的种子项目放到远程，使用工具将远程种子下载并初始化新项目

## mocha

### 安装
npm install --global mocha

* 在项目根目录下test里面是所有的测试文件
* 没有return的语句如何测试
* 流程如何测试
* http://www.ruanyifeng.com/blog/2015/12/a-mocha-tutorial-of-examples.html

## eslint

### 安装

* SwitchCase是什么意思
