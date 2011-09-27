include(../examples.pri)

TARGET = example_6_rpcClient

SOURCES += main.cpp \
           rpcClient.cpp 

HEADERS += rpcClient.h 

OTHER_FILES += README

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_6_rpcClient/bin
    INSTALLS += target
}
