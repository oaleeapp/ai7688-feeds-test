
include $(TOPDIR)/rules.mk

PKG_NAME:=botocore
PKG_VERSION:=1.12.60

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/ec/52/992d721d2dab6e0b6ce1a92b892ca75d48e4200de7adc7af0eb65a3141ae
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/botocore
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=botocore
	URL:=https://pypi.org/project/botocore/
	DEPENDS:=+python
endef

define Package/botocore/description
	Python botocore package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/botocore/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,botocore))
