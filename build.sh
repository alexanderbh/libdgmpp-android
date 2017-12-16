#! /bin/bash
rm -fr java
mkdir -p java/dgmpp
mkdir -p java/jni
mkdir -p java/jni/SDE

echo 'Running swig...'
swig -c++ -java -package com.dgmpp.jdgmpp -outdir java/dgmpp -o java/jni/dgmpp_wrap.cxx -Ilibdgmpp/src/SDE libdgmpp/swig/dgmpp.i

cp libdgmpp/src/*.cpp java/jni/
cp libdgmpp/src/*.hpp java/jni/
cp libdgmpp/src/SDE/*.* java/jni/
cp Android.mk java/jni/Android.mk
cp Application.mk java/jni/Application.mk


echo $ANDROID_NDK_VERSION
echo 'Running ndk-build'
ndk-build -C java/jni
