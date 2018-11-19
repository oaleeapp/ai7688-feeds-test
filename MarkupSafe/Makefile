
include $(TOPDIR)/rules.mk

PKG_NAME:=MarkupSafe
PKG_VERSION:=1.1.0

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/ac/7e/1b4c2e05809a4414ebce0892fe1e32c14ace86ca7d50c70f00979ca9b3a3
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/MarkupSafe
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=MarkupSafe
	URL:=https://pypi.org/project/MarkupSafe/
	DEPENDS:=+python
endef

define Package/MarkupSafe/description
	Python packge for MarkupSafe.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/MarkupSafe/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,MarkupSafe))
