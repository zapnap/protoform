# protoform

A protoform is a building block, a start point for building droidy things.
This little gem generates an application skeleton for a Mirah Android
application. Because Android is exciting, but Java is still kinda painful.

## Installation Prereqs

If you don't already have the Android SDK, download it from 
http://developer.android.com/sdk/index.html and follow the quick-start 
instructions. You'll need to create an Android Virtual Device (AVD) using the
Android Manager (`android`) found in the SDK.

You'll also want to have Mirah installed of course. You can get it from
GitHub: https://github.com/mirah/mirah

Make sure that jruby, mirah and mirahc are in your PATH as well as the Android
SDK tools directory.

## Usage

Install the gem and run the generator, specifying the package name you want to
use and the Android SDK location:

    gem install protoform
    protoform -S ~/android/sdk -T "Hello Android" -P org.zerosum.android HelloWorld

This should generate an app skeleton in the directory `HelloWorld`. Change to
that directory and run the ant debug task:

    ant debug

Assuming that your prerequisites are all set and the task succeeds, you should
now have a .apk file in your bin/ directory. Fire up the Android AVD Manager
(`android`) to launch the emulator, and install the APK using the adb tool:

    adb install bin/HelloWorld-debug.apk

You should now be able to navigate to the applications list in the emulator
and launch your application.

## Thanks

This work is based on / inspired by Technomancy's Android/Mirah experiments.

If you'd like to help out, contributions are definitely welcome. Mirah is
very slick, and with a little work we can make it a great alternative to
Java for Android development. Transform and roll out!

Copyright (c) 2010 Nick Plante. See LICENSE.txt for further details.

