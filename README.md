gulp-append-ver
====
##安装
1、运行node-v5.7.0-x64.msi文件，安装nodejs  
2、运行install.bat下载gulp，国内需翻墙  
3、gulp安装完成后，目录下会多出一个node_modules文件夹，将原有node_modules_modify文件夹内容拷贝进去覆盖

##使用
打开gulpfile.js文件，将config对象的src属性改成实际web项目路径即可，之后双击run.bat运行  
如果不想在项目源文件上追加版本号，可以在web网站目录下，新建一个文件夹，将页面文件(aspx,jsp,html等)拷贝进去，并设置config对象的page属性值为新文件夹相对路径。  
eg.在web根目录上，创建一个名为dist的文件夹，那么config.page="dist/"  

效果：在指定(config.resource)的静态文件名后面，添加v=hash版本号，会自动覆盖旧版本号，并且保留现有url参数  
eg:  
&lt;script src="js.js"></script>           ==>  &lt;script src="js.js?v=3dr88c"></script>  
&lt;script src="js.js?v=3dd88x"></script>  ==>  &lt;script src="js.js?v=3dr88c"></script>  
&lt;script src="js.js?a=1&b=2"></script>   ==>  &lt;script src="js.js?a=1&b=2&v=3dr88c"></script>

这工具说到底，是基于gulp写的，但是gulp-revCollector的原有参数，并不支持，能力有限，哈哈^^^后面如果支持了，再发布上来分享

###参考资料
这项目，我是从https://github.com/front-end-build/cache-handler 项目下载下来修改的，原本想当成一个分支提交上去，但是想想，这玩意儿已经被改的面目全非了，干脆就另外建一个项目吧！
另外， http://www.cnblogs.com/chenchenghua/p/5956938.html?hmsr=toutiao.io&utm_medium=toutiao.io&utm_source=toutiao.io 这篇文章，也给了我很大帮助。
