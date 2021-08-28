CONFIG += c++17
CONFIG += warn_on

#QMAKE_CXXFLAGS
#QMAKE_CXXFLAGS_DEBUG
#QMAKE_CXXFLAGS_RELEASE
#QMAKE_CXXFLAGS_THREAD

CONFIG(release, debug|release) {
    CONFIG += optimize_full
}

UI_DIR = ui
MOC_DIR = moc
RCC_DIR = rcc
OBJECTS_DIR = obj

INCLUDEPATH += include

#message("OUT_PWD: $$OUT_PWD")
