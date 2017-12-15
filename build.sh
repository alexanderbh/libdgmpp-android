#! /bin/bash
rm -fr java
mkdir -p java/dgmpp
mkdir -p java/jni
mkdir -p java/jni/SDE

echo 'Running swig 2...'
swig -c++ -java -package dgmpp -outdir java/dgmpp -Ilibdgmpp/src -Ilibdgmpp/src/SDE -o java/jni/dgmpp_wrap.cxx libdgmpp/swig2/dgmpp.i

#echo 'Running swig...'
#swig -c++ -java -package dgmpp -outdir java/dgmpp -o java/jni/dgmpp_wrap.cxx libdgmpp/swig/dgmpp.i


#cp libdgmpp/src/*.cpp java/jni/
#cp libdgmpp/src/*.hpp java/jni/
#
#cp libdgmpp/src/SDE/*.* java/jni/SDE
#cp Android.mk java/jni/Android.mk
#cp Application.mk java/jni/Application.mk
#ndk-build --version
#echo $ANDROID_NDK_VERSION
#echo 'Running ndk-build'
#ndk-build -C java/jni
