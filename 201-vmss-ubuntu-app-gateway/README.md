### Ubuntu VM Scale Set with Application Gateway Integration ###

应用程序网关配置轮询调度负载平衡传入连接的端口80(网关的公共IP地址)vm的规模。
注意,这个模板不在VM上安装应用程序规模设置虚拟机,所以如果你想演示循环负载平衡、模板需要更新(例如通过添加一个扩展安装web服务器)。
这个模板支持VM规模集1000 VM,并使用Azure磁盘管理。

By wangruifeng 修改完成

<a href="https://portal.azure.cn/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F201-vmss-ubuntu-app-gateway%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

