
include $(TOPDIR)/rules.mk

PKG_NAME:=oya_python_awsiot
PKG_VERSION:=0.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/99/b4/1800cb341997722be033090ad8621d5418730eaa644c3cd5fec44fb2329e/AWSIoTPythonSDK-1.4.0.tar.gz
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/oya_python_awsiot
	SECTION:=Python
	CATEGORY:=Oya
	TITLE:=oya_python_awsiot
	URL:=https://pypi.org/project/AWSIoTPythonSDK/
	DEPENDS:=+python
endef

define Package/oya_python_awsiot/description
	Python packge for AWS IoT SDK.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/oya_python_awsiot/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)/
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)/
endef

$(eval $(call BuildPackage,oya_python_awsiot))
