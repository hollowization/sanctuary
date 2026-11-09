```s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb shell cmd appops query-op SYSTEM_ALERT_WINDOW allow
com.google.android.googlequicksearchbox
com.google.android.dialer
com.google.android.odad
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb shell settings get secure enabled_accessibility_services
null
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb shell cmd appops query-op REQUEST_INSTALL_PACKAGES allow
com.android.chrome
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb shell dumpsys package com.storymatrix.drama | grep -E 'firstInstallTime|lastUpdateTime|installerPackageName'
    lastUpdateTime=2026-10-18 18:00:35
    installerPackageName=com.android.vending
      firstInstallTime=2025-12-10 21:07:37
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % clear
















s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb shell dumpsys package com.google.android.odad | grep -E 'codePath=|versionName=|firstInstallTime|lastUpdateTime|installerPackageName'
    codePath=/data/app/~~KisChZYO1SfIBjGcpmn7qg==/com.google.android.odad-SdciDoQrUikPOUd9LZFLJQ==
    versionName=U.43.playstore.oem.1005803339
    lastUpdateTime=2026-11-09 06:07:45
    installerPackageName=com.android.vending
      firstInstallTime=2026-07-03 01:40:42
    codePath=/system/priv-app/GooglePlayProtectService
    versionName=V.19.odad-stub.713132023
    lastUpdateTime=1970-01-01 01:59:59
    installerPackageName=null
      firstInstallTime=1970-01-01 01:59:59
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb shell pm path com.google.android.odad
package:/data/app/~~KisChZYO1SfIBjGcpmn7qg==/com.google.android.odad-SdciDoQrUikPOUd9LZFLJQ==/base.apk
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb logcat -c
adb logcat -v time -s ActivityTaskManager:I ActivityManager:I
--------- beginning of (HKS)723A33D94BB091DD1DF566990304A6A4510CA52182E53AA9B23C6F1ED93E51C67363EA3883E27FC441FB27670266008ADCA8924A9AF136DFE2D45580CCCC392345E613BFBD1D44F6C93DC37C52ABD65301B00ECE63D64EA256141BFDF96CFAAD201825D741646479CB27059FAD61B5D0C209930CECCC19304FAD0BAA426CA4658570CD599B0D9014FEF7053FF4B7A43B067727B2023BC7A6F2E9E9CF82703F3678E5B5E84806450ABFEFE84937DBAFB0589242F3C2044E2E4EE5F33D2D3838F4EB4CE00DCCF3B2224CDF4259DB947A6036C4F1F0B7431377AFE2D42035D6FED5E6CB79DB3C75E9064082F6DD29431D90A0F138FE13C2B9FB9FC8623D1D589809(HKE)
--------- beginning of system
11-09 14:09:57.663 I/ActivityManager( 2082): sendIntentSender target:PendingIntentRecord{339bc0a android broadcastIntent}, intent:flg=0x4 xflg=0x4 hwFlg=0x110
--------- beginning of main
11-09 14:09:57.664 W/ActivityManager( 2082): Sending non-protected broadcast com.android.intent.action.HEARTBEAT_FIXER from system uid 1000 pkg android
11-09 14:09:57.673 W/ActivityManager( 2082): Sending non-protected broadcast com.google.android.intent.action.GTALK_HEARTBEAT from system 2082:system/1000 pkg android
11-09 14:09:57.676 W/ActivityManager( 2082): Sending non-protected broadcast com.google.android.intent.action.MCS_HEARTBEAT from system 2082:system/1000 pkg android
11-09 14:10:00.343 I/ActivityManager( 2082): freezing 14455 com.google.android.gm
11-09 14:10:07.641 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@4de8d42 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:07.668 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@1547f89 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:07.674 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@aeecfaf already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:07.723 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@45f96c1 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:10.078 I/ActivityManager( 2082): sync unfroze 5792 com.google.android.apps.messaging for 7
11-09 14:10:10.350 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@a5ab231 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:10.352 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@dcefd16 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:10.362 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@ff7406d already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:11.566 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@c011533 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:11.589 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@7547669 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:11.592 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@52dd18f already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:11.605 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@e351025 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:12.126 I/ActivityTaskManager( 2082): setExpandScreenTurningOn false
11-09 14:10:12.232 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@d2afd6 already registered for pid 2895, callerPackage is com.hihonor.systemmanager
11-09 14:10:13.083 W/ActivityManager( 2082): Sending non-protected broadcast com.hihonor.android.password.unlock from system 2719:com.android.systemui/u0a86 pkg com.android.systemui
11-09 14:10:15.619 W/ActivityManager( 2082): Sending non-protected broadcast com.hihonor.android.password.unlock from system 2719:com.android.systemui/u0a86 pkg com.android.systemui
11-09 14:10:15.652 I/ActivityTaskManager( 2082): isSnapshotCompatible,snapshotSizeMatch: true ,taskSize.x: 1080 ,taskSize.y: 2412 ,w: 1080 ,h: 2412currentDisplay: 0 ,lastSnapshotDisplayMode: -1 ,SafeSideWidth: 0
11-09 14:10:15.696 I/ActivityTaskManager( 2082): applyChangesToSurfaceIfChanged createSurface
11-09 14:10:15.735 I/ActivityManager( 2082): App 10270/com.google.android.apps.work.clouddpc targets O+, restricted
11-09 14:10:15.736 I/ActivityManager( 2082): App 10274/com.instagram.android targets O+, restricted
11-09 14:10:15.736 I/ActivityManager( 2082): App 10225/com.zhiliaoapp.musically targets O+, restricted
11-09 14:10:15.739 I/ActivityManager( 2082): sync unfroze 10069 com.whatsapp for 3
11-09 14:10:15.747 I/ActivityManager( 2082): sync unfroze 12266 com.google.android.apps.youtube.music for 3
11-09 14:10:15.765 I/ActivityManager( 2082): sync unfroze 12651 com.google.android.youtube for 3
11-09 14:10:15.801 W/ActivityManager( 2082): Sending non-protected broadcast com.hihonor.android.action.KEYGUARD_STATE from system 2719:com.android.systemui/u0a86 pkg com.android.systemui
11-09 14:10:15.881 I/ActivityManager( 2082): sync unfroze 10666 com.hihonor.android.pushagent for 3
11-09 14:10:16.483 I/ActivityManager( 2082): sendIntentSender target:PendingIntentRecord{4f50b1 com.hihonor.android.launcher startActivity}, intent:act=android.intent.action.MAIN cat=[android.intent.category.DEFAULT] flg=0x10000000 hwFlg=0x10 cmp=com.hihonor.android.launcher/com.android.quickstep.RecentsActivity
11-09 14:10:16.487 I/ActivityTaskManager( 2082): START u0 {act=android.intent.action.MAIN cat=[android.intent.category.DEFAULT] flg=0x10000000 xflg=0x4 hwFlg=0x2000000 pkg=com.hihonor.android.launcher cmp=com.hihonor.android.launcher/com.android.quickstep.RecentsActivity (has extras)} with LAUNCH_SINGLE_TASK from uid 10120
11-09 14:10:16.490 W/ActivityTaskManager( 2082): callingPackage for (uid=1000, pid=2082) is ambiguous: [android, com.android.providers.settings, com.android.server.telecom, com.mediatek.location.lppe.main]
11-09 14:10:16.491 I/ActivityTaskManager( 2082): TaskLauncParamsModifier activity is null
11-09 14:10:16.493 I/ActivityTaskManager( 2082): ActivityRecord info: ActivityInfo{ec3d8cd com.android.quickstep.RecentsActivity}
11-09 14:10:16.502 I/ActivityTaskManager( 2082): onDisplayChanged-notifyTaskDisplayChanged displayId:0,prevDisplayId:-1
11-09 14:10:16.506 I/ActivityTaskManager( 2082): start activity to=com.hihonor.android.launcher
11-09 14:10:16.506 I/ActivityTaskManager( 2082): start activity name =com.android.quickstep.RecentsActivity
11-09 14:10:16.511 I/ActivityTaskManager( 2082): onConfigurationChanged recordWindowInformationForPerformance this = ActivityRecord{16774530 u0 com.hihonor.android.launcher/com.android.quickstep.RecentsActivity t31}
11-09 14:10:16.520 I/ActivityTaskManager( 2082):  (BAL_ALLOW_ALLOWLISTED_COMPONENT) result code=0
11-09 14:10:16.534 I/ActivityTaskManager( 2082): when transient launching activity:ActivityRecord{16774530 u0 com.hihonor.android.launcher/com.android.quickstep.RecentsActivity t31} does not set focused App
11-09 14:10:16.723 I/ActivityTaskManager( 2082): applyChangesToSurfaceIfChanged createSurface
11-09 14:10:16.730 I/ActivityTaskManager( 2082): Displayed com.hihonor.android.launcher/com.android.quickstep.RecentsActivity for user 0: +226ms
11-09 14:10:16.751 I/ActivityTaskManager( 2082): focus top task Task{6cbfcd0 #31 type=standard I=com.hihonor.android.launcher/com.android.quickstep.RecentsActivity nonResizable}
11-09 14:10:16.781 I/ActivityTaskManager( 2082): Make invisible? ActivityRecord{267978060 u0 com.android.settings/.deviceinfo.UsbConnModeChooserActivity t26} finishing=false state=RESUMED containerShouldBeVisible=false behindFullyOccludedContainer=true mLaunchTaskBehind=false
11-09 14:10:16.793 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@93b4c53 already registered for pid 6280, callerPackage is com.hihonor.android.launcher
11-09 14:10:16.800 I/ActivityTaskManager( 2082): removeSinkSurface:Surface(name=16c9995 ActivityRecordInputSink com.android.settings/.deviceinfo.UsbConnModeChooserActivity)/@0xe04e566
11-09 14:10:16.805 I/ActivityTaskManager( 2082): START u0 {act=android.intent.action.MAIN cat=[android.intent.category.HOME] flg=0x10000000 xflg=0x4 cmp=com.dramaly.shortfilm/.ui.launcher.MainLauncherActivity} with LAUNCH_SINGLE_TASK from uid 10120
11-09 14:10:16.806 I/ActivityTaskManager( 2082): TaskLauncParamsModifier activity is null
11-09 14:10:16.807 I/ActivityTaskManager( 2082): ActivityRecord info: ActivityInfo{c7ff043 com.dramaly.shortfilm.ui.launcher.MainLauncherActivity}
11-09 14:10:16.816 I/ActivityTaskManager( 2082): shouldPauseImmediately = false
11-09 14:10:16.818 E/ActivityTaskManager( 2082): START {act=android.intent.action.MAIN cat=[android.intent.category.HOME] flg=0x10c00000 xflg=0x4 hwFlg=0x10 cmp=com.dramaly.shortfilm/.ui.launcher.MainLauncherActivity} result: 2
11-09 14:10:16.819 I/ActivityTaskManager( 2082):  (sr=16774530) (BAL_ALLOW_ALLOWLISTED_COMPONENT) result code=2
11-09 14:10:16.843 I/ActivityTaskManager( 2082): animating need stay in stopping state: com.hihonor.android.launcher/com.android.quickstep.RecentsActivity
11-09 14:10:16.879 W/ActivityTaskManager( 2082): Request to remove task ignored for non-existent task 30
11-09 14:10:16.880 I/ActivityTaskManager( 2082): animating need stay in stopping state: com.hihonor.android.launcher/com.android.quickstep.RecentsActivity
11-09 14:10:16.916 I/ActivityTaskManager( 2082): applyChangesToSurfaceIfChanged createSurface
11-09 14:10:16.927 I/ActivityTaskManager( 2082): animating need stay in stopping state: com.hihonor.android.launcher/com.android.quickstep.RecentsActivity
11-09 14:10:17.216 I/ActivityTaskManager( 2082): removeSinkSurface:Surface(name=e555493 ActivityRecordInputSink com.hihonor.android.launcher/com.android.quickstep.RecentsActivity)/@0x7e6bdb9
11-09 14:10:17.249 I/ActivityTaskManager( 2082): releaseSurfaceControl:null
11-09 14:10:17.687 I/ActivityManager( 2082): freezing 5639 com.hihonor.searchservice
11-09 14:10:17.691 I/ActivityManager( 2082): freezing 13664 com.hihonor.detectrepair
11-09 14:10:21.161 I/ActivityManager( 2082): Start proc 14840:com.google.android.webview:sandboxed_process0:org.chromium.content.app.SandboxedProcessService0:0/u0i1 for  {com.google.android.gms/org.chromium.content.app.SandboxedProcessService0:0}
11-09 14:10:21.161 I/ActivityManager( 2082): ProcessObserver broadcast disabled
11-09 14:10:24.631 W/ActivityManager( 2082): Unable to start service Intent { act=com.google.android.play.core.prewarm.BIND_PREWARM_SERVICE xflg=0x4 pkg=com.android.vending } U=0: not found
11-09 14:10:24.650 I/ActivityTaskManager( 2082): START u0 {xflg=0x4 cmp=com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity (has extras)} with LAUNCH_MULTIPLE from uid 10332
11-09 14:10:24.651 I/ActivityTaskManager( 2082): TaskLauncParamsModifier activity is null
11-09 14:10:24.651 I/ActivityTaskManager( 2082): ActivityRecord info: ActivityInfo{207a598 com.google.android.gms.ads.AdActivity}
11-09 14:10:24.661 I/ActivityTaskManager( 2082): onConfigurationChanged recordWindowInformationForPerformance this = ActivityRecord{212323373 u0 com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity t25}
11-09 14:10:24.666 I/ActivityTaskManager( 2082): shouldPauseImmediately = false
11-09 14:10:24.668 I/ActivityManager( 2082): Start proc 14934:com.android.chrome/u0a151 for service {com.android.chrome/org.chromium.chrome.browser.customtabs.CustomTabsConnectionService}
11-09 14:10:24.670 I/ActivityTaskManager( 2082):  (sr=37854984) (BAL_ALLOW_VISIBLE_WINDOW) result code=0
11-09 14:10:24.673 I/ActivityManager( 2082): ProcessObserver broadcast disabled
11-09 14:10:24.678 I/ActivityTaskManager( 2082): Making visible and scheduling visibility: ActivityRecord{212323373 u0 com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity t25}
11-09 14:10:24.717 I/ActivityTaskManager( 2082): clearSizeCompatModeAttributes when in setRequestedOrientation for com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity
11-09 14:10:24.812 I/ActivityTaskManager( 2082): Displayed com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity for user 0: +154ms
11-09 14:10:24.819 I/ActivityTaskManager( 2082): applyChangesToSurfaceIfChanged createSurface
11-09 14:10:24.889 I/ActivityManager( 2082): Killing 13123:com.google.android.cellbroadcastreceiver/u0a172 (adj 995): iAwareR[LowMemQuick](cch-empty) -1ms
11-09 14:10:24.894 I/ActivityManager( 2082): Killing 13281:com.google.android.apps.photos/u0a160 (adj 945): iAwareR[LowMemQuick](cch-empty) -1ms
11-09 14:10:24.904 I/ActivityManager( 2082): ProcessRecord to clean, name: com.google.android.cellbroadcastreceiver, uid: 10172, app: ProcessRecord{b305d3 13123:com.google.android.cellbroadcastreceiver/u0a172}
11-09 14:10:24.917 I/ActivityManager( 2082): ProcessRecord to clean, name: com.google.android.apps.photos, uid: 10160, app: ProcessRecord{32357cf 13281:com.google.android.apps.photos/u0a160}
11-09 14:10:24.974 W/ActivityManager( 2082): Sending non-protected broadcast com.intent.action.dns_statistics from system 2082:system/1000 pkg android
11-09 14:10:25.270 W/ActivityManager( 2082): Sending non-protected broadcast com.android.nfc.action.LX_DATA from system 4782:com.android.nfc/1027 pkg com.android.nfc
11-09 14:10:25.533 I/ActivityManager( 2082): Start proc 15000:com.android.chrome:privileged_process0/u0a151 for service {com.android.chrome/org.chromium.content.app.PrivilegedProcessService0}
11-09 14:10:25.533 I/ActivityManager( 2082): ProcessObserver broadcast disabled
11-09 14:10:25.775 I/ActivityManager( 2082): freezing 10069 com.whatsapp
11-09 14:10:25.780 I/ActivityManager( 2082): freezing 12266 com.google.android.apps.youtube.music
11-09 14:10:25.784 I/ActivityManager( 2082): freezing 12651 com.google.android.youtube
11-09 14:10:25.891 I/ActivityManager( 2082): freezing 10666 com.hihonor.android.pushagent
11-09 14:10:26.659 W/ActivityManager( 2082): Slow operation: 153ms so far, now at startProcess: returned from zygote!
11-09 14:10:26.660 W/ActivityManager( 2082): Slow operation: 154ms so far, now at startProcess: done updating battery stats
11-09 14:10:26.660 W/ActivityManager( 2082): Slow operation: 154ms so far, now at startProcess: building log message
11-09 14:10:26.660 I/ActivityManager( 2082): Start proc 15052:com.android.chrome:sandboxed_process0:org.chromium.content.app.SandboxedProcessService0:0/u0ai0 for  {com.android.chrome/org.chromium.content.app.SandboxedProcessService0:0}
11-09 14:10:26.660 W/ActivityManager( 2082): Slow operation: 154ms so far, now at startProcess: starting to update pids map
11-09 14:10:26.661 I/ActivityManager( 2082): ProcessObserver broadcast disabled
11-09 14:10:26.661 W/ActivityManager( 2082): Slow operation: 155ms so far, now at startProcess: done updating pids map
11-09 14:10:26.979 I/ActivityManager( 2082): freezing 13881 com.hihonor.coauthservice
11-09 14:10:40.009 W/ActivityManager( 2082): Sending non-protected broadcast com.hihonor.intent.action.PG_AR_STATE_ACTION from system 3050:com.hihonor.iaware/1000 pkg com.hihonor.android.hnaps
11-09 14:10:42.110 I/ActivityManager( 2082): Killing 5467:com.android.nfc:load/1027 (adj 999): empty #31
11-09 14:10:42.164 I/ActivityManager( 2082): Dying app: ProcessRecord{baa422c 5467:com.android.nfc:load/1027}, pid: 5467, isNeedClearup: true, isFromBinderDied:true, curProc:ProcessRecord{baa422c 5467:com.android.nfc:load/1027}, reason:null
11-09 14:10:42.198 I/ActivityManager( 2082): sendIntentSender target:PendingIntentRecord{7745988 com.hihonor.systemmanager broadcastIntent}, intent:flg=0x4 xflg=0x4 hwFlg=0x110
11-09 14:10:42.213 I/ActivityManager( 2082): sendIntentSender target:PendingIntentRecord{5364856 com.google.android.gms/com.google.android.gms.auth_authzen__phone startService}, intent:flg=0x4 xflg=0x4 hwFlg=0x110
11-09 14:10:42.586 I/ActivityManager( 2082): sendIntentSender target:PendingIntentRecord{8b92770 com.hihonor.nearby broadcastIntent}, intent:flg=0x4 xflg=0x4 hwFlg=0x110
11-09 14:10:42.587 W/ActivityManager( 2082): Sending non-protected broadcast DeviceMonitorService.AdvertiseAlarmReceiver.MonitorStrategy from system uid 1000 pkg com.hihonor.nearby
11-09 14:10:42.596 I/ActivityManager( 2082): sync unfroze 13881 com.hihonor.coauthservice for 10
11-09 14:10:42.601 I/ActivityManager( 2082): sync unfroze 5639 com.hihonor.searchservice for 10
11-09 14:10:42.603 I/ActivityManager( 2082): sync unfroze 13664 com.hihonor.detectrepair for 10
11-09 14:10:47.311 I/ActivityManager( 2082): Killing 10803:com.hihonor.id:core/u0a57 (adj 995): empty #31
11-09 14:10:47.381 I/ActivityManager( 2082): Dying app: ProcessRecord{d502c35 10803:com.hihonor.id:core/u0a57}, pid: 10803, isNeedClearup: true, isFromBinderDied:true, curProc:ProcessRecord{d502c35 10803:com.hihonor.id:core/u0a57}, reason:null
11-09 14:10:51.064 W/ActivityManager( 2082): Sending non-protected broadcast com.hihonor.intent.action.PG_AR_STATE_ACTION from system 3050:com.hihonor.iaware/1000 pkg com.hihonor.android.hnaps
11-09 14:10:51.079 I/ActivityTaskManager( 2082): removeSinkSurface:Surface(name=76d269b ActivityRecordInputSink com.dramaly.shortfilm/.ui.launcher.MainLauncherActivity)/@0xa13ef2f
11-09 14:10:51.079 I/ActivityTaskManager( 2082): removeSinkSurface:Surface(name=b75d562 ActivityRecordInputSink com.dramaly.shortfilm/com.google.android.gms.ads.AdActivity)/@0xda976c5
11-09 14:10:51.191 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@658b10f already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:51.217 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@5362dcc already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:51.225 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@9c0e091 already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:51.294 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@d01f4cd already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:51.338 W/ActivityManager( 2082): Sending non-protected broadcast com.hihonor.android.action.KEYGUARD_STATE from system 2719:com.android.systemui/u0a86 pkg com.android.systemui
11-09 14:10:51.379 W/ActivityManager( 2082): Sending non-protected broadcast com.android.keyguard.keyguardlocked from system 2719:com.android.systemui/u0a86 pkg com.android.systemui
11-09 14:10:51.411 I/ActivityManager( 2082): sync unfroze 12168 com.hihonor.android.totemweather for 7
11-09 14:10:51.538 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@b5f3ec7 already registered for pid 2895, callerPackage is com.hihonor.systemmanager
11-09 14:10:51.613 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@5ef7dea already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:51.763 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@a7d88fa already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:10:52.114 I/ActivityManager( 2082): freezing 5792 com.google.android.apps.messaging
11-09 14:10:56.500 W/ActivityManager( 2082): Receiver with filter android.content.IntentFilter@db66a8e already registered for pid 14106, callerPackage is com.hihonor.aod
11-09 14:11:02.624 I/ActivityManager( 2082): freezing 13881 com.hihonor.coauthservice
11-09 14:11:02.629 I/ActivityManager( 2082): freezing 5639 com.hihonor.searchservice
11-09 14:11:02.634 I/ActivityManager( 2082): freezing 13664 com.hihonor.detectrepair
^C
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % >....                                                                   
11-09 14:10:24.904 I/ActivityManager( 2082): ProcessRecord to clean, name: com.google.android.cellbroadcastreceiver, uid: 10172, app: ProcessRecord{b305d3 13123:com.google.android.cellbroadcastreceiver/u0a172}
11-09 14:10:24.917 I/ActivityManager( 2082): ProcessRecord to clean, name: com.google.android.apps.photos, uid: 10160, app: ProcessRecord{32357cf 13281:com.google.android.apps.photos/u0a160}
11-09 14:10:24.974 W/ActivityManager( 2082): Sending non-protected broadcast com.intent.action.dns_statistics from system 2082:system/1000 pkg android
11-09 14:10:25.270 W/ActivityManager( 2082): Sending non-protected broadcast com.android.nfc.action.LX_DATA from system 4782:com.android.nfc/1027 pkg com.android.nfc
11-09 14:10:25.533 I/ActivityManager( 2082): Start proc 15000:com.android.chrome:privileged_process0/u0a151 for service {com.android.chrome/org.chromium.content.app.PrivilegedProcessService0}
11-09 14:10:25.533 I/ActivityManager( 2082): ProcessObserver broadcast disabled
11-09 14:10:25.775 I/ActivityManager( 2082): freezing 10069 com.whatsapp
11-09 14:10:25.780 I/ActivityManager( 2082): freezing 12266 com.google.android.apps.youtube.music
11-09 14:10:25.784 I/ActivityManager( 2082): freezing 12651 com.google.android.youtube
11-09 14:10:25.891 I/ActivityManager( 2082): freezing 10666 com.hihonor.android.pushagent
11-09 14:10:26.659 W/ActivityManager( 2082): Slow operation: 153ms so far, now at startProcess: returned from zygote!
11-09 14:10:26.660 W/ActivityManager( 2082): Slow operation: 154ms so far, now at startProcess: done updating battery stats
11-09 14:10:26.660 W/ActivityManager( 2082): Slow operation: 154ms so far, now at startProcess: building log message
11-09 14:10:26.660 I/ActivityManager( 2082): Start proc 15052:com.android.chrome:sandboxed_process0:org.chromium.content.app.SandboxedProcessService0:0/u0ai0 for  {com.android.chrome/org.chromium.content.app.SandboxedProcessService0:0}
11-09 14:10:26.660 W/ActivityManager( 2082): Slow operation: 154ms so far, now at startProcess: starting to update pids map
11-09 14:10:26.661 I/ActivityManager( 2082): ProcessObserver broadcast disabled
11-09 14:10:26.661 W/ActivityManager( 2082): Slow operation: 155ms so far, now at startProcess: done updating pids map
11-09 14:10:26.979 I/ActivityManager( 2082): freezing 13881 com.hihonor.coauthservice
11-09 14:10:40.009 W/ActivityManager( 2082): Sending non-protected broadcast com.hihonor.intent.action.PG_AR_STATE_ACTION from system 3050:com.hihonor.iaware/1000 pkg com.hihonor.android.hnaps
1
zsh: parse error near `}'
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb shell pm disable-user --user 0 com.dramaly.shortfilm
Package com.dramaly.shortfilm new state: disabled-user
s3nnnzzzatyeeee@Stefanuts-MacBook-Air Android % adb uninstall com.dramaly.shortfilm
Success
```
