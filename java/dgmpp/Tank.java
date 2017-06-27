/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.8
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package dgmpp;

public class Tank {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected Tank(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(Tank obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        dgmppJNI.delete_Tank(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public void setArmorRepair(float value) {
    dgmppJNI.Tank_armorRepair_set(swigCPtr, this, value);
  }

  public float getArmorRepair() {
    return dgmppJNI.Tank_armorRepair_get(swigCPtr, this);
  }

  public void setHullRepair(float value) {
    dgmppJNI.Tank_hullRepair_set(swigCPtr, this, value);
  }

  public float getHullRepair() {
    return dgmppJNI.Tank_hullRepair_get(swigCPtr, this);
  }

  public void setShieldRepair(float value) {
    dgmppJNI.Tank_shieldRepair_set(swigCPtr, this, value);
  }

  public float getShieldRepair() {
    return dgmppJNI.Tank_shieldRepair_get(swigCPtr, this);
  }

  public void setPassiveShield(float value) {
    dgmppJNI.Tank_passiveShield_set(swigCPtr, this, value);
  }

  public float getPassiveShield() {
    return dgmppJNI.Tank_passiveShield_get(swigCPtr, this);
  }

  public Tank() {
    this(dgmppJNI.new_Tank(), true);
  }

}
