package io.realm.internal.objectstore;

import io.realm.internal.h;
import io.realm.internal.i;

/* loaded from: classes2.dex */
public class OsKeyPathMapping implements i {

    /* renamed from: b, reason: collision with root package name */
    public static final long f7673b = nativeGetFinalizerMethodPtr();

    /* renamed from: a, reason: collision with root package name */
    public final long f7674a;

    public OsKeyPathMapping(long j10) {
        this.f7674a = -1L;
        this.f7674a = nativeCreateMapping(j10);
        h.f7664b.a(this);
    }

    private static native long nativeCreateMapping(long j10);

    private static native long nativeGetFinalizerMethodPtr();

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7673b;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7674a;
    }
}
