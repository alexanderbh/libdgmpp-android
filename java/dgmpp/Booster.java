/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.8
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.dgmpp;

public class Booster extends Type {
  private transient long swigCPtr;

  protected Booster(long cPtr, boolean cMemoryOwn) {
    super(dgmppJNI.Booster_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  protected static long getCPtr(Booster obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        dgmppJNI.delete_Booster(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public int slot() {
    return dgmppJNI.Booster_slot(swigCPtr, this);
  }

}