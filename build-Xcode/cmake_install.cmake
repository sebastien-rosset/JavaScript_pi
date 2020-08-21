# Install script for directory: /Users/Tony/OpenCPN_project/JavaScript_pi

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/Debug/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/Release/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/MinSizeRel/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/RelWithDebInfo/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/SharedSupport/plugins/libJavaScript_pi.dylib")
      endif()
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/Debug/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/Release/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/MinSizeRel/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns" TYPE SHARED_LIBRARY FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/RelWithDebInfo/libJavaScript_pi.dylib")
    if(EXISTS "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/OpenCPN.app/Contents/PlugIns/libJavaScript_pi.dylib")
      endif()
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/ca.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/ca.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/ca.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/cs.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/cs.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/cs.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/da.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/da.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/da.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/de.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/de.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/de.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/el.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/el.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/el.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/es.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/es.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/es.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/et.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/et.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/et.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/fi.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/fi.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/fi.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/fr.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/fr.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/fr.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/gl.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/gl.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/gl.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/hu.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/hu.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/hu.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/it.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/it.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/it.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/ja.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/ja.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/ja.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/nb.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/nb.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/nb.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/nl.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/nl.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/nl.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/pl.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/pl.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/pl.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/pt.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/pt.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/pt.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/ru.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/ru.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/ru.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/sv.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/sv.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/sv.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/tr.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/tr.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/tr.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/vi.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/vi.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/vi.mo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/OpenCPN.app/Contents/Resources/zh.lproj/opencpn-JavaScript_pi.mo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin/OpenCPN.app/Contents/Resources/zh.lproj" TYPE FILE RENAME "opencpn-JavaScript_pi.mo" FILES "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/zh.mo")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
