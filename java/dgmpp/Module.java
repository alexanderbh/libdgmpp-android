/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.8
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package dgmpp;

public class Module extends Item {
  private transient long swigCPtr;
  private boolean swigCMemOwnDerived;

  protected Module(long cPtr, boolean cMemoryOwn) {
    super(dgmppJNI.Module_SWIGSmartPtrUpcast(cPtr), true);
    swigCMemOwnDerived = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(Module obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwnDerived) {
        swigCMemOwnDerived = false;
        dgmppJNI.delete_Module(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public Module.Slot getSlot() {
    return Module.Slot.swigToEnum(dgmppJNI.Module_getSlot(swigCPtr, this));
  }

  public Module.Hardpoint getHardpoint() {
    return Module.Hardpoint.swigToEnum(dgmppJNI.Module_getHardpoint(swigCPtr, this));
  }

  public boolean canHaveState(Module.State state) {
    return dgmppJNI.Module_canHaveState(swigCPtr, this, state.swigValue());
  }

  public Module.State getState() {
    return Module.State.swigToEnum(dgmppJNI.Module_getState(swigCPtr, this));
  }

  public Module.State getPreferredState() {
    return Module.State.swigToEnum(dgmppJNI.Module_getPreferredState(swigCPtr, this));
  }

  public void setState(Module.State state) {
    dgmppJNI.Module_setState(swigCPtr, this, state.swigValue());
  }

  public Charge setCharge(int typeID) {
    long cPtr = dgmppJNI.Module_setCharge(swigCPtr, this, typeID);
    return (cPtr == 0) ? null : new Charge(cPtr, true);
  }

  public void clearCharge() {
    dgmppJNI.Module_clearCharge(swigCPtr, this);
  }

  public Charge getCharge() {
    long cPtr = dgmppJNI.Module_getCharge(swigCPtr, this);
    return (cPtr == 0) ? null : new Charge(cPtr, true);
  }

  public TypesList getChargeGroups() {
    return new TypesList(dgmppJNI.Module_getChargeGroups(swigCPtr, this), false);
  }

  public int getChargeSize() {
    return dgmppJNI.Module_getChargeSize(swigCPtr, this);
  }

  public boolean requireTarget() {
    return dgmppJNI.Module_requireTarget(swigCPtr, this);
  }

  public void setTarget(Ship target) {
    dgmppJNI.Module_setTarget__SWIG_0(swigCPtr, this, Ship.getCPtr(target), target);
  }

  public void setTarget() {
    dgmppJNI.Module_setTarget__SWIG_1(swigCPtr, this);
  }

  public void clearTarget() {
    dgmppJNI.Module_clearTarget(swigCPtr, this);
  }

  public Ship getTarget() {
    long cPtr = dgmppJNI.Module_getTarget(swigCPtr, this);
    return (cPtr == 0) ? null : new Ship(cPtr, true);
  }

  public float getReloadTime() {
    return dgmppJNI.Module_getReloadTime(swigCPtr, this);
  }

  public float getCycleTime() {
    return dgmppJNI.Module_getCycleTime(swigCPtr, this);
  }

  public float getRawCycleTime() {
    return dgmppJNI.Module_getRawCycleTime(swigCPtr, this);
  }

  public boolean factorReload() {
    return dgmppJNI.Module_factorReload(swigCPtr, this);
  }

  public void setFactorReload(boolean factorReload) {
    dgmppJNI.Module_setFactorReload(swigCPtr, this, factorReload);
  }

  public int getCharges() {
    return dgmppJNI.Module_getCharges(swigCPtr, this);
  }

  public int getShots() {
    return dgmppJNI.Module_getShots(swigCPtr, this);
  }

  public float getCapUse() {
    return dgmppJNI.Module_getCapUse(swigCPtr, this);
  }

  public float getCpuUse() {
    return dgmppJNI.Module_getCpuUse(swigCPtr, this);
  }

  public float getPowerGridUse() {
    return dgmppJNI.Module_getPowerGridUse(swigCPtr, this);
  }

  public float getCalibrationUse() {
    return dgmppJNI.Module_getCalibrationUse(swigCPtr, this);
  }

  public DamageVector getVolley() {
    return new DamageVector(dgmppJNI.Module_getVolley(swigCPtr, this), true);
  }

  public DamageVector getDps() {
    return new DamageVector(dgmppJNI.Module_getDps(swigCPtr, this), true);
  }

  public float getMaxRange() {
    return dgmppJNI.Module_getMaxRange(swigCPtr, this);
  }

  public float getFalloff() {
    return dgmppJNI.Module_getFalloff(swigCPtr, this);
  }

  public float getAccuracyScore() {
    return dgmppJNI.Module_getAccuracyScore(swigCPtr, this);
  }

  public float getSignatureResolution() {
    return dgmppJNI.Module_getSignatureResolution(swigCPtr, this);
  }

  public float getAngularVelocity(float targetSignature, float hitChance) {
    return dgmppJNI.Module_getAngularVelocity__SWIG_0(swigCPtr, this, targetSignature, hitChance);
  }

  public float getAngularVelocity(float targetSignature) {
    return dgmppJNI.Module_getAngularVelocity__SWIG_1(swigCPtr, this, targetSignature);
  }

  public float getMiningYield() {
    return dgmppJNI.Module_getMiningYield(swigCPtr, this);
  }

  public float getLifeTime() {
    return dgmppJNI.Module_getLifeTime(swigCPtr, this);
  }

  public void setLifeTime(float lifeTime) {
    dgmppJNI.Module_setLifeTime(swigCPtr, this, lifeTime);
  }

  public final static class Slot {
    public final static Module.Slot SLOT_UNKNOWN = new Module.Slot("SLOT_UNKNOWN", dgmppJNI.Module_SLOT_UNKNOWN_get());
    public final static Module.Slot SLOT_NONE = new Module.Slot("SLOT_NONE", dgmppJNI.Module_SLOT_NONE_get());
    public final static Module.Slot SLOT_HI = new Module.Slot("SLOT_HI");
    public final static Module.Slot SLOT_MED = new Module.Slot("SLOT_MED");
    public final static Module.Slot SLOT_LOW = new Module.Slot("SLOT_LOW");
    public final static Module.Slot SLOT_RIG = new Module.Slot("SLOT_RIG");
    public final static Module.Slot SLOT_SUBSYSTEM = new Module.Slot("SLOT_SUBSYSTEM");
    public final static Module.Slot SLOT_STARBASE_STRUCTURE = new Module.Slot("SLOT_STARBASE_STRUCTURE");
    public final static Module.Slot SLOT_MODE = new Module.Slot("SLOT_MODE");
    public final static Module.Slot SLOT_SERVICE = new Module.Slot("SLOT_SERVICE");

    public final int swigValue() {
      return swigValue;
    }

    public String toString() {
      return swigName;
    }

    public static Slot swigToEnum(int swigValue) {
      if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
        return swigValues[swigValue];
      for (int i = 0; i < swigValues.length; i++)
        if (swigValues[i].swigValue == swigValue)
          return swigValues[i];
      throw new IllegalArgumentException("No enum " + Slot.class + " with value " + swigValue);
    }

    private Slot(String swigName) {
      this.swigName = swigName;
      this.swigValue = swigNext++;
    }

    private Slot(String swigName, int swigValue) {
      this.swigName = swigName;
      this.swigValue = swigValue;
      swigNext = swigValue+1;
    }

    private Slot(String swigName, Slot swigEnum) {
      this.swigName = swigName;
      this.swigValue = swigEnum.swigValue;
      swigNext = this.swigValue+1;
    }

    private static Slot[] swigValues = { SLOT_UNKNOWN, SLOT_NONE, SLOT_HI, SLOT_MED, SLOT_LOW, SLOT_RIG, SLOT_SUBSYSTEM, SLOT_STARBASE_STRUCTURE, SLOT_MODE, SLOT_SERVICE };
    private static int swigNext = 0;
    private final int swigValue;
    private final String swigName;
  }

  public final static class State {
    public final static Module.State STATE_UNKNOWN = new Module.State("STATE_UNKNOWN", dgmppJNI.Module_STATE_UNKNOWN_get());
    public final static Module.State STATE_OFFLINE = new Module.State("STATE_OFFLINE");
    public final static Module.State STATE_ONLINE = new Module.State("STATE_ONLINE");
    public final static Module.State STATE_ACTIVE = new Module.State("STATE_ACTIVE");
    public final static Module.State STATE_OVERLOADED = new Module.State("STATE_OVERLOADED");

    public final int swigValue() {
      return swigValue;
    }

    public String toString() {
      return swigName;
    }

    public static State swigToEnum(int swigValue) {
      if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
        return swigValues[swigValue];
      for (int i = 0; i < swigValues.length; i++)
        if (swigValues[i].swigValue == swigValue)
          return swigValues[i];
      throw new IllegalArgumentException("No enum " + State.class + " with value " + swigValue);
    }

    private State(String swigName) {
      this.swigName = swigName;
      this.swigValue = swigNext++;
    }

    private State(String swigName, int swigValue) {
      this.swigName = swigName;
      this.swigValue = swigValue;
      swigNext = swigValue+1;
    }

    private State(String swigName, State swigEnum) {
      this.swigName = swigName;
      this.swigValue = swigEnum.swigValue;
      swigNext = this.swigValue+1;
    }

    private static State[] swigValues = { STATE_UNKNOWN, STATE_OFFLINE, STATE_ONLINE, STATE_ACTIVE, STATE_OVERLOADED };
    private static int swigNext = 0;
    private final int swigValue;
    private final String swigName;
  }

  public final static class Hardpoint {
    public final static Module.Hardpoint HARDPOINT_NONE = new Module.Hardpoint("HARDPOINT_NONE", dgmppJNI.Module_HARDPOINT_NONE_get());
    public final static Module.Hardpoint HARDPOINT_LAUNCHER = new Module.Hardpoint("HARDPOINT_LAUNCHER");
    public final static Module.Hardpoint HARDPOINT_TURRET = new Module.Hardpoint("HARDPOINT_TURRET");

    public final int swigValue() {
      return swigValue;
    }

    public String toString() {
      return swigName;
    }

    public static Hardpoint swigToEnum(int swigValue) {
      if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
        return swigValues[swigValue];
      for (int i = 0; i < swigValues.length; i++)
        if (swigValues[i].swigValue == swigValue)
          return swigValues[i];
      throw new IllegalArgumentException("No enum " + Hardpoint.class + " with value " + swigValue);
    }

    private Hardpoint(String swigName) {
      this.swigName = swigName;
      this.swigValue = swigNext++;
    }

    private Hardpoint(String swigName, int swigValue) {
      this.swigName = swigName;
      this.swigValue = swigValue;
      swigNext = swigValue+1;
    }

    private Hardpoint(String swigName, Hardpoint swigEnum) {
      this.swigName = swigName;
      this.swigValue = swigEnum.swigValue;
      swigNext = this.swigValue+1;
    }

    private static Hardpoint[] swigValues = { HARDPOINT_NONE, HARDPOINT_LAUNCHER, HARDPOINT_TURRET };
    private static int swigNext = 0;
    private final int swigValue;
    private final String swigName;
  }

}
