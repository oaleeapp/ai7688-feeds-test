
include $(TOPDIR)/rules.mk

PKG_NAME:=futures
PKG_VERSION:=3.2.0

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:https://files.pythonhosted.org/packages/9a/66/c6a5ae4dbbaf253bd662921b805e4972451a6d214d0dc9fb3300cb642320
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/futures
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=futures
	URL:=https://pypi.org/project/futures/
	DEPENDS:=+python
endef

define Package/futures/description
	Python futures package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/futures/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,futures))
