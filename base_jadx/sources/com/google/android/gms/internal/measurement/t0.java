package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class t0 extends i0 implements v0 {
    public t0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void beginAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeLong(j10);
        y0(parcelW0, 23);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        k0.b(parcelW0, bundle);
        y0(parcelW0, 9);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void endAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeLong(j10);
        y0(parcelW0, 24);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void generateEventId(y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 22);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void getCachedAppInstanceId(y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 19);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void getConditionalUserProperties(String str, String str2, y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 10);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void getCurrentScreenClass(y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 17);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void getCurrentScreenName(y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 16);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void getGmpAppId(y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 21);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void getMaxUserProperties(String str, y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 6);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void getUserProperties(String str, String str2, boolean z10, y0 y0Var) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        ClassLoader classLoader = k0.f3592a;
        parcelW0.writeInt(z10 ? 1 : 0);
        k0.c(parcelW0, y0Var);
        y0(parcelW0, 5);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void initialize(z3.b bVar, e1 e1Var, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        k0.b(parcelW0, e1Var);
        parcelW0.writeLong(j10);
        y0(parcelW0, 1);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        k0.b(parcelW0, bundle);
        parcelW0.writeInt(z10 ? 1 : 0);
        parcelW0.writeInt(z11 ? 1 : 0);
        parcelW0.writeLong(j10);
        y0(parcelW0, 2);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void logHealthData(int r22, String str, z3.b bVar, z3.b bVar2, z3.b bVar3) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeInt(5);
        parcelW0.writeString(str);
        k0.c(parcelW0, bVar);
        k0.c(parcelW0, bVar2);
        k0.c(parcelW0, bVar3);
        y0(parcelW0, 33);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void onActivityCreated(z3.b bVar, Bundle bundle, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        k0.b(parcelW0, bundle);
        parcelW0.writeLong(j10);
        y0(parcelW0, 27);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void onActivityDestroyed(z3.b bVar, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        parcelW0.writeLong(j10);
        y0(parcelW0, 28);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void onActivityPaused(z3.b bVar, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        parcelW0.writeLong(j10);
        y0(parcelW0, 29);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void onActivityResumed(z3.b bVar, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        parcelW0.writeLong(j10);
        y0(parcelW0, 30);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void onActivitySaveInstanceState(z3.b bVar, y0 y0Var, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        k0.c(parcelW0, y0Var);
        parcelW0.writeLong(j10);
        y0(parcelW0, 31);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void onActivityStarted(z3.b bVar, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        parcelW0.writeLong(j10);
        y0(parcelW0, 25);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void onActivityStopped(z3.b bVar, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        parcelW0.writeLong(j10);
        y0(parcelW0, 26);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void registerOnMeasurementEventListener(b1 b1Var) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, b1Var);
        y0(parcelW0, 35);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.b(parcelW0, bundle);
        parcelW0.writeLong(j10);
        y0(parcelW0, 8);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void setCurrentScreen(z3.b bVar, String str, String str2, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.c(parcelW0, bVar);
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        parcelW0.writeLong(j10);
        y0(parcelW0, 15);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void setDataCollectionEnabled(boolean z10) throws RemoteException {
        Parcel parcelW0 = w0();
        ClassLoader classLoader = k0.f3592a;
        parcelW0.writeInt(z10 ? 1 : 0);
        y0(parcelW0, 39);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public final void setUserProperty(String str, String str2, z3.b bVar, boolean z10, long j10) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        k0.c(parcelW0, bVar);
        parcelW0.writeInt(z10 ? 1 : 0);
        parcelW0.writeLong(j10);
        y0(parcelW0, 4);
    }
}
