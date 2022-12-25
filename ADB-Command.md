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
