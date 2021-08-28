# qt-subdirs-project-sample

Qt SUBDIRS Project Sample with multiple subprojects

## Source Directory Structure

```shell
$ tree qt-subdirs-project-sample/
qt-subdirs-project-sample/
├── cli
│   ├── cli.pro
│   ├── include
│   │   └── test.hpp
│   └── src
│       └── main.cpp
├── common.pri
├── config
│   └── test.json
├── dynamiclib
│   ├── dynamiclib.pro
│   ├── include
│   │   ├── dynamiclib_global.hpp
│   │   └── dynamiclib.hpp
│   └── src
│       └── dynamiclib.cpp
├── gui
│   ├── gui.pro
│   ├── qml
│   │   ├── main.qml
│   │   └── qml.qrc
│   └── src
│       └── main.cpp
├── LICENSE
├── qt-subdirs-project-sample.pro
├── qt-subdirs-project-sample.pro.user
├── README.md
└── staticlib
    ├── include
    │   └── staticlib.hpp
    ├── src
    │   └── staticlib.cpp
    └── staticlib.pro

13 directories, 20 files
```

## Build Directory Structure

### Debug

```shell
$ tree qt-subdirs-project-sample/build/debug
qt-subdirs-project-sample/build/debug
├── cli
│   ├── cli
│   ├── Makefile
│   ├── moc
│   └── obj
│       └── main.o
├── dynamiclib
│   ├── libdynamiclib.so
│   ├── Makefile
│   ├── moc
│   └── obj
│       └── dynamiclib.o
├── gui
│   ├── gui
│   ├── libdynamiclib.so
│   ├── Makefile
│   ├── moc
│   ├── obj
│   │   ├── main.o
│   │   └── qrc_qml.o
│   └── rcc
│       └── qrc_qml.cpp
├── Makefile
└── staticlib
    ├── libstaticlib.a
    ├── Makefile
    └── obj
        └── staticlib.o

12 directories, 16 files
```

### Release

```shell
$ tree qt-subdirs-project-sample/build/release
qt-subdirs-project-sample/build/release
├── cli
│   ├── cli
│   ├── Makefile
│   ├── moc
│   └── obj
│       └── main.o
├── dynamiclib
│   ├── libdynamiclib.so
│   ├── Makefile
│   ├── moc
│   └── obj
│       └── dynamiclib.o
├── gui
│   ├── gui
│   ├── libdynamiclib.so
│   ├── Makefile
│   ├── moc
│   └── obj
│       ├── main.o
│       ├── qmlcache_loader.o
│       └── qml_main_qml.o
├── Makefile
└── staticlib
    ├── libstaticlib.a
    ├── Makefile
    └── obj
        └── staticlib.o

11 directories, 16 files
```
