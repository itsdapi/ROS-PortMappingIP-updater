# pppoe-out1 改成自己的pppoe网口

:global addold
:global addnew

:set addnew [/interface get [/interface find name="pppoe-out1"] running]
:if ($addnew=true) do={
    :set addold [/ip address get [/ip address find dynamic=yes interface="pppoe-out1"] address]
    :set addold [:pick $addold 0 ([:len $addold ] -3)]
    /ip firewall nat set [/ip firewall nat find comment~"OUT"] dst-address=$addold
}
