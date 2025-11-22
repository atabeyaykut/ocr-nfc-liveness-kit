package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class r0 extends x0 {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference<Bundle> f3704a = new AtomicReference<>();

    /* renamed from: b, reason: collision with root package name */
    public boolean f3705b;

    public static final Object z0(Class cls, Bundle bundle) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e10) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e10);
            throw e10;
        }
    }

    @Override // com.google.android.gms.internal.measurement.y0
    public final void a(Bundle bundle) {
        synchronized (this.f3704a) {
            try {
                this.f3704a.set(bundle);
                this.f3705b = true;
            } finally {
                this.f3704a.notify();
            }
        }
    }

    public final Bundle x0(long j10) {
        Bundle bundle;
        synchronized (this.f3704a) {
            if (!this.f3705b) {
                try {
                    this.f3704a.wait(j10);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.f3704a.get();
        }
        return bundle;
    }

    public final String y0(long j10) {
        return (String) z0(String.class, x0(j10));
    }
}
