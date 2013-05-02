package com.google.android.apps.paco;

import java.util.HashMap;
import java.util.Map;

import android.os.Parcel;
import android.os.Parcelable;

public class Trigger extends SignalingMechanism implements Parcelable{

  public static final int HANGUP = 1;
  
  public static final Map<Integer, String> EVENT_NAMES;
  static {
    EVENT_NAMES = new HashMap<Integer, String>();
    EVENT_NAMES.put(HANGUP, "Phone Hangup");
  }
  
  
  private int eventCode;
  private long delay;

  public int getEventCode() {
    return eventCode;
  }

  public void setEventCode(int code) {
    this.eventCode = code;
  }

  public Trigger(int eventCode) {
    this.eventCode = eventCode;
  }
  
  public Trigger() {
  }

  public boolean match(int event) {
    return event == eventCode;
  }

  @Override
  public int describeContents() {
    return 0;
  }

  @Override
  public void writeToParcel(Parcel dest, int flags) {
    dest.writeInt(eventCode);    
    dest.writeLong(delay);
    dest.writeInt(timeout);
  }

  public static class Creator implements Parcelable.Creator<Trigger> {

    public Trigger createFromParcel(Parcel source) {
      Trigger trigger = new Trigger();
      trigger.eventCode = source.readInt();
      trigger.delay = source.readLong();
      trigger.timeout = source.readInt();
      return trigger;
    }

    public Trigger[] newArray(int size) {
      return new Trigger[size];
    }
  }
  
  public static final Creator CREATOR = new Creator();

  public long getDelay() {
    return delay;
  }

  public static String getNameForCode(int code2) {
    return EVENT_NAMES.get(code2);
  }

  @Override
  public String toString() {
    return "Trigger: event: " + Trigger.getNameForCode(this.eventCode) + ", delay = " + Long.toString(delay);
  }
  
  

}
