package io.realm.internal;

/* loaded from: classes2.dex */
public class OsSet implements i {

    /* renamed from: b, reason: collision with root package name */
    public static final long f7622b = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final long f7623a;

    public OsSet(UncheckedRow uncheckedRow, long j10) {
        OsSharedRealm osSharedRealm = uncheckedRow.f7644b.f7635c;
        long[] jArrNativeCreate = nativeCreate(osSharedRealm.getNativePtr(), uncheckedRow.f7645c, j10);
        this.f7623a = jArrNativeCreate[0];
        osSharedRealm.context.a(this);
        if (jArrNativeCreate[1] != 0) {
            new Table(jArrNativeCreate[1], osSharedRealm);
        }
    }

    private static native long[] nativeCreate(long j10, long j11, long j12);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeSize(long j10);

    public final long a() {
        return nativeSize(this.f7623a);
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7622b;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7623a;
    }
}
