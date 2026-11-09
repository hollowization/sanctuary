# Android Adware Investigation & Incident Report

**Case:** HONOR 400 Lite – Fullscreen Advertisement Injection  
**Date:** 9 November 2026  
**Platform:** Android / MagicOS  
**Device:** HONOR 400 Lite (ABR-NX1)  
**Investigation workstation:** MacBook Air M1 – macOS 27.0  
**Tools:** Android Platform Tools (ADB), Logcat, Package Manager, AppOps

---

## 1. Executive Summary

An Android device (HONOR 400 Lite) exhibited persistent fullscreen advertisements appearing before the launch of unrelated applications, including Claude, the Phone application and other system applications.

The advertisements included Bolt Food promotional content.

The investigation identified `com.dramaly.shortfilm` as the application launching a Google Mobile Ads activity.

After disabling the application through Android Debug Bridge (ADB), the fullscreen advertisements stopped appearing.

This provided strong experimental evidence that the application was responsible for the observed advertising behavior.

## 2. Initial Symptoms

The reported symptoms included:

- Fullscreen advertisements displayed before opening applications.
- Advertisements appearing independently of the application being launched.
- Bolt Food promotional content appearing when opening Claude.
- Advertisements appearing when opening the Phone application.
- Repeated advertising interruptions during normal device usage.

The behavior initially suggested an Android application with aggressive advertising functionality or adware-like behavior.

## 3. Investigation Environment

The investigation was performed using macOS and Android Debug Bridge.

ADB installation:

```bash
brew install android-platform-tools
```

Due to a failed Homebrew download (HTTP 404), the official Android Platform Tools archive was downloaded directly from Google.

ADB version:

```text
Android Debug Bridge version 1.0.41
Version 37.0.1-15733141
Architecture: Darwin arm64
```

USB debugging was enabled on the HONOR device and the workstation was authorized through the RSA debugging prompt.

Device identification:

```bash
adb devices -l
```

## 4. Application Enumeration

Installed third-party applications were enumerated using:

```bash
adb shell pm list packages -3 -i
```

Several short-form video applications were identified, including:

| Package | Application |
|---|---|
| `com.dramaly.shortfilm` | Dramaly |
| `com.storymatrix.drama` | DramaBox |
| `com.freereels.app` | FreeReels |
| `live.shorttv.apps` | ShortTV |

These applications were selected for further investigation.

## 5. Permission Analysis

Android AppOps was used to inspect applications with overlay permissions:

```bash
adb shell cmd appops query-op SYSTEM_ALERT_WINDOW allow
```

Additional checks included:

```bash
adb shell settings get secure enabled_accessibility_services
```

```bash
adb shell cmd appops query-op REQUEST_INSTALL_PACKAGES allow
```

The results did not reveal an obvious third-party application with overlay permission.

This suggested that the advertising activity could be displayed through an application-owned Activity rather than a separate overlay window.

## 6. Dynamic Analysis – Logcat

Android system logs were captured while reproducing the advertising behavior.

Commands:

```bash
adb logcat -c
adb logcat -v time -s ActivityTaskManager:I ActivityManager:I
```

The following activity launch was observed:

```text
START u0 {
  act=android.intent.action.MAIN
  cat=[android.intent.category.HOME]
  cmp=com.dramaly.shortfilm/.ui.launcher.MainLauncherActivity
}
```

Subsequently, another activity was launched:

```text
START u0 {
  cmp=com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity
}
```

The system then reported:

```text
Displayed com.dramaly.shortfilm/
com.google.android.gms.ads.AdActivity
```

This established that the Dramaly application launched an activity associated with Google Mobile Ads.

The observed application package was:

```text
com.dramaly.shortfilm
```

The advertising activity was:

```text
com.google.android.gms.ads.AdActivity
```

## 7. Controlled Isolation Test

To determine whether the application was responsible for the observed advertising behavior, it was temporarily disabled using Android Package Manager.

Command:

```bash
adb shell pm disable-user --user 0 com.dramaly.shortfilm
```

Following this operation, fullscreen advertisements stopped appearing when opening unrelated applications.

This result provided strong experimental evidence linking Dramaly to the observed advertising interruptions.

The application was therefore identified as the primary source associated with the incident.

## 8. Remediation

The recommended permanent remediation is to uninstall the application:

```bash
adb uninstall com.dramaly.shortfilm
```

Expected response:

```text
Success
```

Verification:

```bash
adb shell pm list packages -3 | grep dramaly
```

An empty result indicates that the package is no longer installed for the queried user.

Additional recommendations:

- Run Google Play Protect.
- Review recently installed applications.
- Review special application permissions.
- Monitor device behavior after reboot.
- Avoid installing applications from untrusted sources.

## 9. Conclusion

The investigation successfully identified an application associated with persistent fullscreen advertising interruptions on the HONOR 400 Lite.

The analysis relied on Android application enumeration, permission inspection, system logging and controlled application isolation.

The most significant finding was the observed launch of:

`com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity`

Disabling the application eliminated the reported advertising behavior.

The evidence supports identifying Dramaly as the primary cause of the incident. However, this investigation does not establish that the application contains malicious code or that all its advertising activity is inherently malicious.

## 10. Technical Skills Demonstrated

- Android Debug Bridge (ADB)
- Android Package Manager
- AppOps permission inspection
- Android Logcat analysis
- Dynamic application behavior analysis
- Application isolation and remediation
- Android advertising activity identification
- macOS ARM64 investigation environment

**Investigation status:** Primary source identified, application removed, pending reverse engineering.
