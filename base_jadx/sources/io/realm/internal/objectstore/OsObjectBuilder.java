package io.realm.internal.objectstore;

import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.h;
import io.realm.internal.n;
import io.realm.q0;
import io.realm.s0;
import io.realm.v;
import java.io.Closeable;
import java.util.Set;

/* loaded from: classes2.dex */
public class OsObjectBuilder implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final Table f7675a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7676b;

    /* renamed from: c, reason: collision with root package name */
    public final long f7677c;

    /* renamed from: d, reason: collision with root package name */
    public final long f7678d;

    /* renamed from: e, reason: collision with root package name */
    public final h f7679e;
    public final boolean f;

    public OsObjectBuilder(Table table, Set<v> set) {
        OsSharedRealm osSharedRealm = table.f7635c;
        this.f7676b = osSharedRealm.getNativePtr();
        this.f7675a = table;
        table.j();
        this.f7678d = table.f7633a;
        this.f7677c = nativeCreateBuilder();
        this.f7679e = osSharedRealm.context;
        this.f = set.contains(v.f7873a);
    }

    private static native void nativeAddBoolean(long j10, long j11, boolean z10);

    private static native void nativeAddDouble(long j10, long j11, double d10);

    private static native void nativeAddInteger(long j10, long j11, long j12);

    private static native void nativeAddNull(long j10, long j11);

    private static native void nativeAddObjectList(long j10, long j11, long[] jArr);

    private static native void nativeAddString(long j10, long j11, String str);

    private static native long nativeCreateBuilder();

    private static native long nativeCreateOrUpdateTopLevelObject(long j10, long j11, long j12, boolean z10, boolean z11);

    private static native void nativeDestroyBuilder(long j10);

    private static native long nativeUpdateEmbeddedObject(long j10, long j11, long j12, long j13, boolean z10);

    public final void a(long j10, Boolean bool) {
        long j11 = this.f7677c;
        if (bool == null) {
            nativeAddNull(j11, j10);
        } else {
            nativeAddBoolean(j11, j10, bool.booleanValue());
        }
    }

    public final void b(long j10, Double d10) {
        if (d10 == null) {
            nativeAddNull(this.f7677c, j10);
        } else {
            nativeAddDouble(this.f7677c, j10, d10.doubleValue());
        }
    }

    public final void c(long j10, Integer num) {
        if (num == null) {
            nativeAddNull(this.f7677c, j10);
        } else {
            nativeAddInteger(this.f7677c, j10, num.intValue());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        nativeDestroyBuilder(this.f7677c);
    }

    public final void d(long j10) {
        nativeAddNull(this.f7677c, j10);
    }

    public final <T extends s0> void e(long j10, q0<T> q0Var) {
        long[] jArr = new long[q0Var.size()];
        for (int r12 = 0; r12 < q0Var.size(); r12++) {
            n nVar = (n) q0Var.get(r12);
            if (nVar == null) {
                throw new IllegalArgumentException("Null values are not allowed in RealmLists containing Realm models");
            }
            jArr[r12] = ((UncheckedRow) nVar.b().f7531c).f7645c;
        }
        nativeAddObjectList(this.f7677c, j10, jArr);
    }

    public final void f(long j10, String str) {
        long j11 = this.f7677c;
        if (str == null) {
            nativeAddNull(j11, j10);
        } else {
            nativeAddString(j11, j10, str);
        }
    }

    public final UncheckedRow g() {
        try {
            return new UncheckedRow(this.f7679e, this.f7675a, nativeCreateOrUpdateTopLevelObject(this.f7676b, this.f7678d, this.f7677c, false, false));
        } finally {
            close();
        }
    }

    public final void i(n nVar) {
        try {
            nativeUpdateEmbeddedObject(this.f7676b, this.f7678d, this.f7677c, nVar.b().f7531c.Y(), this.f);
        } finally {
            close();
        }
    }

    public final void j() {
        try {
            nativeCreateOrUpdateTopLevelObject(this.f7676b, this.f7678d, this.f7677c, true, this.f);
        } finally {
            close();
        }
    }
}
