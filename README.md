# wasab

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```
wasab
├─ .gitignore
├─ .metadata
├─ analysis_options.yaml
├─ android
│  ├─ .gitignore
│  ├─ .gradle
│  │  ├─ 7.6.3
│  │  │  ├─ checksums
│  │  │  │  └─ checksums.lock
│  │  │  ├─ fileChanges
│  │  │  │  └─ last-build.bin
│  │  │  ├─ fileHashes
│  │  │  │  └─ fileHashes.lock
│  │  │  ├─ gc.properties
│  │  │  └─ vcsMetadata
│  │  ├─ 8.8
│  │  │  ├─ checksums
│  │  │  │  ├─ checksums.lock
│  │  │  │  ├─ md5-checksums.bin
│  │  │  │  └─ sha1-checksums.bin
│  │  │  ├─ dependencies-accessors
│  │  │  │  └─ gc.properties
│  │  │  ├─ executionHistory
│  │  │  │  ├─ executionHistory.bin
│  │  │  │  └─ executionHistory.lock
│  │  │  ├─ expanded
│  │  │  ├─ fileChanges
│  │  │  │  └─ last-build.bin
│  │  │  ├─ fileHashes
│  │  │  │  ├─ fileHashes.bin
│  │  │  │  ├─ fileHashes.lock
│  │  │  │  └─ resourceHashesCache.bin
│  │  │  ├─ gc.properties
│  │  │  └─ vcsMetadata
│  │  ├─ buildOutputCleanup
│  │  │  ├─ buildOutputCleanup.lock
│  │  │  ├─ cache.properties
│  │  │  └─ outputFiles.bin
│  │  ├─ file-system.probe
│  │  ├─ noVersion
│  │  │  └─ buildLogic.lock
│  │  └─ vcs-1
│  │     └─ gc.properties
│  ├─ app
│  │  ├─ build.gradle
│  │  └─ src
│  │     ├─ debug
│  │     │  └─ AndroidManifest.xml
│  │     ├─ main
│  │     │  ├─ AndroidManifest.xml
│  │     │  ├─ java
│  │     │  │  └─ io
│  │     │  │     └─ flutter
│  │     │  │        └─ plugins
│  │     │  │           └─ GeneratedPluginRegistrant.java
│  │     │  ├─ kotlin
│  │     │  │  └─ com
│  │     │  │     └─ example
│  │     │  │        └─ wasab
│  │     │  │           └─ MainActivity.kt
│  │     │  └─ res
│  │     │     ├─ drawable
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ drawable-v21
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ mipmap-hdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-mdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ values
│  │     │     │  └─ styles.xml
│  │     │     └─ values-night
│  │     │        └─ styles.xml
│  │     └─ profile
│  │        └─ AndroidManifest.xml
│  ├─ build.gradle
│  ├─ gradle
│  │  └─ wrapper
│  │     ├─ gradle-wrapper.jar
│  │     └─ gradle-wrapper.properties
│  ├─ gradle.properties
│  ├─ gradlew
│  ├─ gradlew.bat
│  ├─ local.properties
│  └─ settings.gradle
├─ assets
│  ├─ fonts
│  │  ├─ font_bold.ttf
│  │  └─ font_regular.ttf
│  ├─ images
│  │  ├─ app_icon
│  │  ├─ gif
│  │  ├─ icons
│  │  │  ├─ camera.png
│  │  │  └─ welcome.png
│  │  └─ svg
│  │     ├─ apple.svg
│  │     ├─ cart.svg
│  │     ├─ chats.svg
│  │     ├─ female.svg
│  │     ├─ google.svg
│  │     ├─ home.svg
│  │     ├─ logo.svg
│  │     ├─ male.svg
│  │     ├─ person.svg
│  │     ├─ phone.svg
│  │     ├─ profile.svg
│  │     └─ statistics.svg
│  └─ languages
│     ├─ ar.json
│     └─ en.json
├─ ios
│  ├─ .gitignore
│  ├─ Flutter
│  │  ├─ AppFrameworkInfo.plist
│  │  ├─ Debug.xcconfig
│  │  ├─ flutter_export_environment.sh
│  │  ├─ Generated.xcconfig
│  │  └─ Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  ├─ AppIcon.appiconset
│  │  │  │  ├─ Contents.json
│  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │  │  │  ├─ Icon-App-20x20@1x.png
│  │  │  │  ├─ Icon-App-20x20@2x.png
│  │  │  │  ├─ Icon-App-20x20@3x.png
│  │  │  │  ├─ Icon-App-29x29@1x.png
│  │  │  │  ├─ Icon-App-29x29@2x.png
│  │  │  │  ├─ Icon-App-29x29@3x.png
│  │  │  │  ├─ Icon-App-40x40@1x.png
│  │  │  │  ├─ Icon-App-40x40@2x.png
│  │  │  │  ├─ Icon-App-40x40@3x.png
│  │  │  │  ├─ Icon-App-60x60@2x.png
│  │  │  │  ├─ Icon-App-60x60@3x.png
│  │  │  │  ├─ Icon-App-76x76@1x.png
│  │  │  │  ├─ Icon-App-76x76@2x.png
│  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │  │  └─ LaunchImage.imageset
│  │  │     ├─ Contents.json
│  │  │     ├─ LaunchImage.png
│  │  │     ├─ LaunchImage@2x.png
│  │  │     ├─ LaunchImage@3x.png
│  │  │     └─ README.md
│  │  ├─ Base.lproj
│  │  │  ├─ LaunchScreen.storyboard
│  │  │  └─ Main.storyboard
│  │  ├─ GeneratedPluginRegistrant.h
│  │  ├─ GeneratedPluginRegistrant.m
│  │  ├─ Info.plist
│  │  └─ Runner-Bridging-Header.h
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     └─ WorkspaceSettings.xcsettings
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     ├─ IDEWorkspaceChecks.plist
│  │     └─ WorkspaceSettings.xcsettings
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ lib
│  ├─ core
│  │  ├─ api_checker.dart
│  │  ├─ app_colors
│  │  │  └─ app_colors.dart
│  │  ├─ app_theme
│  │  │  └─ theme.dart
│  │  ├─ app_url
│  │  │  └─ app_url.dart
│  │  ├─ constants
│  │  │  └─ constants.dart
│  │  ├─ dimens
│  │  │  └─ dimens.dart
│  │  ├─ logger.dart
│  │  ├─ navigator
│  │  │  └─ navigator.dart
│  │  ├─ text_styles
│  │  │  └─ text_styles.dart
│  │  └─ utils
│  │     ├─ preferences.dart
│  │     └─ social_media_helper.dart
│  ├─ datasource
│  │  └─ remote
│  │     ├─ dio
│  │     │  ├─ dio_client.dart
│  │     │  ├─ logger.dart
│  │     │  └─ logging_interceptor.dart
│  │     └─ exception
│  │        └─ api_error_handler.dart
│  ├─ injection.dart
│  ├─ main.dart
│  ├─ models
│  │  ├─ api_response.dart
│  │  └─ error_response.dart
│  ├─ modelview
│  ├─ multiproviders.dart
│  ├─ repositories
│  │  └─ auth_repository.dart
│  ├─ services
│  ├─ theme_provider.dart
│  └─ ui
│     ├─ auth
│     │  ├─ login_screen
│     │  │  ├─ login_screen.dart
│     │  │  └─ welcome_screen.dart
│     │  ├─ otp_screen
│     │  │  └─ otp_screen.dart
│     │  └─ sign_up_screens
│     │     ├─ name_screen.dart
│     │     └─ photo_screen.dart
│     ├─ home_screen
│     │  ├─ bottom_navigation_screens
│     │  │  ├─ calls_screen
│     │  │  │  └─ calls_screen.dart
│     │  │  ├─ chat_screen
│     │  │  │  └─ chat_screen.dart
│     │  │  ├─ contacts_screen
│     │  │  │  └─ contacts_screen.dart
│     │  │  └─ profile_screen
│     │  │     └─ profile_screen.dart
│     │  ├─ main_app_layout
│     │  │  ├─ main_app_layout.dart
│     │  │  └─ widgets
│     │  │     ├─ bottom_navigation.dart
│     │  │     └─ bottom_navigation_item.dart
│     │  └─ provider
│     │     └─ layout_provider.dart
│     ├─ splash_screen
│     │  ├─ splash_screen.dart
│     │  └─ widgets
│     │     └─ button_start.dart
│     └─ widgets
│        ├─ custom_app_bar
│        │  └─ custom_app_bar.dart
│        ├─ custom_asset_image
│        │  └─ custom_asset_image.dart
│        ├─ custom_button
│        │  └─ custom_button.dart
│        ├─ custom_button_nav_bar
│        │  └─ custom_button_nav_bar.dart
│        ├─ custom_svg
│        │  └─ custom_svg_icon.dart
│        ├─ custom_text
│        │  └─ custom_text.dart
│        ├─ custom_text_form
│        │  └─ custom_text_form.dart
│        ├─ dialogs
│        │  └─ scaffold_messanger.dart
│        └─ list_animation
│           └─ list_animation.dart
├─ pubspec.lock
├─ pubspec.yaml
├─ README.md
└─ test
   └─ widget_test.dart

```