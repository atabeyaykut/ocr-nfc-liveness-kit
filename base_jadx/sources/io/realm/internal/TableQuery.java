package io.realm.internal;

import io.realm.h0;
import io.realm.internal.objectstore.OsKeyPathMapping;
import io.realm.j0;
import org.bson.types.Decimal128;

/* loaded from: classes2.dex */
public class TableQuery implements i {

    /* renamed from: e, reason: collision with root package name */
    public static final long f7636e = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final Table f7637a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7638b;

    /* renamed from: c, reason: collision with root package name */
    public final j0 f7639c = new j0();

    /* renamed from: d, reason: collision with root package name */
    public boolean f7640d = true;

    public TableQuery(h hVar, Table table, long j10) {
        this.f7637a = table;
        this.f7638b = j10;
        hVar.a(this);
    }

    private native long nativeFind(long j10);

    private static native long nativeGetFinalizerPtr();

    private native long[] nativeMaximumDecimal128(long j10, long j11);

    private native Double nativeMaximumDouble(long j10, long j11);

    private native Float nativeMaximumFloat(long j10, long j11);

    private native Long nativeMaximumInt(long j10, long j11);

    private native void nativeOr(long j10);

    private native void nativeRawDescriptor(long j10, String str, long j11);

    private native void nativeRawPredicate(long j10, String str, long[] jArr, long j11);

    private native String nativeValidateQuery(long j10);

    public final void a(OsKeyPathMapping osKeyPathMapping, String str, h0 h0Var) {
        String str2 = str.replace(" ", "\\ ") + " = $0";
        h0[] h0VarArr = {h0Var};
        this.f7639c.getClass();
        long[] jArr = new long[1];
        for (int r32 = 0; r32 < 1; r32++) {
            try {
                jArr[r32] = h0VarArr[r32].a();
            } catch (IllegalStateException e10) {
                throw new IllegalArgumentException("Unmanaged Realm objects are not valid query arguments", e10);
            }
        }
        i(osKeyPathMapping, str2, jArr);
        this.f7640d = false;
    }

    public final long b() {
        j();
        return nativeFind(this.f7638b);
    }

    public final Decimal128 c(long j10) {
        j();
        long[] jArrNativeMaximumDecimal128 = nativeMaximumDecimal128(this.f7638b, j10);
        if (jArrNativeMaximumDecimal128 != null) {
            return Decimal128.fromIEEE754BIDEncoding(jArrNativeMaximumDecimal128[1], jArrNativeMaximumDecimal128[0]);
        }
        return null;
    }

    public final Double d(long j10) {
        j();
        return nativeMaximumDouble(this.f7638b, j10);
    }

    public final Float e(long j10) {
        j();
        return nativeMaximumFloat(this.f7638b, j10);
    }

    public final Long f(long j10) {
        j();
        return nativeMaximumInt(this.f7638b, j10);
    }

    public final void g() {
        nativeOr(this.f7638b);
        this.f7640d = false;
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7636e;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7638b;
    }

    public final void h(OsKeyPathMapping osKeyPathMapping, String str) {
        nativeRawDescriptor(this.f7638b, str, osKeyPathMapping != null ? osKeyPathMapping.f7674a : 0L);
    }

    public final void i(OsKeyPathMapping osKeyPathMapping, String str, long... jArr) {
        nativeRawPredicate(this.f7638b, str, jArr, osKeyPathMapping != null ? osKeyPathMapping.f7674a : 0L);
    }

    public final void j() {
        if (this.f7640d) {
            return;
        }
        String strNativeValidateQuery = nativeValidateQuery(this.f7638b);
        if (!"".equals(strNativeValidateQuery)) {
            throw new UnsupportedOperationException(strNativeValidateQuery);
        }
        this.f7640d = true;
    }
}
