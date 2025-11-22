package io.realm.internal;

import io.realm.RealmFieldType;

/* loaded from: classes2.dex */
public class Table implements i {

    /* renamed from: d, reason: collision with root package name */
    public static final String f7631d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f7632e;

    /* renamed from: a, reason: collision with root package name */
    public final long f7633a;

    /* renamed from: b, reason: collision with root package name */
    public final h f7634b;

    /* renamed from: c, reason: collision with root package name */
    public final OsSharedRealm f7635c;

    static {
        String strNativeGetTablePrefix = Util.nativeGetTablePrefix();
        f7631d = strNativeGetTablePrefix;
        strNativeGetTablePrefix.length();
        f7632e = nativeGetFinalizerPtr();
    }

    public Table(long j10, OsSharedRealm osSharedRealm) {
        h hVar = osSharedRealm.context;
        this.f7634b = hVar;
        this.f7635c = osSharedRealm;
        this.f7633a = j10;
        hVar.a(this);
    }

    public static String g(String str) {
        if (str == null) {
            return null;
        }
        String str2 = f7631d;
        return !str.startsWith(str2) ? str : str.substring(str2.length());
    }

    public static String n(String str) {
        if (str == null) {
            return null;
        }
        return androidx.camera.camera2.internal.c.h(new StringBuilder(), f7631d, str);
    }

    private native void nativeClear(long j10);

    public static native long nativeFindFirstInt(long j10, long j11, long j12);

    public static native long nativeFindFirstNull(long j10, long j11);

    public static native long nativeFindFirstString(long j10, long j11, String str);

    private static native long nativeFreeze(long j10, long j11);

    private native long nativeGetColumnCount(long j10);

    private native long nativeGetColumnKey(long j10, String str);

    private native String nativeGetColumnName(long j10, long j11);

    private native String[] nativeGetColumnNames(long j10);

    private native int nativeGetColumnType(long j10, long j11);

    private static native long nativeGetFinalizerPtr();

    private native long nativeGetLinkTarget(long j10, long j11);

    private native String nativeGetName(long j10);

    private static native boolean nativeIsEmbedded(long j10);

    private native boolean nativeIsValid(long j10);

    private native void nativeMoveLastOver(long j10, long j11);

    public static native void nativeNullifyLink(long j10, long j11, long j12);

    public static native void nativeSetBoolean(long j10, long j11, long j12, boolean z10, boolean z11);

    public static native void nativeSetDouble(long j10, long j11, long j12, double d10, boolean z10);

    public static native void nativeSetLink(long j10, long j11, long j12, long j13, boolean z10);

    public static native void nativeSetLong(long j10, long j11, long j12, long j13, boolean z10);

    public static native void nativeSetNull(long j10, long j11, long j12, boolean z10);

    public static native void nativeSetString(long j10, long j11, long j12, String str, boolean z10);

    private native long nativeSize(long j10);

    private native long nativeWhere(long j10);

    public final void a() {
        OsSharedRealm osSharedRealm = this.f7635c;
        if ((osSharedRealm == null || osSharedRealm.isInTransaction()) ? false : true) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
    }

    public final void b() {
        a();
        nativeClear(this.f7633a);
    }

    public final long c(long j10, long j11) {
        return nativeFindFirstInt(this.f7633a, j10, j11);
    }

    public final long d(long j10) {
        return nativeFindFirstNull(this.f7633a, j10);
    }

    public final Table e(OsSharedRealm osSharedRealm) {
        if (osSharedRealm.isFrozen()) {
            return new Table(nativeFreeze(osSharedRealm.getNativePtr(), this.f7633a), osSharedRealm);
        }
        throw new IllegalArgumentException("Frozen Realm required");
    }

    public final String f() {
        String strG = g(m());
        if (Util.c(strG)) {
            throw new IllegalStateException("This object class is no longer part of the schema for the Realm file. It is therefor not possible to access the schema name.");
        }
        return strG;
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7632e;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7633a;
    }

    public final long h(String str) {
        return nativeGetColumnKey(this.f7633a, str);
    }

    public final String i(long j10) {
        return nativeGetColumnName(this.f7633a, j10);
    }

    public final String[] j() {
        return nativeGetColumnNames(this.f7633a);
    }

    public final RealmFieldType k(long j10) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.f7633a, j10));
    }

    public final Table l(long j10) {
        return new Table(nativeGetLinkTarget(this.f7633a, j10), this.f7635c);
    }

    public final String m() {
        return nativeGetName(this.f7633a);
    }

    public native long nativeGetRowPtr(long j10, long j11);

    public final UncheckedRow o(long j10) {
        int r02 = UncheckedRow.f7642e;
        return new UncheckedRow(this.f7634b, this, nativeGetRowPtr(this.f7633a, j10));
    }

    public final boolean p() {
        return nativeIsEmbedded(this.f7633a);
    }

    public final boolean q() {
        long j10 = this.f7633a;
        return j10 != 0 && nativeIsValid(j10);
    }

    public final void r(long j10) {
        a();
        nativeMoveLastOver(this.f7633a, j10);
    }

    public final void s(long j10, long j11, boolean z10) {
        a();
        nativeSetBoolean(this.f7633a, j10, j11, z10, true);
    }

    public final void t(long j10, long j11, double d10) {
        a();
        nativeSetDouble(this.f7633a, j10, j11, d10, true);
    }

    public final String toString() {
        long j10 = this.f7633a;
        long jNativeGetColumnCount = nativeGetColumnCount(j10);
        String strM = m();
        StringBuilder sb2 = new StringBuilder("The Table ");
        if (strM != null && !strM.isEmpty()) {
            sb2.append(m());
            sb2.append(" ");
        }
        sb2.append("contains ");
        sb2.append(jNativeGetColumnCount);
        sb2.append(" columns: ");
        String[] strArrJ = j();
        int length = strArrJ.length;
        boolean z10 = true;
        int r72 = 0;
        while (r72 < length) {
            String str = strArrJ[r72];
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(str);
            r72++;
            z10 = false;
        }
        sb2.append(". And ");
        sb2.append(nativeSize(j10));
        sb2.append(" rows.");
        return sb2.toString();
    }

    public final void u(long j10, long j11, long j12) {
        a();
        nativeSetLink(this.f7633a, j10, j11, j12, true);
    }

    public final void v(long j10, long j11, long j12) {
        a();
        nativeSetLong(this.f7633a, j10, j11, j12, true);
    }

    public final void w(long j10, long j11) {
        a();
        nativeSetNull(this.f7633a, j10, j11, true);
    }

    public final void x(long j10, long j11, String str) {
        a();
        long j12 = this.f7633a;
        if (str == null) {
            nativeSetNull(j12, j10, j11, true);
        } else {
            nativeSetString(j12, j10, j11, str, true);
        }
    }

    public final TableQuery y() {
        return new TableQuery(this.f7634b, this, nativeWhere(this.f7633a));
    }
}
