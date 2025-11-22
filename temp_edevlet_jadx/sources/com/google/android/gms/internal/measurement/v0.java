package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes.dex */
public interface v0 extends IInterface {
    void beginAdUnitExposure(String str, long j10) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j10) throws RemoteException;

    void endAdUnitExposure(String str, long j10) throws RemoteException;

    void generateEventId(y0 y0Var) throws RemoteException;

    void getAppInstanceId(y0 y0Var) throws RemoteException;

    void getCachedAppInstanceId(y0 y0Var) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, y0 y0Var) throws RemoteException;

    void getCurrentScreenClass(y0 y0Var) throws RemoteException;

    void getCurrentScreenName(y0 y0Var) throws RemoteException;

    void getGmpAppId(y0 y0Var) throws RemoteException;

    void getMaxUserProperties(String str, y0 y0Var) throws RemoteException;

    void getTestFlag(y0 y0Var, int r22) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z10, y0 y0Var) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(z3.b bVar, e1 e1Var, long j10) throws RemoteException;

    void isDataCollectionEnabled(y0 y0Var) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, y0 y0Var, long j10) throws RemoteException;

    void logHealthData(int r12, String str, z3.b bVar, z3.b bVar2, z3.b bVar3) throws RemoteException;

    void onActivityCreated(z3.b bVar, Bundle bundle, long j10) throws RemoteException;

    void onActivityDestroyed(z3.b bVar, long j10) throws RemoteException;

    void onActivityPaused(z3.b bVar, long j10) throws RemoteException;

    void onActivityResumed(z3.b bVar, long j10) throws RemoteException;

    void onActivitySaveInstanceState(z3.b bVar, y0 y0Var, long j10) throws RemoteException;

    void onActivityStarted(z3.b bVar, long j10) throws RemoteException;

    void onActivityStopped(z3.b bVar, long j10) throws RemoteException;

    void performAction(Bundle bundle, y0 y0Var, long j10) throws RemoteException;

    void registerOnMeasurementEventListener(b1 b1Var) throws RemoteException;

    void resetAnalyticsData(long j10) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException;

    void setConsent(Bundle bundle, long j10) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j10) throws RemoteException;

    void setCurrentScreen(z3.b bVar, String str, String str2, long j10) throws RemoteException;

    void setDataCollectionEnabled(boolean z10) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setEventInterceptor(b1 b1Var) throws RemoteException;

    void setInstanceIdProvider(d1 d1Var) throws RemoteException;

    void setMeasurementEnabled(boolean z10, long j10) throws RemoteException;

    void setMinimumSessionDuration(long j10) throws RemoteException;

    void setSessionTimeoutDuration(long j10) throws RemoteException;

    void setUserId(String str, long j10) throws RemoteException;

    void setUserProperty(String str, String str2, z3.b bVar, boolean z10, long j10) throws RemoteException;

    void unregisterOnMeasurementEventListener(b1 b1Var) throws RemoteException;
}
