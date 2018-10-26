include $(TOPDIR)/rules.mk

PKG_NAME:=oya-linkit
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/oya-linkit
  TITLE:=MTK LinkIt Smart board Oya package
  HIDDEN:=1
  DEPENDS:=@TARGET_ramips_mt7688_LinkIt7688 \
  	+gdbserver +curl +strace +coreutils +coreutils-stty \
  	+avahi-nodbus-daemon +mountd +mjpg-streamer \
	+uhttpd +rpcd +rpcd-mod-iwinfo +git +git-http +samba36-server \
	+python +python-pyserial +python-pip +hidapi \
	+libmraa +libupm +node +node-hid +node-cylon-firmata +yunbridge \
	+luci +luci-theme-openwrt +luci-app-mjpg-streamer +luci-app-samba +luci-lib-json \
	+rpcd-mod-rpcsys +cgi-io +avrdude +spi-tools +uboot-envtools \
	+kmod-fs-vfat +kmod-fs-exfat +kmod-i2c-core +kmod-i2c-ralink \
	+kmod-nls-base +kmod-nls-cp437 +kmod-nls-iso8859-1 \
	+kmod-nls-iso8859-15 +kmod-nls-iso8859-2 +kmod-nls-utf8 \
	+kmod-sdhci-mt7620 +kmod-usb-storage \
	+kmod-video-core +kmod-video-uvc \
	+kmod-sound-core +kmod-sound-mtk +madplay-alsa +alsa-utils \
 	+mtk-sdk-wifi +tcpdump-mini

  CATEGORY:=Base system
  DEFAULT:=y
endef

define Build/Prepare
				true
endef

define Build/Compile
        true
endef

define Package/oya-linkit/install
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,oya-linkit))
