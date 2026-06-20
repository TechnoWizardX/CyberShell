qml_module(cybershell
    URI CyberShell
    SOURCES
        cutils.hpp cutils.cpp
        qalculator.hpp qalculator.cpp
        appdb.hpp appdb.cpp
        requests.hpp requests.cpp
        toaster.hpp toaster.cpp
        imageanalyser.hpp imageanalyser.cpp
    LIBRARIES
        Qt::Gui
        Qt::Quick
        Qt::Concurrent
        Qt::Sql
        PkgConfig::Qalculate
)

# Bake the shell version in so CUtils can expose it without spawning a process
target_compile_definitions(cybershell PRIVATE CYBERSHELL_VERSION="${VERSION}")

add_subdirectory(Components)
add_subdirectory(Config)
add_subdirectory(Internal)
add_subdirectory(Models)
add_subdirectory(Services)
add_subdirectory(Blobs)
add_subdirectory(Images)
