1. git clone 复制代码
2. .vimrc .vim vimaux放到用户根目录下
3. 进入vimaux/ctags目录，执行./configure，然后make生成ctags
4. 进入vimaux/ncurse目录，执行./configure --prefix=当前目录，然后make和make install(cscope依赖ncurse)
5. 进入vimaux/cscope目录，执行./configure --help查看如何引用ncurse，生成makefile，然后make
6. 打开.vimrc，设置ctags和cscope引用位置

.vimrc配置了F1-F12的快捷键
