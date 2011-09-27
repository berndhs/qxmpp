include(../examples.pri)

TARGET = example_9_vCard

SOURCES +=  main.cpp \
            xmppClient.cpp

HEADERS +=  xmppClient.h

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_9_vCard/bin
    INSTALLS += target
}
