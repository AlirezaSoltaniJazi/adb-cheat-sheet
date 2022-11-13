ADB Commands
Device android version:
adb -s {{device_name}} shell getprop ro.build.version.release

Devices information:
adb devices -l

Device API level:
adb -s {{device_name}} shell getprop ro.build.version.sdk

Device all information:
adb -s {{device_name}} shell getprop

Open link in target device:
adb -s {{device_name}} shell am start -a android.intent.action.VIEW -d {{link_address}} {{package_name_optional}}

Get emulator list:
emulator -list-avds

Rum specific emulator:
emulator @{{emulator_name}}

Connect device over TCP/Wireless in the same local network:
adb -s {{device_name}} tcpip {{port_number}}
adb connect {{device_ip}}:{{port_number}}

Use logcat in console:
adb -s {{device_name}} logcat -c {{package_name_optional}}

Get device IP address:
adb -s {{device_name}} shell ip -f inet addr show wlan0
adb -s {{device_name}}  shell ip r

Get APP PID:
adb shell pidof {{package_name}}

Deeplink:
adb -s emulator-5554 shell am start -W -a android.intent.action.VIEW -d "http://cafebazaar.ir/balance" com.farsitel.bazaar