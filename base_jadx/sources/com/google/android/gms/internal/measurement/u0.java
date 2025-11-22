package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import z3.b;

/* loaded from: classes.dex */
public abstract class u0 extends j0 implements v0 {
    public u0() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static v0 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return iInterfaceQueryLocalInterface instanceof v0 ? (v0) iInterfaceQueryLocalInterface : new t0(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.j0
    public final boolean w0(int r12, Parcel parcel, Parcel parcel2) throws RemoteException {
        y0 w0Var = null;
        y0 w0Var2 = null;
        y0 w0Var3 = null;
        b1 z0Var = null;
        b1 z0Var2 = null;
        b1 z0Var3 = null;
        y0 w0Var4 = null;
        y0 w0Var5 = null;
        y0 w0Var6 = null;
        y0 w0Var7 = null;
        y0 w0Var8 = null;
        y0 w0Var9 = null;
        d1 c1Var = null;
        y0 w0Var10 = null;
        y0 w0Var11 = null;
        y0 w0Var12 = null;
        y0 w0Var13 = null;
        y0 w0Var14 = null;
        switch (r12) {
            case 1:
                initialize(b.a.x0(parcel.readStrongBinder()), (e1) k0.a(parcel, e1.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) k0.a(parcel, Bundle.CREATOR), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readLong());
                break;
            case 3:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) k0.a(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var = iInterfaceQueryLocalInterface instanceof y0 ? (y0) iInterfaceQueryLocalInterface : new w0(strongBinder);
                }
                logEventAndBundle(string, string2, bundle, w0Var, parcel.readLong());
                break;
            case 4:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                z3.b bVarX0 = b.a.x0(parcel.readStrongBinder());
                ClassLoader classLoader = k0.f3592a;
                setUserProperty(string3, string4, bVarX0, parcel.readInt() != 0, parcel.readLong());
                break;
            case 5:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                ClassLoader classLoader2 = k0.f3592a;
                boolean z10 = parcel.readInt() != 0;
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var14 = iInterfaceQueryLocalInterface2 instanceof y0 ? (y0) iInterfaceQueryLocalInterface2 : new w0(strongBinder2);
                }
                getUserProperties(string5, string6, z10, w0Var14);
                break;
            case 6:
                String string7 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var13 = iInterfaceQueryLocalInterface3 instanceof y0 ? (y0) iInterfaceQueryLocalInterface3 : new w0(strongBinder3);
                }
                getMaxUserProperties(string7, w0Var13);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) k0.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) k0.a(parcel, Bundle.CREATOR));
                break;
            case 10:
                String string8 = parcel.readString();
                String string9 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var12 = iInterfaceQueryLocalInterface4 instanceof y0 ? (y0) iInterfaceQueryLocalInterface4 : new w0(strongBinder4);
                }
                getConditionalUserProperties(string8, string9, w0Var12);
                break;
            case 11:
                ClassLoader classLoader3 = k0.f3592a;
                setMeasurementEnabled(parcel.readInt() != 0, parcel.readLong());
                break;
            case 12:
                resetAnalyticsData(parcel.readLong());
                break;
            case 13:
                setMinimumSessionDuration(parcel.readLong());
                break;
            case 14:
                setSessionTimeoutDuration(parcel.readLong());
                break;
            case 15:
                setCurrentScreen(b.a.x0(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var11 = iInterfaceQueryLocalInterface5 instanceof y0 ? (y0) iInterfaceQueryLocalInterface5 : new w0(strongBinder5);
                }
                getCurrentScreenName(w0Var11);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var10 = iInterfaceQueryLocalInterface6 instanceof y0 ? (y0) iInterfaceQueryLocalInterface6 : new w0(strongBinder6);
                }
                getCurrentScreenClass(w0Var10);
                break;
            case 18:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    c1Var = iInterfaceQueryLocalInterface7 instanceof d1 ? (d1) iInterfaceQueryLocalInterface7 : new c1(strongBinder7);
                }
                setInstanceIdProvider(c1Var);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var9 = iInterfaceQueryLocalInterface8 instanceof y0 ? (y0) iInterfaceQueryLocalInterface8 : new w0(strongBinder8);
                }
                getCachedAppInstanceId(w0Var9);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var8 = iInterfaceQueryLocalInterface9 instanceof y0 ? (y0) iInterfaceQueryLocalInterface9 : new w0(strongBinder9);
                }
                getAppInstanceId(w0Var8);
                break;
            case 21:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var7 = iInterfaceQueryLocalInterface10 instanceof y0 ? (y0) iInterfaceQueryLocalInterface10 : new w0(strongBinder10);
                }
                getGmpAppId(w0Var7);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var6 = iInterfaceQueryLocalInterface11 instanceof y0 ? (y0) iInterfaceQueryLocalInterface11 : new w0(strongBinder11);
                }
                generateEventId(w0Var6);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(b.a.x0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(b.a.x0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(b.a.x0(parcel.readStrongBinder()), (Bundle) k0.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(b.a.x0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(b.a.x0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(b.a.x0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                z3.b bVarX02 = b.a.x0(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var5 = iInterfaceQueryLocalInterface12 instanceof y0 ? (y0) iInterfaceQueryLocalInterface12 : new w0(strongBinder12);
                }
                onActivitySaveInstanceState(bVarX02, w0Var5, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) k0.a(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var4 = iInterfaceQueryLocalInterface13 instanceof y0 ? (y0) iInterfaceQueryLocalInterface13 : new w0(strongBinder13);
                }
                performAction(bundle2, w0Var4, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), b.a.x0(parcel.readStrongBinder()), b.a.x0(parcel.readStrongBinder()), b.a.x0(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    z0Var3 = iInterfaceQueryLocalInterface14 instanceof b1 ? (b1) iInterfaceQueryLocalInterface14 : new z0(strongBinder14);
                }
                setEventInterceptor(z0Var3);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    z0Var2 = iInterfaceQueryLocalInterface15 instanceof b1 ? (b1) iInterfaceQueryLocalInterface15 : new z0(strongBinder15);
                }
                registerOnMeasurementEventListener(z0Var2);
                break;
            case 36:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    z0Var = iInterfaceQueryLocalInterface16 instanceof b1 ? (b1) iInterfaceQueryLocalInterface16 : new z0(strongBinder16);
                }
                unregisterOnMeasurementEventListener(z0Var);
                break;
            case 37:
                initForTests(parcel.readHashMap(k0.f3592a));
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var3 = iInterfaceQueryLocalInterface17 instanceof y0 ? (y0) iInterfaceQueryLocalInterface17 : new w0(strongBinder17);
                }
                getTestFlag(w0Var3, parcel.readInt());
                break;
            case 39:
                ClassLoader classLoader4 = k0.f3592a;
                setDataCollectionEnabled(parcel.readInt() != 0);
                break;
            case 40:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    w0Var2 = iInterfaceQueryLocalInterface18 instanceof y0 ? (y0) iInterfaceQueryLocalInterface18 : new w0(strongBinder18);
                }
                isDataCollectionEnabled(w0Var2);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) k0.a(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) k0.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) k0.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
