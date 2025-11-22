package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.internal.core.NativeRealmAny;
import java.util.Date;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public class UncheckedRow implements i, p {

    /* renamed from: d, reason: collision with root package name */
    public static final long f7641d = nativeGetFinalizerPtr();

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f7642e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final h f7643a;

    /* renamed from: b, reason: collision with root package name */
    public final Table f7644b;

    /* renamed from: c, reason: collision with root package name */
    public final long f7645c;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7646a;

        static {
            int[] r02 = new int[RealmFieldType.values().length];
            f7646a = r02;
            try {
                r02[RealmFieldType.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7646a[RealmFieldType.LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public UncheckedRow(UncheckedRow uncheckedRow) {
        this.f7643a = uncheckedRow.f7643a;
        this.f7644b = uncheckedRow.f7644b;
        this.f7645c = uncheckedRow.f7645c;
    }

    public UncheckedRow(h hVar, Table table, long j10) {
        this.f7643a = hVar;
        this.f7644b = table;
        this.f7645c = j10;
        hVar.a(this);
    }

    private static native long nativeGetFinalizerPtr();

    @Override // io.realm.internal.p
    public final void A(long j10, long j11) {
        this.f7644b.a();
        nativeSetLong(this.f7645c, j10, j11);
    }

    @Override // io.realm.internal.p
    public final Date B(long j10) {
        return new Date(nativeGetTimestamp(this.f7645c, j10));
    }

    public boolean C(long j10) {
        return nativeIsNull(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final void E(long j10) {
        this.f7644b.a();
        nativeNullifyLink(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final boolean F() {
        return true;
    }

    @Override // io.realm.internal.p
    public final long G(String str) {
        if (str != null) {
            return nativeGetColumnKey(this.f7645c, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    public OsMap H(long j10) {
        return new OsMap(this, j10);
    }

    public OsSet J(long j10, RealmFieldType realmFieldType) {
        return new OsSet(this, j10);
    }

    @Override // io.realm.internal.p
    public final NativeRealmAny K(long j10) {
        return new NativeRealmAny(nativeGetRealmAny(this.f7645c, j10));
    }

    public boolean L(long j10) {
        return nativeIsNullLink(this.f7645c, j10);
    }

    public void M(long j10) {
        this.f7644b.a();
        nativeSetNull(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final byte[] N(long j10) {
        return nativeGetByteArray(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final double O(long j10) {
        return nativeGetDouble(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final long P(long j10) {
        return nativeGetLink(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final float Q(long j10) {
        return nativeGetFloat(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final String R(long j10) {
        return nativeGetString(this.f7645c, j10);
    }

    public OsList S(long j10, RealmFieldType realmFieldType) {
        return new OsList(this, j10);
    }

    public OsMap T(long j10, RealmFieldType realmFieldType) {
        return new OsMap(this, j10);
    }

    @Override // io.realm.internal.p
    public final RealmFieldType V(long j10) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.f7645c, j10));
    }

    @Override // io.realm.internal.p
    public final void W(long j10, double d10) {
        this.f7644b.a();
        nativeSetDouble(this.f7645c, j10, d10);
    }

    public p X(OsSharedRealm osSharedRealm) {
        if (!isValid()) {
            return g.f7661a;
        }
        return new UncheckedRow(this.f7643a, this.f7644b.e(osSharedRealm), nativeFreeze(this.f7645c, osSharedRealm.getNativePtr()));
    }

    @Override // io.realm.internal.p
    public final long Y() {
        return nativeGetObjectKey(this.f7645c);
    }

    @Override // io.realm.internal.p
    public final String[] getColumnNames() {
        return nativeGetColumnNames(this.f7645c);
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7641d;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7645c;
    }

    @Override // io.realm.internal.p
    public final boolean isValid() {
        long j10 = this.f7645c;
        return j10 != 0 && nativeIsValid(j10);
    }

    @Override // io.realm.internal.p
    public final Decimal128 n(long j10) {
        long[] jArrNativeGetDecimal128 = nativeGetDecimal128(this.f7645c, j10);
        if (jArrNativeGetDecimal128 != null) {
            return Decimal128.fromIEEE754BIDEncoding(jArrNativeGetDecimal128[1], jArrNativeGetDecimal128[0]);
        }
        return null;
    }

    public native long nativeCreateEmbeddedObject(long j10, long j11);

    public native long nativeFreeze(long j10, long j11);

    public native boolean nativeGetBoolean(long j10, long j11);

    public native byte[] nativeGetByteArray(long j10, long j11);

    public native long nativeGetColumnKey(long j10, String str);

    public native String[] nativeGetColumnNames(long j10);

    public native int nativeGetColumnType(long j10, long j11);

    public native long[] nativeGetDecimal128(long j10, long j11);

    public native double nativeGetDouble(long j10, long j11);

    public native float nativeGetFloat(long j10, long j11);

    public native long nativeGetLink(long j10, long j11);

    public native long nativeGetLong(long j10, long j11);

    public native String nativeGetObjectId(long j10, long j11);

    public native long nativeGetObjectKey(long j10);

    public native long nativeGetRealmAny(long j10, long j11);

    public native String nativeGetString(long j10, long j11);

    public native long nativeGetTimestamp(long j10, long j11);

    public native String nativeGetUUID(long j10, long j11);

    public native boolean nativeIsNull(long j10, long j11);

    public native boolean nativeIsNullLink(long j10, long j11);

    public native boolean nativeIsValid(long j10);

    public native void nativeNullifyLink(long j10, long j11);

    public native void nativeSetBoolean(long j10, long j11, boolean z10);

    public native void nativeSetDouble(long j10, long j11, double d10);

    public native void nativeSetLong(long j10, long j11, long j12);

    public native void nativeSetNull(long j10, long j11);

    public native void nativeSetString(long j10, long j11, String str);

    @Override // io.realm.internal.p
    public final void o(long j10, String str) {
        this.f7644b.a();
        if (str == null) {
            nativeSetNull(this.f7645c, j10);
        } else {
            nativeSetString(this.f7645c, j10, str);
        }
    }

    @Override // io.realm.internal.p
    public final Table q() {
        return this.f7644b;
    }

    @Override // io.realm.internal.p
    public final long r(long j10, RealmFieldType realmFieldType) {
        int r02 = a.f7646a[realmFieldType.ordinal()];
        if (r02 == 1) {
            this.f7644b.a();
            return nativeCreateEmbeddedObject(this.f7645c, j10);
        }
        if (r02 == 2) {
            return z(j10).n();
        }
        throw new IllegalArgumentException("Wrong parentPropertyType, expected OBJECT or LIST but received " + realmFieldType);
    }

    @Override // io.realm.internal.p
    public final void t(long j10, boolean z10) {
        this.f7644b.a();
        nativeSetBoolean(this.f7645c, j10, z10);
    }

    public OsSet u(long j10) {
        return new OsSet(this, j10);
    }

    @Override // io.realm.internal.p
    public final ObjectId v(long j10) {
        return new ObjectId(nativeGetObjectId(this.f7645c, j10));
    }

    @Override // io.realm.internal.p
    public final UUID w(long j10) {
        return UUID.fromString(nativeGetUUID(this.f7645c, j10));
    }

    @Override // io.realm.internal.p
    public final boolean x(long j10) {
        return nativeGetBoolean(this.f7645c, j10);
    }

    @Override // io.realm.internal.p
    public final long y(long j10) {
        return nativeGetLong(this.f7645c, j10);
    }

    public OsList z(long j10) {
        return new OsList(this, j10);
    }
}
