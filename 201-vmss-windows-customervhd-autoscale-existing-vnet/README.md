### Autoscale a Linux VM Scale Set ###

支持Windows虚拟机已有镜像部署VMSS，非通用化VHD
需要指定某个已经存在的VNET及SubNet

> Linux 在操作系统内部执行
sudo waagent-deprovision

> Windows 在操作系统内部执行
sysprep.exe

Azure CLI 捕获镜像

1. azure login -e azurechinacloud -u youradmin@org.partner.onmschina.cn
2. azure account set yoursubscriptionname
3. azure vm deallocate -g yourresourcegroup -n yourvmname
4. azure vm generalize -g yourresourcegroup -n yourvmname
5. azure vm capture -g yourresourcegroup -n yourvmname -p yourvmname -t yourvmnameTemplate.json

The Autoscale rules are configured as follows
- sample for CPU (\\Processor\\PercentProcessorTime) in each VM every 1 Minute
- if the Percent Processor Time is greater than 50% for 5 Minutes, then the scale out action (add more VM instances, one at a time) is triggered
- once the scale out action is completed, the cool down period is 1 Minute


<a href="https://portal.azure.cn/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdafoyiming%2Fazure-quick-start-china%2Fmeat%2F201-vmss-windows-customerimage-autoscale-existing-vnet%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F201-vmss-ubuntu-autoscale%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
