# CMake generated Testfile for 
# Source directory: /Users/shane/env_setting/CMake/Utilities/cmcurl
# Build directory: /Users/shane/env_setting/CMake/Utilities/cmcurl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[curl]=] "curltest" "http://open.cdash.org/user.php")
set_tests_properties([=[curl]=] PROPERTIES  _BACKTRACE_TRIPLES "/Users/shane/env_setting/CMake/Utilities/cmcurl/CMakeLists.txt;1575;add_test;/Users/shane/env_setting/CMake/Utilities/cmcurl/CMakeLists.txt;0;")
subdirs("lib")
