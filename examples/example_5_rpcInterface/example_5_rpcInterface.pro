include(../examples.pri)

TARGET = example_5_rpcInterface

SOURCES += main.cpp \
           remoteinterface.cpp

HEADERS += remoteinterface.h

OTHER_FILES += README

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_5_rpcInterface/bin
    INSTALLS += target
}
