# Install Azure File Storage Volume Driver

Script for install on Ubuntu 14.04 or lower (upstart)
https://github.com/Azure/azurefile-dockervolumedriver/blob/master/contrib/init/upstart/README.md

```shell

    sudo -s

    wget -qO/usr/bin/azurefile-dockervolumedriver https://github.com/Azure/azurefile-dockervolumedriver/releases/download/v0.5.1/azurefile-dockervolumedriver

    chmod +x /usr/bin/azurefile-dockervolumedriver

    wget https://raw.githubusercontent.com/Azure/azurefile-dockervolumedriver/master/contrib/init/upstart/azurefile-dockervolumedriver.default

    wget https://raw.githubusercontent.com/Azure/azurefile-dockervolumedriver/master/contrib/init/upstart/azurefile-dockervolumedriver.conf

    cp azurefile-dockervolumedriver.conf /etc/init/azurefile-dockervolumedriver.conf
    cp azurefile-dockervolumedriver.default /etc/default/azurefile-dockervolumedriver

    vim /etc/default/azurefile-dockervolumedriver

    AF_ACCOUNT_NAME={account name}
    AF_ACCOUNT_KEY={account key}


    initctl reload-configuration
    initctl start azurefile-dockervolumedriver
    initctl status azurefile-dockervolumedriver

    docker volume create -d azurefile -o share=myshare --name=myvol
    docker run -i -t -v myvol:/data busybox

```





