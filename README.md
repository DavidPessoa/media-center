# Media Center

This project is an eazy implementation of a media center for linux distributions.
Part of the features provided come from Luctia/ezarr repository which you can check [here](https://github.com/Luctia/ezarr).


## disk-setup.sh
> :warning: **Only run `disk-setup.sh` if your plex data is stored  in a drive other than default linux instalation one**

Before running  `disk-setup.sh` you need to know the disk UUID that you want to mount.

Use `df` to find the filesystem you want to change. In my case is `/dev/sda1`.

```
df

Filesystem     1K-blocks      Used Available Use% Mounted on
tmpfs            2452388      3084   2449304   1% /run
/dev/nvme0n1p2 114276516  14945796  93479584  14% /
tmpfs           12261928         0  12261928   0% /dev/shm
tmpfs               5120         4      5116   1% /run/lock
/dev/nvme0n1p1    523248      8844    514404   2% /boot/efi
/dev/sda1      960302096 314804720 596642952  35% /nas
tmpfs            2452384        76   2452308   1% /run/user/110
```

Use `blkid <filesystem>` to get the hard drive UUID. 
```
blkid /dev/sda1

/dev/sda1: LABEL="NAS" UUID="f4f2a026-17cd-4863-b74c-d60d6700396b" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="Basic data partition" PARTUUID="2e1f9cf7-12d8-487c-bf9c-7f5bc4f0931c"
```

Once you have the UUID you can run the disk-setup script.
```
sudo ./setup.sh f4f2a026-17cd-4863-b74c-d60d6700396b
```

For more info check: 
[https://forums.plex.tv/t/using-ext-ntfs-or-other-format-drives-internal-or-external-on-linux/198544](https://forums.plex.tv/t/using-ext-ntfs-or-other-format-drives-internal-or-external-on-linux/198544)