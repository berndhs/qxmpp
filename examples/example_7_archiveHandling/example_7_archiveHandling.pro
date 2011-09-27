include(../examples.pri)

TARGET = example_7_archiveHandling

SOURCES +=  main.cpp \
            xmppClient.cpp

HEADERS +=  xmppClient.h

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_7_archiveHandling/bin
    INSTALLS += target
}
