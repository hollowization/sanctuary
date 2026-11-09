#!/bin/bash

# Exact command used after reproducing the advertisement.

adb shell dumpsys activity activities | grep -E 'mResumedActivity|topResumedActivity'
