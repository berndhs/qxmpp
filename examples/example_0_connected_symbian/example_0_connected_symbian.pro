include(../examples.pri)

TARGET = example_0_connected_symbian

HEADERS += main.h
SOURCES += main.cpp

OTHER_FILES += README

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_0_connected_symbian/bin
    INSTALLS += target
}
