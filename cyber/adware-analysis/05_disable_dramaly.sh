#!/bin/bash

# Exact isolation command used in the investigation.
# This disables the app for Android user 0; it does NOT uninstall it.
# Re-enable it with the command shown below if needed.

adb shell pm disable-user --user 0 com.dramaly.shortfilm

# Re-enable (run manually only if you want to restore the app):
# adb shell pm enable com.dramaly.shortfilm
