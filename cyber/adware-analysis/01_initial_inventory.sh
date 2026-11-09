#!/bin/bash

# Exact commands used during the HONOR 400 Lite investigation.
# Run each command manually and inspect its output.

adb devices -l

adb shell pm list packages -3 -i

adb shell cmd appops query-op SYSTEM_ALERT_WINDOW allow

adb shell settings get secure enabled_accessibility_services

adb shell cmd appops query-op REQUEST_INSTALL_PACKAGES allow

adb shell settings get secure enabled_notification_listeners

adb shell dumpsys package com.storymatrix.drama | grep -E 'firstInstallTime|lastUpdateTime|installerPackageName'
