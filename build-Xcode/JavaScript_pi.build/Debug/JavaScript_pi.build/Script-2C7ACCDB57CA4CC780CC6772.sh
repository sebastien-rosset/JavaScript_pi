#!/bin/sh
make -C /Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode -f /Users/Tony/OpenCPN_project/JavaScript_pi/build-Xcode/CMakeScripts/JavaScript_pi_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
