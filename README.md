# 自动更新端口映射公网ip地址

可以绑定在PPP的Profile里面，每次PPPoE重新拨号都会执行脚本

在NAT中对应端口映射规则中，加上Comment，并在里面包含`OUT`字眼即可
脚本会匹配里面包含`OUT`的NAT规则，并自动替换里面的ip地址

