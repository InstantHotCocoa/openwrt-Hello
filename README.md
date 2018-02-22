# Hello - The best geeting to you
一个运行在 OpenWrt 上的软件包（算是照着网上现成的教程做了一遍）。
## 使用方法
OpenWrt 是适合于嵌入式设备（通常是智能路由器）的一个 Linux 发行版。因此软件包需要通过 `ssh` 以命令行形式在远程设备上运行。  
获得ipk后缀的安装包文件后，在终端（或命令提示符）内执行 `opkg install Hello_0.0.1-1_ramips_24kec.ipk`。  
安装完成后，输入软件包名 `Hello` 即可运行。  
你可以随时从软件包管理界面或通过执行命令 `opkg remove Hello` 来卸载此软件。
## 编译
需要从 OpenWrt 的 [SDK](https://wiki.openwrt.org/zh-cn/doc/howto/obtain.firmware.sdk) 编译
   ```bash
   # 以 ramips/mt7620 平台的 Chaos Calmer 15.05.1 发行版为例
   tar xjf OpenWrt-SDK-15.05.1-ramips-mt7620_gcc-4.8-linaro_uClibc-0.9.33.2.Linux-x86_64.tar.bz2
   cd OpenWrt-SDK-15.05.1-ramips-mt7620_gcc-4.8-linaro_uClibc-0.9.33.2.Linux-x86_64.tar.bz2
   git clone https://github.com/InstantHotCocoa/openwrt-hello.git package/Hello
   # 选择要编译的包 Default Category -> Hello
   make menuconfig
   # 开始编译
   make V=s
   ```
如果一切正常，你会在SDK目录中的 `bin/ramips/packages/base/` 目录下发现生成的 `Hello_0.0.1-1_ramips_24kec.ipk`
