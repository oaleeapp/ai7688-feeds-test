#### Compilation notes for Openwrt 15.05.1

- `sudo apt-get install git g++ make libncurses5-dev subversion libssl-dev gawk libxml-parser-perl unzip wget python xz-utils`

- `git clone https://github.com/openwrt/chaos_calmer.git openwrt`

- `cd openwrt && cp feeds.conf.default feeds.conf && echo src-git linkit https://github.com/NuxNuxLi/linkit-smart-EK-7688AMx-feed.git >> feeds.conf`

  - If `./scripts/feeds update -a` commands don't work, try using linkit's feed first and then change it to NuxNuxLi.
  - Rename `/feeds/linkit/mtk-sdk-wifi/wifi-binary/mt_wifi.ko_3.18.91` to `mt_wifi.ko_3.18.109`

*Change the git repository to the relevant one*

- `./scripts/feeds update -a`

- `./scripts/feeds install -a`

- `make menuconfig`

```
Select the options as below:
Target System: Ralink RT288x/RT3xxx
Subtarget: MT7688 based boards
Target Profile: LinkIt7688

# IMPORTANT: Disable the following (hit spacebar to cycle through options):
# + Global build settings->Compile with support for patented functionality
# + Libraries->IoT->libupm
# + Libraries->libmraa

Save and exit (use the default config file name without changing it)
```

- `make V=s -j8` (8 is the number of CPU cores)
