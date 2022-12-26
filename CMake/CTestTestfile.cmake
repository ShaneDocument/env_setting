# CMake generated Testfile for 
# Source directory: /Users/shane/env_setting/CMake
# Build directory: /Users/shane/env_setting/CMake
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/Users/shane/env_setting/CMake/Tests/EnforceConfig.cmake")
add_test([=[SystemInformationNew]=] "/Users/shane/env_setting/CMake/bin/cmake" "--system-information" "-G" "Unix Makefiles")
set_tests_properties([=[SystemInformationNew]=] PROPERTIES  _BACKTRACE_TRIPLES "/Users/shane/env_setting/CMake/CMakeLists.txt;499;add_test;/Users/shane/env_setting/CMake/CMakeLists.txt;0;")
subdirs("Source/kwsys")
subdirs("Utilities/std")
subdirs("Utilities/KWIML")
subdirs("Utilities/cmlibrhash")
subdirs("Utilities/cmzlib")
subdirs("Utilities/cmcurl")
subdirs("Utilities/cmnghttp2")
subdirs("Utilities/cmexpat")
subdirs("Utilities/cmbzip2")
subdirs("Utilities/cmzstd")
subdirs("Utilities/cmliblzma")
subdirs("Utilities/cmlibarchive")
subdirs("Utilities/cmjsoncpp")
subdirs("Utilities/cmlibuv")
subdirs("Source/CursesDialog/form")
subdirs("Source")
subdirs("Utilities")
subdirs("Tests")
subdirs("Auxiliary")
