
QXMPP_INSTALL_PREFIX = $$[QT_INSTALL_PREFIX]
QXMPP_INSTALL_LIBDIR = $$[QT_INSTALL_LIBS]

CONFIG += qxmpp_include_tests
CONFIG += qxmpp_include_doc
CONFIG += qxmpp_include_examples

QXMPP_VERSION = $$system(sh ./version.sh)
message ("version $$QXMPP_VERSION")

include ("build-lib.pri")
