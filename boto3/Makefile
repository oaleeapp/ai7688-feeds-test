
include $(TOPDIR)/rules.mk

PKG_NAME:=boto3
PKG_VERSION:=1.9.60

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:https://files.pythonhosted.org/packages/fe/ea/3f0dedaf1b733908a171c2aa24d322ad18c1aee171afff88a7b9e843d845
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/boto3
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=boto3
	URL:=https://pypi.org/project/boto3/
	DEPENDS:=+python
endef

define Package/boto3/description
	Python boto3 package.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/boto3/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,boto3))
