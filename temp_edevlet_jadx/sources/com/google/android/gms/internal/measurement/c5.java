package com.google.android.gms.internal.measurement;

import android.os.Build;
import android.os.StrictMode;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c5 implements p4 {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("SharedPreferencesLoader.class")
    public static final ArrayMap f3408a = new ArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    public static c5 b() {
        c5 c5Var;
        if (Build.VERSION.SDK_INT >= 24) {
            throw null;
        }
        synchronized (c5.class) {
            c5Var = (c5) f3408a.get(null);
            if (c5Var == null) {
                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    throw null;
                } catch (Throwable th2) {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    throw th2;
                }
            }
        }
        return c5Var;
    }

    public static synchronized void c() {
        ArrayMap arrayMap = f3408a;
        Iterator it = arrayMap.values().iterator();
        if (it.hasNext()) {
            ((c5) it.next()).getClass();
            throw null;
        }
        arrayMap.clear();
    }

    @Override // com.google.android.gms.internal.measurement.p4
    public final Object a(String str) {
        throw null;
    }
}
