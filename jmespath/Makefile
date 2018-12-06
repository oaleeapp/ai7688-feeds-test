
include $(TOPDIR)/rules.mk

PKG_NAME:=jmespath
PKG_VERSION:=0.9.3

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:https://files.pythonhosted.org/packages/e5/21/795b7549397735e911b032f255cff5fb0de58f96da794274660bca4f58ef
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/jmespath
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=jmespath
	URL:=https://pypi.org/project/jmespath/
	DEPENDS:=+python
endef

define Package/jmespath/description
	Python jmespath package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/jmespath/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,jmespath))
