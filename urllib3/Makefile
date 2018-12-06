
include $(TOPDIR)/rules.mk

PKG_NAME:=urllib3
PKG_VERSION:=1.24.1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:https://files.pythonhosted.org/packages/b1/53/37d82ab391393565f2f831b8eedbffd57db5a718216f82f1a8b4d381a1c1
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/urllib3
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=urllib3
	URL:=https://pypi.org/project/urllib3/
	DEPENDS:=+python
endef

define Package/urllib3/description
	Python urllib3 package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/urllib3/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,urllib3))
