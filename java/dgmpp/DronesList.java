/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.8
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package dgmpp;

public class DronesList {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected DronesList(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(DronesList obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        dgmppJNI.delete_DronesList(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public DronesList() {
    this(dgmppJNI.new_DronesList__SWIG_0(), true);
  }

  public DronesList(long n) {
    this(dgmppJNI.new_DronesList__SWIG_1(n), true);
  }

  public long size() {
    return dgmppJNI.DronesList_size(swigCPtr, this);
  }

  public long capacity() {
    return dgmppJNI.DronesList_capacity(swigCPtr, this);
  }

  public void reserve(long n) {
    dgmppJNI.DronesList_reserve(swigCPtr, this, n);
  }

  public boolean isEmpty() {
    return dgmppJNI.DronesList_isEmpty(swigCPtr, this);
  }

  public void clear() {
    dgmppJNI.DronesList_clear(swigCPtr, this);
  }

  public void add(Drone x) {
    dgmppJNI.DronesList_add(swigCPtr, this, Drone.getCPtr(x), x);
  }

  public Drone get(int i) {
    long cPtr = dgmppJNI.DronesList_get(swigCPtr, this, i);
    return (cPtr == 0) ? null : new Drone(cPtr, true);
  }

  public void set(int i, Drone val) {
    dgmppJNI.DronesList_set(swigCPtr, this, i, Drone.getCPtr(val), val);
  }

}
