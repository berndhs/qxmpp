include(../examples.pri)

TARGET = example_2_rosterHandling

SOURCES +=  main.cpp \
            xmppClient.cpp

HEADERS +=  xmppClient.h

OTHER_FILES += README

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_2_rosterHandling/bin
    INSTALLS += target
}
