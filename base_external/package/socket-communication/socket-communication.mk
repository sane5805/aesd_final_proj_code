
##############################################################
#
# SOCKET-COMMUNICATION
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SOCKET_COMMUNICATION_VERSION = 8a83a323e7e70bba147364dc9541afca8834318b
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOCKET_COMMUNICATION_SITE = git@github.com:sane5805/final-project-aesd-utils.git
SOCKET_COMMUNICATION_SITE_METHOD = git
SOCKET_COMMUNICATION_GIT_SUBMODULES = YES

define SOCKET_COMMUNICATION_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server-socket all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOCKET_COMMUNICATION_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server-socket/server $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
