#!/bin/bash

# Exact package-inspection commands used in the investigation.

adb shell dumpsys package com.google.android.odad | grep -E 'codePath=|versionName=|firstInstallTime|lastUpdateTime|installerPackageName'

adb shell pm path com.google.android.odad
