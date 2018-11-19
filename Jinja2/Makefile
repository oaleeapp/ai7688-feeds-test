
include $(TOPDIR)/rules.mk

PKG_NAME:=Jinja2
PKG_VERSION:=2.10

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/Jinja2
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=Jinja2
	URL:=https://pypi.org/project/Jinja2/
	DEPENDS:=+python
endef

define Package/Jinja2/description
	Python packge for Jinja2.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/Jinja2/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,Jinja2))
