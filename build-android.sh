#!/bin/bash

# Build the web app
echo "Building web application..."
npm run build

# Initialize Capacitor if not already done
if [ ! -d "android" ]; then
  echo "Initializing Capacitor..."
  npx cap init Arshinya com.arshinya.chat
  npx cap add android
else
  echo "Capacitor already initialized"
fi

# Sync web build to Capacitor
echo "Syncing web build to Capacitor..."
npx cap sync

echo "Opening Android Studio..."
npx cap open android

echo "To build the APK in Android Studio:"
echo "1. Go to Build > Build Bundle(s) / APK(s) > Build APK(s)"
echo "2. The APK will be generated in android/app/build/outputs/apk/"