
include $(TOPDIR)/rules.mk

PKG_NAME:=Werkzeug
PKG_VERSION:=0.14.1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/9f/08/a3bb1c045ec602dc680906fc0261c267bed6b3bb4609430aff92c3888ec8
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/Werkzeug
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=Werkzeug
	URL:=https://pypi.org/project/Werkzeug/
	DEPENDS:=+python
endef

define Package/Werkzeug/description
	Python Werkzeug package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/Werkzeug/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,Werkzeug))
