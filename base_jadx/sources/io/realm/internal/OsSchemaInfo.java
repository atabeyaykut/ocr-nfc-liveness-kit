package io.realm.internal;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class OsSchemaInfo implements i {

    /* renamed from: b, reason: collision with root package name */
    public static final long f7620b = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final long f7621a;

    public OsSchemaInfo(long j10) {
        this.f7621a = j10;
    }

    public OsSchemaInfo(Collection<OsObjectSchemaInfo> collection) {
        long[] jArr = new long[collection.size()];
        Iterator<OsObjectSchemaInfo> it = collection.iterator();
        int r12 = 0;
        while (it.hasNext()) {
            jArr[r12] = it.next().f7590a;
            r12++;
        }
        this.f7621a = nativeCreateFromList(jArr);
        h.f7664b.a(this);
    }

    private static native long nativeCreateFromList(long[] jArr);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetObjectSchemaInfo(long j10, String str);

    public final OsObjectSchemaInfo a(String str) {
        return new OsObjectSchemaInfo(nativeGetObjectSchemaInfo(this.f7621a, str));
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7620b;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7621a;
    }
}
