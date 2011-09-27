PROJECT = qxmpp

include(qxmpp.pri)

# Documentation generation
#docs.commands = $(MAKE) -C doc docs

# Source distribution
#QXMPP_ARCHIVE = qxmpp-0.3.0
#dist.commands = \
#    $(DEL_FILE) -r $$QXMPP_ARCHIVE && \
#    svn export . $$QXMPP_ARCHIVE && \
#    $(COPY_DIR) doc/html $$QXMPP_ARCHIVE/doc && \
#    tar czf $${QXMPP_ARCHIVE}.tar.gz $$QXMPP_ARCHIVE && \
#    $(DEL_FILE) -r $$QXMPP_ARCHIVE
#dist.depends = docs

# Install rules
#htmldocs.files = doc/html
#htmldocs.path = $$[QT_INSTALL_PREFIX]/share/doc/qxmpp
#htmldocs.CONFIG += no_check_exist directory

#QMAKE_EXTRA_TARGETS += dist docs
#INSTALLS += htmldocs

QXMPP_INSTALL_PREFIX = /opt/qxmpp/
QXMPP_INSTALL_LIBDIR = /opt/qxmpp/lib

CONFIG -= qxmpp_include_tests
CONFIG -= qxmpp_include_doc

CONFIG -= qxmpp_include_examples

CONFIG += harmattan_obs_build

include ("build-lib.pri")

OTHER_FILES += \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog

