Get list of devices:  
adb devices

Choose between devices:  
adb -s device_name

Get android device version:  
adb shell getprop ro.build.version.release

Get devices information:  
adb devices -l

Get device api level:  
adb shell getprop ro.build.version.sdk

Get all device information:  
adb shell getprop

Open a link or deeplink in a device:  
adb shell am start -a android.intent.action.VIEW -d link_address package_name_optional  
adb shell am start -W -a android.intent.action.VIEW -d link_address package_name_optional

### ADB Connect
Connect device over TCP/Wireless in the same local network:  
adb tcpip port_number  
adb connect device_ip:port_number

### ADB server
This Command is used to kill an adb server if it is running  
adb kill-server

This Command is used to start an adb server  
adb start-server

### ADB logcat
Use logcat in console  
adb logcat -c package_name_optional

This command is used to display the device logcat
adb logcat *:log_cat_type
Logcat types:
* V: Only shows the Verbose level which is the lowest priority
* D: Only shows the Debug level
* I: Only shows the Info level
* W: Only shows the Warning level
* E: Only shows the Error level
* F: Only shows the Fatal level
* S: Only shows the Silent level which is the highest priority

Shows buffer containing radio/telephone related messages  
adb logcat -b radio

Shows buffer containing event related messages  
adb logcat -b event

Clear the entire log table and exit  
adb logcat -c

Dump the entire log to screen and exit  
adb logcat -d

Writes log messages to the test.logs file  
adb logcat -f test.logs

Prints the size of specified log buffer and exits  
adb logcat -g

Sets the maximum number of rotated logs to the specified count value  
adb logcat -n 5

Get device IP address:  
adb shell ip -f inet addr show wlan0
adb shell ip r

Get APP PID:  
adb shell pidof package_name

### ADB Install
adb install apk_name.apk  
Options:  
* -r: Replace an existing application by deleting an reinstalling it keeping its data in the process.
* -t: Install an APK while allowing test packages.
* -g: Install an APK and grant all the runtime permissions that the app asks for.
* -d: Install an APK by allowing version code downgrade. Works on debuggable packages only.
* --fastdeploy: Install an APK by using fast deploy.
* --no-streaming: Install an APK by always pushing the APK to the device and invoking Package Manager as separate steps.
* --instant: Install the app as an ephemeral install app.

### ADB uninstall
Uninstalls the package but keeps the data and cache directories intact  
adb uninstall -k test.apk

adb uninstall packageName (clean uninstall)  
adb uninstall package_name

Send a sms  
adb emu sms send "operator_number" "text_message"

Check installer source:  
adb -s emulator-5556 shell pm list packages -i ir.divar

Set source package:  
adb -s emulator-5554 shell su 11234 'pm set-installer ir.divar ir.divar'

### ADB Bucket
Get current bucket  
adb shell am get-standby-bucket package_name  

Set a bucket  
adb shell am set-standby-bucket package_name bucket_number

Buckets List:  
**STANDBY_BUCKET_NEVER** = 50, The app has never been used.  
**STANDBY_BUCKET_EXEMPTED** = 5, Exempted battery optimizations and the Doze and App Standy does not apply to the app.  
**STANDBY_BUCKET_ACTIVE** = 10, The app was used very recently, currently in use or likely to be used very soon.
Standby bucket values that are &le; {@link #STANDBY_BUCKET_ACTIVE} will not be throttled by the system while they are in this bucket.
Buckets &gt; {@link #STANDBY_BUCKET_ACTIVE} will most likely be restricted in some way.
For instance, jobs and alarms may be deferred. @see #getAppStandbyBucket()  
**STANDBY_BUCKET_WORKING_SET** = 20, The app was used recently and/or likely to be used in the next few hours.
Restrictions will apply to these apps, such as deferral of jobs and alarms.
@see #getAppStandbyBucket()  
**STANDBY_BUCKET_FREQUENT** = 30, The app has not be used for several days and/or is unlikely to be used for several days.
Apps in this bucket will have more restrictions, including network restrictions, 
except during certain short periods (at a minimum, once a day) when they are allowed to execute
jobs, access the network, etc. @see #getAppStandbyBucket()
**STANDBY_BUCKET_RESTRICTED** = 45, The app has not be used for several days, is unlikely to be used for several days, 
and has been misbehaving in some manner. Apps in this bucket will have the most restrictions, 
including network restrictions and additional restrictions on jobs. 
Note: this bucket is not enabled in {@link Build.VERSION_CODES#R}. @see #getAppStandbyBucket()
