include $(TOPDIR)/rules.mk

PKG_NAME:=aria-ng
PKG_VERSION=0.1.0
PKG_RELEASE:=1
PKG_MAINTAINER:=mayswind <i@mayswind.net>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	SUBMENU:=File Transfer
	PKGARCH:=all
	TITLE:=AriaNg, A Better Web Frontend for aria2.
	DEPENDS:=+aria2 +luci-app-aria2
endef

define Package/$(PKG_NAME)/description
    AriaNg, A Better Web Frontend for aria2.
endef

define Package/$(PKG_NAME)/postinst
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/www/aria-ng
	$(CP) ./files/* $(1)/www/aria-ng

endef

$(eval $(call BuildPackage,$(PKG_NAME)))
