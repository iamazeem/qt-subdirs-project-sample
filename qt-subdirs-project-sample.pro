message("Qt: $$QT_VERSION")
message("Qmake: $$QMAKE_QMAKE")

# Check if test.json exists
exists("config/test.json") {
    message("config: test.json exists")
} else {
    error("config: test.json not found")
}

TEMPLATE = subdirs

SUBDIRS += \
    staticlib \
    cli \
    dynamiclib \
    gui

cli.depends = staticlib
gui.depends = dynamiclib
