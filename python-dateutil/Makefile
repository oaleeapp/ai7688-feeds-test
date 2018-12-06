
include $(TOPDIR)/rules.mk

PKG_NAME:=python-dateutil
PKG_VERSION:=2.7.5

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:https://files.pythonhosted.org/packages/0e/01/68747933e8d12263d41ce08119620d9a7e5eb72c876a3442257f74490da0
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/python-dateutil
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=python-dateutil
	URL:=https://pypi.org/project/python-dateutil/
	DEPENDS:=+python
endef

define Package/python-dateutil/description
	Python python-dateutil package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/python-dateutil/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,python-dateutil))
