include(qxmpp.pri)

QT -= gui

TEMPLATE = lib

CONFIG += staticlib
INCLUDEPATH += $$QXMPP_INCLUDE_DIR
LIBS += $$QXMPP_INTERNAL_LIBS

# To enable support for the Speex codec, uncomment the following:
# DEFINES += QXMPP_USE_SPEEX
# LIBS += -lspeex

OBJECTS_DIR = tmp/obj
MOC_DIR = tmp/moc
RCC_DIR = tmp/rcc

message ("QXMPP name $$QXMPP_LIBRARY_NAME")
message ("QXMPP version $$$QXMPP_VERSION")
message ("QXMPP dir $$QXMPP_LIBRARY_DIR")

# Target definition
TARGET = $$QXMPP_LIBRARY_NAME
VERSION = $$QXMPP_VERSION
DESTDIR = $$QXMPP_LIBRARY_DIR

# Header files
INSTALL_HEADERS = src/QXmppUtils.h \
    src/QXmppArchiveIq.h \
    src/QXmppArchiveManager.h \
    src/QXmppBindIq.h \
    src/QXmppByteStreamIq.h \
    src/QXmppCallManager.h \
    src/QXmppClient.h \
    src/QXmppClientExtension.h \
    src/QXmppCodec.h \
    src/QXmppConfiguration.h \
    src/QXmppConstants.h \
    src/QXmppDataForm.h \
    src/QXmppDialback.h \
    src/QXmppDiscoveryIq.h \
    src/QXmppDiscoveryManager.h \
    src/QXmppElement.h \
    src/QXmppEntityTimeIq.h \
    src/QXmppEntityTimeManager.h \
    src/QXmppGlobal.h \
    src/QXmppIbbIq.h \
    src/QXmppIncomingClient.h \
    src/QXmppIncomingServer.h \
    src/QXmppInvokable.h \
    src/QXmppIq.h \
    src/QXmppJingleIq.h \
    src/QXmppLogger.h \
    src/QXmppMessage.h \
    src/QXmppMucIq.h \
    src/QXmppMucManager.h \
    src/QXmppNonSASLAuth.h \
    src/QXmppOutgoingClient.h \
    src/QXmppOutgoingServer.h \
    src/QXmppPacket.h \
    src/QXmppPingIq.h \
    src/QXmppPresence.h \
    src/QXmppPubSubIq.h \
    src/QXmppReconnectionManager.h \
    src/QXmppRemoteMethod.h \
    src/QXmppRoster.h \
    src/QXmppRosterIq.h \
    src/QXmppRosterManager.h \
    src/QXmppRpcIq.h \
    src/QXmppRpcManager.h \
    src/QXmppRtpChannel.h \
    src/QXmppSaslAuth.h \
    src/QXmppServer.h \
    src/QXmppServerExtension.h \
    src/QXmppServerPlugin.h \
    src/QXmppSrvInfo.h \
    src/QXmppSessionIq.h \
    src/QXmppSocks.h \
    src/QXmppStanza.h \
    src/QXmppStream.h \
    src/QXmppStreamFeatures.h \
    src/QXmppStreamInitiationIq.h \
    src/QXmppStun.h \
    src/QXmppTransferManager.h \
    src/QXmppVCardManager.h \
    src/QXmppVCardIq.h \
    src/QXmppVCard.h \
    src/QXmppVersionIq.h \
    src/QXmppVersionManager.h

HEADERS += $$INSTALL_HEADERS
HEADERS += src/QXmppSrvInfo_p.h

# Source files
SOURCES += src/QXmppUtils.cpp \
    src/QXmppArchiveIq.cpp \
    src/QXmppArchiveManager.cpp \
    src/QXmppBindIq.cpp \
    src/QXmppByteStreamIq.cpp \
    src/QXmppCallManager.cpp \
    src/QXmppClient.cpp \
    src/QXmppClientExtension.cpp \
    src/QXmppCodec.cpp \
    src/QXmppConfiguration.cpp \
    src/QXmppConstants.cpp \
    src/QXmppDataForm.cpp \
    src/QXmppDialback.cpp \
    src/QXmppDiscoveryIq.cpp \
    src/QXmppDiscoveryManager.cpp \
    src/QXmppElement.cpp \
    src/QXmppEntityTimeIq.cpp \
    src/QXmppEntityTimeManager.cpp \
    src/QXmppGlobal.cpp \
    src/QXmppIbbIq.cpp \
    src/QXmppIncomingClient.cpp \
    src/QXmppIncomingServer.cpp \
    src/QXmppInvokable.cpp \
    src/QXmppIq.cpp \
    src/QXmppJingleIq.cpp \
    src/QXmppLogger.cpp \
    src/QXmppMessage.cpp \
    src/QXmppMucIq.cpp \
    src/QXmppMucManager.cpp \
    src/QXmppNonSASLAuth.cpp \
    src/QXmppOutgoingClient.cpp \
    src/QXmppOutgoingServer.cpp \
    src/QXmppPacket.cpp \
    src/QXmppPingIq.cpp \
    src/QXmppPresence.cpp \
    src/QXmppPubSubIq.cpp \
    src/QXmppReconnectionManager.cpp \
    src/QXmppRemoteMethod.cpp \
    src/QXmppRosterIq.cpp \
    src/QXmppRosterManager.cpp \
    src/QXmppRpcIq.cpp \
    src/QXmppRpcManager.cpp \
    src/QXmppRtpChannel.cpp \
    src/QXmppSaslAuth.cpp \
    src/QXmppServer.cpp \
    src/QXmppServerExtension.cpp \
    src/QXmppSrvInfo.cpp \
    src/QXmppSessionIq.cpp \
    src/QXmppSocks.cpp \
    src/QXmppStanza.cpp \
    src/QXmppStream.cpp \
    src/QXmppStreamFeatures.cpp \
    src/QXmppStreamInitiationIq.cpp \
    src/QXmppStun.cpp \
    src/QXmppTransferManager.cpp \
    src/QXmppVCardManager.cpp \
    src/QXmppVCardIq.cpp \
    src/QXmppVersionIq.cpp \
    src/QXmppVersionManager.cpp

# Plugins
DEFINES += QT_STATICPLUGIN
HEADERS += \
    src/server/mod_disco.h \
    src/server/mod_ping.h \
    src/server/mod_proxy65.h \
    src/server/mod_stats.h \
    src/server/mod_time.h \
    src/server/mod_version.h

SOURCES += \
    src/server/mod_disco.cpp \
    src/server/mod_ping.cpp \
    src/server/mod_proxy65.cpp \
    src/server/mod_stats.cpp \
    src/server/mod_time.cpp \
    src/server/mod_version.cpp

# pkg-config support
CONFIG += create_pc create_prl no_install_prl
QMAKE_PKGCONFIG_DESTDIR = $$QXMPP_LIBRARY_DIR/pkgconfig

# Installation
headers.files = $$INSTALL_HEADERS
headers.path = $$QXMPP_INSTALL_PREFIX/include/qxmpp

INSTALLS += headers target

OTHER_FILES += \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog


contains(MEEGO_EDITION,harmattan) {
    target.path = $$QXMPP_INSTALL_LIBDIR
    INSTALLS += target
} else {
    target.path = $$QXMPP_INSTALL_LIBDIR
    INSTALLS += target
}

