include(../examples.pri)

TARGET = example_0_connected

SOURCES += main.cpp

OTHER_FILES += README

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/example_0_connected/bin
    INSTALLS += target
}
