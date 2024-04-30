esxi磁盘扩容

fdisk -l
fdisk /dev/sda #创建出来分区

pvcreate /dev/sda4 #创建pv
pvs

vgs
vgextent vg-name /dev/sda4
vgs

lvs
lvextend /dev/mapper/ubuntu--vg-ubuntu--lv /dev/sda4


resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv
