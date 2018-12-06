
include $(TOPDIR)/rules.mk

PKG_NAME:=six
PKG_VERSION:=3.2.0

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/six
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=six
	URL:=https://pypi.org/project/six/
	DEPENDS:=+python
endef

define Package/six/description
	Python six package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/six/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,six))
