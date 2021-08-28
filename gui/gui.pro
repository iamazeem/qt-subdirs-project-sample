QT += quick

!include("../common.pri") {
    error("Could not include common.pri!")
}

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/main.cpp

RESOURCES += \
    qml/qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Link dynamiclib
LIBS += -L$$OUT_PWD/../dynamiclib/ -ldynamiclib
unix:{
    #QMAKE_LFLAGS += "-Wl,-rpath,\'\$$ORIGIN\'"
    QMAKE_RPATHDIR += .
}

INCLUDEPATH += $$PWD/../dynamiclib/include
DEPENDPATH += $$PWD/../dynamiclib/include

# Copy dynamic library files (working)
# QMAKE_COPY: https://wiki.qt.io/Undocumented_QMake
win32 {
    QMAKE_PRE_LINK = "$$QMAKE_COPY $$OUT_PWD/../dynamiclib/*.dll $$OUT_PWD"
} else:unix {
    QMAKE_PRE_LINK = "$$QMAKE_COPY $$OUT_PWD/../dynamiclib/libdynamiclib.so $$OUT_PWD"
} else:macx {
    QMAKE_PRE_LINK = "$$QMAKE_COPY $$OUT_PWD/../dynamiclib/libdynamiclib.dylib $$OUT_PWD"
} else {
    error("OS not configured!")
}

# Remove the generated cpp files by qmlcachegen in release mode
CONFIG(release, debug|release) {
    QMAKE_POST_LINK += "$$QMAKE_DEL_FILE $$OUT_PWD/*.cpp"
}

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
