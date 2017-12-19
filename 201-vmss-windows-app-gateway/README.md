### Windows VM Scale Set with Application Gateway Integration ###

该模板部署一套Windows VM规模集与Azure应用网关集成。

应用程序网关配置轮询调度负载平衡传入连接的端口80(网关的公共IP地址)vm的规模。
注意,这个模板不在VM上安装应用程序规模设置虚拟机,所以如果你想演示循环负载平衡、模板需要更新(例如通过添加一个扩展安装web服务器)。
这个模板支持VM规模集1000 VM,并使用Azure托管磁盘管理。

By wangruifeng 修改完成

<a href="https://portal.azure.cn/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fkaka-ruifeng%2fkaka%2fmaster%2f201-vmss-windows-app-gateway%2fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

