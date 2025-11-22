package com.google.android.gms.internal.vision;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class b extends WeakReference<Throwable> {

    /* renamed from: a, reason: collision with root package name */
    public final int f3888a;

    public b(Exception exc, ReferenceQueue referenceQueue) {
        super(exc, referenceQueue);
        this.f3888a = System.identityHashCode(exc);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == b.class) {
            if (this == obj) {
                return true;
            }
            b bVar = (b) obj;
            if (this.f3888a == bVar.f3888a && get() == bVar.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f3888a;
    }
}
