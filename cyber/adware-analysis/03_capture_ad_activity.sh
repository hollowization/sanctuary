#!/bin/bash

# Exact Logcat commands used to reproduce and observe the advertisement.
# After starting Logcat, reproduce the issue on the phone.
# Stop the capture manually with Ctrl+C.

adb logcat -c

adb logcat -v time -s ActivityTaskManager:I ActivityManager:I
