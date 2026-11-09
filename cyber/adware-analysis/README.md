# HONOR 400 Lite – Dramaly Adware Investigation

## Overview

This repository documents a controlled investigation into intrusive advertising observed on an HONOR 400 Lite device.

The investigation identified the Android package:

- **Package name:** `com.dramaly.shortfilm`
- **Application:** Dramaly
- **Observed advertising component:** `com.google.android.gms.ads.AdActivity`

The purpose of this project is to document the observed behavior, explain the investigation environment, and provide context for the accompanying command scripts and technical write-up.

> **Classification note:** The observed behavior is consistent with intrusive advertising/adware. This investigation does not, by itself, establish that the application is malware.

## Repository contents

Keep the project materials separate:

- **Scripts:** command-by-command shell scripts used during the device investigation.
- **Write-up:** the detailed technical report containing observations, evidence, analysis, and conclusions.
- **README.md:** this project overview and usage guide.

The README is not a replacement for the scripts or the technical report.

## Confirmed observations

During the investigation:

1. The device was connected to a Mac through Android Debug Bridge (ADB).
2. The package inventory identified `com.dramaly.shortfilm`.
3. Logcat recorded Dramaly launching its main activity:
   `com.dramaly.shortfilm/.ui.launcher.MainLauncherActivity`
4. Logcat subsequently recorded the Google Mobile Ads activity:
   `com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity`
5. Disabling the Dramaly package stopped the intrusive advertisements observed during the test.

These observations strongly associate Dramaly with the reproduced advertising behavior. They do not prove that Dramaly was responsible for every advertisement ever displayed on the device, nor do they establish malicious intent.

## Requirements

For the original device-side investigation:

- macOS or Linux terminal
- Android Platform Tools (`adb`)
- Android device with USB debugging enabled
- USB cable and authorization of the debugging computer

For APK analysis on Windows 10:

- Windows 10 host
- JADX for Java/decompiled-code inspection
- Apktool for APK resources and manifest inspection
- SHA-256 utility (PowerShell includes `Get-FileHash`)
- Optional: MobSF for supplementary static analysis
- Optional: isolated Android emulator or dedicated test device for dynamic analysis

Windows does not execute APK files natively. Use an Android emulator or a separate Android test device for dynamic execution.

## Safe handling and analysis

- Preserve the original APK and calculate its SHA-256 hash before analysis.
- Do not install the APK on a personal or production device.
- Prefer static analysis before dynamic execution.
- If dynamic analysis is necessary, use an isolated emulator or dedicated test device.
- Avoid connecting the test environment to the homelab or networks containing sensitive systems.
- Take a VM snapshot before testing and revert it afterward.
- Treat extracted URLs, domains, strings, and configuration values as untrusted evidence.
- Do not classify an advertising SDK, permission, or network connection as malicious without supporting evidence.

## Suggested APK analysis workflow

1. Record the APK filename, file size, and SHA-256 hash.
2. Identify package name, version, SDK levels, and signing-certificate information.
3. Decode `AndroidManifest.xml` and review requested permissions.
4. Inspect activities, services, broadcast receivers, and exported components.
5. Search decompiled code and resources for advertising SDKs and ad-loading/display calls.
6. Record hard-coded domains, URLs, and remote configuration references.
7. If needed, perform controlled dynamic analysis and correlate observed behavior with Logcat and network evidence.
8. Document findings as **confirmed**, **probable**, or **unverified**.

## Useful commands

Calculate the APK SHA-256 hash in PowerShell:

```powershell
Get-FileHash .\Dramaly.apk -Algorithm SHA256
```

Inspect connected Android devices:

```bash
adb devices -l
```

Inspect the installed package:

```bash
adb shell dumpsys package com.dramaly.shortfilm
```

Capture relevant Android activity logs:

```bash
adb logcat -c
adb logcat -v time -s ActivityTaskManager:I ActivityManager:I
```

The commands above are examples for manual analysis. They do not replace the numbered investigation scripts.

## Evidence and reporting

For reproducibility, record:

- Date and time of each test
- Device model and Android version
- APK filename, size, and SHA-256
- Tool names and versions
- Exact commands used
- Relevant Logcat excerpts
- Screenshots or network captures, where appropriate
- Whether each conclusion is confirmed or remains a hypothesis

Do not include personal data, account credentials, tokens, or unrelated device information in published evidence.

## Current status

- [x] Dramaly package identified on the test phone
- [x] Google Mobile Ads activity observed in Logcat
- [x] Disabling Dramaly stopped the advertisements reproduced during the investigation
- [ ] Original APK acquired and hashed
- [ ] Static APK analysis completed
- [ ] Dynamic APK analysis completed, if required
- [ ] Final findings documented in the separate technical write-up

## Disclaimer

This project is for educational and defensive software-analysis purposes. Findings describe the tested application version and device behavior only. Application behavior may vary by version, region, configuration, and server-side advertising campaigns.
