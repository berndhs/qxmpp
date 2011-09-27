include(../examples.pri)

TARGET = example_3_transferHandling

SOURCES +=  main.cpp \
            xmppClient.cpp

HEADERS +=  xmppClient.h

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_3_transferHandling/bin
    INSTALLS += target
}
