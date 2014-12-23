#设置GOPATH脚本
将当前目录设置为GOPATH环境变量

##配置方法
个人环境：ohmyzsh

赋予脚本执行权限

    chmod +x exec.sh

将exec.sh拷贝到指定目录， 例如：

    cp exec.sh ~/Docunments/runScript

编辑ohmyzsh配置文件

    nano ~/.zshrc

在配置文件最后添加命令：

    alias setgo="source ~/Documents/runScript/exec.sh"

配置完成，在任意目录执行即可将当前环境变量添加$GOPATH