package com.google.android.gms.measurement;

import a5.a;
import a5.b;
import a5.c;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import c5.a5;
import c5.i4;
import c5.w5;
import com.google.android.gms.internal.measurement.e1;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r3.r;

@Deprecated
/* loaded from: classes.dex */
public class AppMeasurement {

    /* renamed from: b, reason: collision with root package name */
    public static volatile AppMeasurement f4192b;

    /* renamed from: a, reason: collision with root package name */
    public final c f4193a;

    public static class ConditionalUserProperty {

        @Keep
        public boolean mActive;

        @NonNull
        @Keep
        public String mAppId;

        @Keep
        public long mCreationTimestamp;

        @NonNull
        @Keep
        public String mExpiredEventName;

        @NonNull
        @Keep
        public Bundle mExpiredEventParams;

        @NonNull
        @Keep
        public String mName;

        @NonNull
        @Keep
        public String mOrigin;

        @Keep
        public long mTimeToLive;

        @NonNull
        @Keep
        public String mTimedOutEventName;

        @NonNull
        @Keep
        public Bundle mTimedOutEventParams;

        @NonNull
        @Keep
        public String mTriggerEventName;

        @Keep
        public long mTriggerTimeout;

        @NonNull
        @Keep
        public String mTriggeredEventName;

        @NonNull
        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        public long mTriggeredTimestamp;

        @NonNull
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(@NonNull Bundle bundle) {
            r.i(bundle);
            this.mAppId = (String) a5.b(bundle, "app_id", String.class, null);
            this.mOrigin = (String) a5.b(bundle, "origin", String.class, null);
            this.mName = (String) a5.b(bundle, "name", String.class, null);
            this.mValue = a5.b(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) a5.b(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) a5.b(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) a5.b(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) a5.b(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) a5.b(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) a5.b(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) a5.b(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) a5.b(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) a5.b(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) a5.b(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) a5.b(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) a5.b(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    public AppMeasurement(i4 i4Var) {
        this.f4193a = new a(i4Var);
    }

    public AppMeasurement(w5 w5Var) {
        this.f4193a = new b(w5Var);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    @NonNull
    @Keep
    @Deprecated
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    public static AppMeasurement getInstance(@NonNull Context context) {
        if (f4192b == null) {
            synchronized (AppMeasurement.class) {
                if (f4192b == null) {
                    w5 w5Var = (w5) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    if (w5Var != null) {
                        f4192b = new AppMeasurement(w5Var);
                    } else {
                        f4192b = new AppMeasurement(i4.r(context, new e1(0L, 0L, true, null, null, null, null, null), null));
                    }
                }
            }
        }
        return f4192b;
    }

    @Keep
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f4193a.r(str);
    }

    @Keep
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.f4193a.s(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f4193a.t(str);
    }

    @Keep
    public long generateEventId() {
        return this.f4193a.b();
    }

    @NonNull
    @Keep
    public String getAppInstanceId() {
        return this.f4193a.i();
    }

    @NonNull
    @Keep
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserProperties(@NonNull String str, @NonNull @Size(max = 23, min = 1) String str2) {
        List<Bundle> listN = this.f4193a.n(str, str2);
        ArrayList arrayList = new ArrayList(listN == null ? 0 : listN.size());
        Iterator<Bundle> it = listN.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty(it.next()));
        }
        return arrayList;
    }

    @NonNull
    @Keep
    public String getCurrentScreenClass() {
        return this.f4193a.h();
    }

    @NonNull
    @Keep
    public String getCurrentScreenName() {
        return this.f4193a.m();
    }

    @NonNull
    @Keep
    public String getGmpAppId() {
        return this.f4193a.f();
    }

    @Keep
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        return this.f4193a.u(str);
    }

    @NonNull
    @Keep
    @WorkerThread
    public Map<String, Object> getUserProperties(@NonNull String str, @NonNull @Size(max = 24, min = 1) String str2, boolean z10) {
        return this.f4193a.o(str, str2, z10);
    }

    @Keep
    public void logEventInternal(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.f4193a.q(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        r.i(conditionalUserProperty);
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            a5.c(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        this.f4193a.p(bundle);
    }
}
