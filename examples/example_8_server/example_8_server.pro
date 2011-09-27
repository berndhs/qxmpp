include(../examples.pri)

TARGET = example_8_server

SOURCES +=  main.cpp

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_8_server/bin
    INSTALLS += target
}
