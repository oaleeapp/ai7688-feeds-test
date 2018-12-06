
include $(TOPDIR)/rules.mk

PKG_NAME:=s3transfer
PKG_VERSION:=1.12.60

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/9a/66/c6a5ae4dbbaf253bd662921b805e4972451a6d214d0dc9fb3300cb642320
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/s3transfer
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=s3transfer
	URL:=https://pypi.org/project/s3transfer/
	DEPENDS:=+python
endef

define Package/s3transfer/description
	Python s3transfer package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/s3transfer/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,s3transfer))
