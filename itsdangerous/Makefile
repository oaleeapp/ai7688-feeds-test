
include $(TOPDIR)/rules.mk

PKG_NAME:=itsdangerous
PKG_VERSION:=1.1.0

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/68/1a/f27de07a8a304ad5fa817bbe383d1238ac4396da447fa11ed937039fa04b
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/itsdangerous
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=itsdangerous
	URL:=https://pypi.org/project/itsdangerous/
	DEPENDS:=+python
endef

define Package/itsdangerous/description
	Python packge for itsdangerous.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/itsdangerous/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,itsdangerous))
