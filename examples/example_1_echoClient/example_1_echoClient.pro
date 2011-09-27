include(../examples.pri)

TARGET = example_1_echoClient

SOURCES +=  main.cpp \
            echoClient.cpp

HEADERS +=  echoClient.h

OTHER_FILES += README

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_1_echoClient/bin
    INSTALLS += target
}
