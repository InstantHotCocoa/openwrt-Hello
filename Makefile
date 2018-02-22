include $(TOPDIR)/rules.mk

PKG_NAME:=Hello
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/Hello
	CATEGORY:=Default Category
	TITLE:=Hello Title
endef

define Package/Hello/description
	If you can't figure out what this program does, you're probably
	brain-dead and need immediate medical attention.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/Hello/install
	$(INSTALL_DIR) $(1)/usr/bin  
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/Hello $(1)/usr/bin/  
endef

$(eval $(call BuildPackage,Hello))
