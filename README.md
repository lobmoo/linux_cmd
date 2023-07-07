# linux_cmd
这是一个基于c语言的Linux系统下自定义命令的框架，使用者只需要早c文件添加自己的命令就可以。

通信依赖于本地socket

目录树说明：
app_cmd_list.h   ----自定义命令头文件
app_cmd_client.c    -----自定义命令客户端进程
build.sh            -----一件部署脚本
Makefile            -----makefile文件，支持客户端进程和服务端分开编译
main.c              -----程序入口
build_list.py       -----py脚本，用于转化cmd_list.h的命令为软连接命令
app_sys_cmd.h       -----自定义命令函数头
app_cmd.h           -----服务端头文件
app_sys_cmd.c       -----自定义命令函数实现
app_cmd_server.c    -----服务端进程      




拉下来后 请以管理员权限执行 sudo ./build.sh
然后会生成响应的测试命令
demo中给出的是app_test 直接 build完后就可以  sudo app_test 测试






