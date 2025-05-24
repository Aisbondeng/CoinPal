#!/bin/bash

# Nama baru aplikasi dan package ID
APP_NAME="CoinPal"
PACKAGE_ID="com.CoinPal.app"
OLD_PACKAGE_ID="com.example.CoinPal"

# Ganti label aplikasi di AndroidManifest.xml
sed -i "s/android:label=\"[^\"]*\"/android:label=\"$APP_NAME\"/" android/app/src/main/AndroidManifest.xml

# Ganti nama package di build.gradle
sed -i "s/$OLD_PACKAGE_ID/$PACKAGE_ID/" android/app/build.gradle

# Ganti nama di pubspec.yaml
sed -i "s/^name: .*/name: cryvault_app/" pubspec.yaml

echo "Nama aplikasi berhasil diganti ke '$APP_NAME'"
echo "Package ID Android diubah menjadi '$PACKAGE_ID'"
