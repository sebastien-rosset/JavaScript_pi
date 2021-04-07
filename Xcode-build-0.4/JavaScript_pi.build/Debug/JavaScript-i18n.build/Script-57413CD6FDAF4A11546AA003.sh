#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4
  /usr/local/opt/gettext/bin/msgfmt --check -o /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/po/nb.po
  /usr/local/Cellar/cmake/3.19.4/bin/cmake -E copy /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo Resources/nb.lproj/opencpn-JavaScript_pi.mo
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4
  /usr/local/opt/gettext/bin/msgfmt --check -o /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/po/nb.po
  /usr/local/Cellar/cmake/3.19.4/bin/cmake -E copy /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo Resources/nb.lproj/opencpn-JavaScript_pi.mo
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4
  /usr/local/opt/gettext/bin/msgfmt --check -o /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/po/nb.po
  /usr/local/Cellar/cmake/3.19.4/bin/cmake -E copy /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo Resources/nb.lproj/opencpn-JavaScript_pi.mo
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4
  /usr/local/opt/gettext/bin/msgfmt --check -o /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/po/nb.po
  /usr/local/Cellar/cmake/3.19.4/bin/cmake -E copy /Users/Tony/OpenCPN_project/JavaScript-project/JavaScript_pi/Xcode-build-0.4/nb.mo Resources/nb.lproj/opencpn-JavaScript_pi.mo
fi

