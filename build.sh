#! /bin/bash
rm -fr java
mkdir -p java/dgmpp
mkdir -p java/jni
mkdir -p java/jni/SDE

#echo 'Running swig...'
swig -c++ -java -package com.dgmpp -outdir java/dgmpp -o java/jni/dgmpp_wrap.cxx -Ilibdgmpp/src libdgmpp/swig/dgmpp.i
cd java/dgmpp
for i in *; do
 sed -i 's/transient//g' "$i";
 sed -i 's/public class Type {/public class Type implements java.io.Serializable {/g' "$i";
 sed -i 's/public class Module extends Type/public class Module extends Type implements java.io.Serializable/g' "$i";
 sed -i 's/public class Charge extends Type/public class Charge extends Type implements java.io.Serializable/g' "$i";
 
done
sed -i 's/private  long swigCPtr;/private  long swigCPtr;private FittingModule fittingModule;public FittingModule getFittingModule() {return fittingModule;}public void setFittingModule(FittingModule fittingModule) {this.fittingModule = fittingModule;}/g' Module.java 
sed -i 's/package com.dgmpp;/package com.dgmpp;import dk.alxb.evedroid.evemodel.userdata.fitting.model.FittingModule;/g' Module.java 

cd ..
cd ..

#cp libdgmpp/java-wrapper/jni/*.cxx java/jni
cp libdgmpp/src/*.cpp java/jni/
cp libdgmpp/src/*.hpp java/jni/
cp libdgmpp/src/SDE/*.* java/jni/SDE
cp Android.mk java/jni/Android.mk
cp Application.mk java/jni/Application.mk


echo $ANDROID_NDK_VERSION
echo 'Running ndk-build'
ndk-build -C java/jni
