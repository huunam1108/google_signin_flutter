## google_signin_flutter

A sample google signin without using firebase, runs on android/iOS.

## Getting Started

1. Go to your project from [Google Cloud Console](https://console.cloud.google.com/)
2. Select menu `APIs & Services > Credentials`
3. Create Credentials > OAuth Client ID
4. Select Application type and input required fields
5. With iOS, download the Plist file, save as `GoogleService-Info.plist` to `ios/Runner`, then open in XCode.

- Select `File > Add files to Runner`, select `GoogleService-Info.plist`.
- Add the below code to `Info.plist`

```xml
<key>CFBundleURLTypes</key>
<array>
<dict>
    <key>CFBundleTypeRole</key>
    <string>Editor</string>
    <key>CFBundleURLSchemes</key>
    <array>
        <!-- IMPORTANT: YOUR_REVERSED_CLIENT_ID FROM GoogleService-Info.plist TO HERE -->
        <string>YOUR_REVERSED_CLIENT_ID</string>
    </array>
</dict>
</array>
```

6. Other commands to generate code (Riverpod generation)

- `flutter pub get`
- `dart run build_runner build --delete-conflicting-outputs`

7. Run and test
