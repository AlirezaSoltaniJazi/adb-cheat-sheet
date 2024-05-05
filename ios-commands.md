# iOS Commands

## xcrun

### Lists all available iOS simulators

```shell
xcrun simctl list devices
```

### Boots a specific iOS simulator

```shell
xcrun simctl boot <device_id>
```

### Shuts down a specific iOS simulator

```shell
xcrun simctl shutdown <device_id>
```

### Resets a specific iOS simulator

```shell
xcrun simctl erase <device_id>
```

### Installs an app on a specific iOS simulator

```shell
xcrun simctl install <device_id> <app_path>
```

### Uninstalls an app from a specific iOS simulator

```shell
xcrun simctl uninstall <device_id> <app_bundle_id>
```

### Opens a URL on a specific iOS simulator

```shell
xcrun simctl openurl <device_id> <url>
```

### Sets the status bar time on a specific iOS simulator

```shell
xcrun simctl status_bar <device_id> override --time “9:41”
```

## ios-deploy

### Lists all connected iOS devices

```shell
ios-deploy --detect
```

### Installs an app on a connected iOS device

```shell
ios-deploy --debug --bundle <app_path>
```

### Installs and launches an app on a connected iOS device

```shell
ios-deploy --justlaunch --debug --bundle <app_path>
```

## xctrace

### Lists all available devices

```shell
xctrace list devices
```

### Records a new trace file using the specified template

```shell
xctrace record --template <template_name> --device <device_id> --output <trace_file_path>
```

### Converts supported files into .trace files

```shell
xctrace import --input <input_file_path> --output <trace_file_path>
```

### Exports data from .trace files to XML format

```shell
xctrace export --input XML <trace_file_path >--output <output_file_path >--format
```

## xcodebuild

### Runs unit tests for a specific scheme on an iOS simulator

```shell
xcodebuild -project <project_name.xcodeproj> -scheme <scheme_name> -destination ‘platform=iOS Simulator,name=iPhone 8,OS=latest’ test
```

### Archives an app for distribution

```shell
xcodebuild archive -project <project_name.xcodeproj> -scheme <scheme_name> -archivePath <archive_path>
```

### Exports an archived app for distribution

```shell
xcodebuild -exportArchive -archivePath <archive_path> -exportPath <export_path> -exportOptionsPlist <export_options_plist_path>
```

## security

### Lists all code signing identities

```shell
security find-identity -v -p codesigning
```

### Displays the contents of a .mobileprovision file

```shell
security cms -D -i <mobileprovision_file_path>
```
