#! /bin/sh
rm -r java
mkdir -p java/dgmpp
mkdir -p java/jni
mkdir -p java/jni/ThirdParty
echo 'Running swig...'
swig -c++ -java -package dgmpp -outdir java/dgmpp -o java/jni/dgmpp_wrap.cxx libdgmpp/swig/dgmpp.i
cp libdgmpp/dgmpp/*.cpp java/jni/
cp libdgmpp/dgmpp/*.h java/jni/

cp libdgmpp/dgmpp/ThirdParty/*.* java/jni/ThirdParty
cp Android.mk java/jni/Android.mk
cp Application.mk java/jni/Application.mk
echo 'Running ndk-build'
ndk-build -C java/jni
