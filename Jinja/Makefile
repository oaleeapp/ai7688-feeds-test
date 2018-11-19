
include $(TOPDIR)/rules.mk

PKG_NAME:=Jinja
PKG_VERSION:=1.2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/df/50/70f41c599cf0ace6c554b07108916513c70d0e950b0abb18c27a865df7a2
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/Jinja
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=Jinja
	URL:=https://pypi.org/project/Jinja/
	DEPENDS:=+python
endef

define Package/Jinja/description
	Python packge for Jinja.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/Jinja/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,Jinja))
