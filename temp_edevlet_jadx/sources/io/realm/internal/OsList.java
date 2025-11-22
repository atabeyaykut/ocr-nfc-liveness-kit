package io.realm.internal;

import io.realm.internal.ObservableCollection;
import java.util.Date;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public class OsList implements i, ObservableCollection {

    /* renamed from: d, reason: collision with root package name */
    public static final long f7583d = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final long f7584a;

    /* renamed from: b, reason: collision with root package name */
    public final Table f7585b;

    /* renamed from: c, reason: collision with root package name */
    public final k<ObservableCollection.b> f7586c = new k<>();

    public OsList(UncheckedRow uncheckedRow, long j10) {
        OsSharedRealm osSharedRealm = uncheckedRow.f7644b.f7635c;
        long[] jArrNativeCreate = nativeCreate(osSharedRealm.getNativePtr(), uncheckedRow.f7645c, j10);
        this.f7584a = jArrNativeCreate[0];
        osSharedRealm.context.a(this);
        if (jArrNativeCreate[1] != 0) {
            this.f7585b = new Table(jArrNativeCreate[1], osSharedRealm);
        } else {
            this.f7585b = null;
        }
    }

    private static native void nativeAddBinary(long j10, byte[] bArr);

    private static native void nativeAddBoolean(long j10, boolean z10);

    private static native void nativeAddDate(long j10, long j11);

    private static native void nativeAddDecimal128(long j10, long j11, long j12);

    private static native void nativeAddDouble(long j10, double d10);

    private static native void nativeAddFloat(long j10, float f);

    private static native void nativeAddLong(long j10, long j11);

    private static native void nativeAddNull(long j10);

    private static native void nativeAddObjectId(long j10, String str);

    private static native void nativeAddRealmAny(long j10, long j11);

    private static native void nativeAddRow(long j10, long j11);

    private static native void nativeAddString(long j10, String str);

    private static native void nativeAddUUID(long j10, String str);

    private static native long[] nativeCreate(long j10, long j11, long j12);

    private static native long nativeCreateAndAddEmbeddedObject(long j10, long j11);

    private static native long nativeCreateAndSetEmbeddedObject(long j10, long j11);

    private static native void nativeDeleteAll(long j10);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetRow(long j10, long j11);

    private static native Object nativeGetValue(long j10, long j11);

    private static native void nativeInsertBinary(long j10, long j11, byte[] bArr);

    private static native void nativeInsertBoolean(long j10, long j11, boolean z10);

    private static native void nativeInsertDate(long j10, long j11, long j12);

    private static native void nativeInsertDecimal128(long j10, long j11, long j12, long j13);

    private static native void nativeInsertDouble(long j10, long j11, double d10);

    private static native void nativeInsertFloat(long j10, long j11, float f);

    private static native void nativeInsertLong(long j10, long j11, long j12);

    private static native void nativeInsertNull(long j10, long j11);

    private static native void nativeInsertObjectId(long j10, long j11, String str);

    private static native void nativeInsertRealmAny(long j10, long j11, long j12);

    private static native void nativeInsertRow(long j10, long j11, long j12);

    private static native void nativeInsertString(long j10, long j11, String str);

    private static native void nativeInsertUUID(long j10, long j11, String str);

    private static native boolean nativeIsValid(long j10);

    private static native void nativeRemove(long j10, long j11);

    private static native void nativeRemoveAll(long j10);

    private static native void nativeSetBinary(long j10, long j11, byte[] bArr);

    private static native void nativeSetBoolean(long j10, long j11, boolean z10);

    private static native void nativeSetDate(long j10, long j11, long j12);

    private static native void nativeSetDecimal128(long j10, long j11, long j12, long j13);

    private static native void nativeSetDouble(long j10, long j11, double d10);

    private static native void nativeSetFloat(long j10, long j11, float f);

    private static native void nativeSetLong(long j10, long j11, long j12);

    private static native void nativeSetNull(long j10, long j11);

    private static native void nativeSetObjectId(long j10, long j11, String str);

    private static native void nativeSetRealmAny(long j10, long j11, long j12);

    private static native void nativeSetRow(long j10, long j11, long j12);

    private static native void nativeSetString(long j10, long j11, String str);

    private static native void nativeSetUUID(long j10, long j11, String str);

    private static native long nativeSize(long j10);

    public final void A(long j10) {
        nativeInsertNull(this.f7584a, j10);
    }

    public final void B(long j10, ObjectId objectId) {
        long j11 = this.f7584a;
        if (objectId == null) {
            nativeInsertNull(j11, j10);
        } else {
            nativeInsertObjectId(j11, j10, objectId.toString());
        }
    }

    public final void C(long j10, long j11) {
        nativeInsertRealmAny(this.f7584a, j10, j11);
    }

    public final void D(long j10, long j11) {
        nativeInsertRow(this.f7584a, j10, j11);
    }

    public final void E(long j10, String str) {
        nativeInsertString(this.f7584a, j10, str);
    }

    public final void F(long j10, UUID r52) {
        long j11 = this.f7584a;
        if (r52 == null) {
            nativeInsertNull(j11, j10);
        } else {
            nativeInsertUUID(j11, j10, r52.toString());
        }
    }

    public final boolean G() {
        return nativeIsValid(this.f7584a);
    }

    public final void H(long j10) {
        nativeRemove(this.f7584a, j10);
    }

    public final void I() {
        nativeRemoveAll(this.f7584a);
    }

    public final void J(long j10, byte[] bArr) {
        nativeSetBinary(this.f7584a, j10, bArr);
    }

    public final void K(long j10, boolean z10) {
        nativeSetBoolean(this.f7584a, j10, z10);
    }

    public final void L(long j10, Date date) {
        if (date == null) {
            nativeSetNull(this.f7584a, j10);
        } else {
            nativeSetDate(this.f7584a, j10, date.getTime());
        }
    }

    public final void M(long j10, Decimal128 decimal128) {
        if (decimal128 == null) {
            nativeSetNull(this.f7584a, j10);
        } else {
            nativeSetDecimal128(this.f7584a, j10, decimal128.f12071b, decimal128.f12070a);
        }
    }

    public final void N(long j10, double d10) {
        nativeSetDouble(this.f7584a, j10, d10);
    }

    public final void O(long j10, float f) {
        nativeSetFloat(this.f7584a, j10, f);
    }

    public final void P(long j10, long j11) {
        nativeSetLong(this.f7584a, j10, j11);
    }

    public final void Q(long j10) {
        nativeSetNull(this.f7584a, j10);
    }

    public final void R(long j10, ObjectId objectId) {
        long j11 = this.f7584a;
        if (objectId == null) {
            nativeSetNull(j11, j10);
        } else {
            nativeSetObjectId(j11, j10, objectId.toString());
        }
    }

    public final void S(long j10, long j11) {
        nativeSetRealmAny(this.f7584a, j10, j11);
    }

    public final void T(long j10, long j11) {
        nativeSetRow(this.f7584a, j10, j11);
    }

    public final void U(long j10, String str) {
        nativeSetString(this.f7584a, j10, str);
    }

    public final void V(long j10, UUID r52) {
        long j11 = this.f7584a;
        if (r52 == null) {
            nativeSetNull(j11, j10);
        } else {
            nativeSetUUID(j11, j10, r52.toString());
        }
    }

    public final long W() {
        return nativeSize(this.f7584a);
    }

    public final void a(byte[] bArr) {
        nativeAddBinary(this.f7584a, bArr);
    }

    public final void b(boolean z10) {
        nativeAddBoolean(this.f7584a, z10);
    }

    public final void c(Date date) {
        long j10 = this.f7584a;
        if (date == null) {
            nativeAddNull(j10);
        } else {
            nativeAddDate(j10, date.getTime());
        }
    }

    public final void d(Decimal128 decimal128) {
        if (decimal128 == null) {
            nativeAddNull(this.f7584a);
        } else {
            nativeAddDecimal128(this.f7584a, decimal128.f12071b, decimal128.f12070a);
        }
    }

    public final void e(double d10) {
        nativeAddDouble(this.f7584a, d10);
    }

    public final void f(float f) {
        nativeAddFloat(this.f7584a, f);
    }

    public final void g(long j10) {
        nativeAddLong(this.f7584a, j10);
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7583d;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7584a;
    }

    public final void h() {
        nativeAddNull(this.f7584a);
    }

    public final void i(ObjectId objectId) {
        long j10 = this.f7584a;
        if (objectId == null) {
            nativeAddNull(j10);
        } else {
            nativeAddObjectId(j10, objectId.toString());
        }
    }

    public final void j(long j10) {
        nativeAddRealmAny(this.f7584a, j10);
    }

    public final void k(long j10) {
        nativeAddRow(this.f7584a, j10);
    }

    public final void l(String str) {
        nativeAddString(this.f7584a, str);
    }

    public final void m(UUID r32) {
        long j10 = this.f7584a;
        if (r32 == null) {
            nativeAddNull(j10);
        } else {
            nativeAddUUID(j10, r32.toString());
        }
    }

    public final long n() {
        return nativeCreateAndAddEmbeddedObject(this.f7584a, W());
    }

    @Override // io.realm.internal.ObservableCollection
    public final void notifyChangeListeners(long j10) {
        OsCollectionChangeSet osCollectionChangeSet = new OsCollectionChangeSet(j10, false);
        if (osCollectionChangeSet.e()) {
            return;
        }
        this.f7586c.b(new ObservableCollection.a(osCollectionChangeSet));
    }

    public final long o(long j10) {
        return nativeCreateAndAddEmbeddedObject(this.f7584a, j10);
    }

    public final long p(long j10) {
        return nativeCreateAndSetEmbeddedObject(this.f7584a, j10);
    }

    public final void q() {
        nativeDeleteAll(this.f7584a);
    }

    public final UncheckedRow r(long j10) {
        long jNativeGetRow = nativeGetRow(this.f7584a, j10);
        Table table = this.f7585b;
        table.getClass();
        return new UncheckedRow(table.f7634b, table, jNativeGetRow);
    }

    public final Object s(long j10) {
        return nativeGetValue(this.f7584a, j10);
    }

    public final void t(long j10, byte[] bArr) {
        nativeInsertBinary(this.f7584a, j10, bArr);
    }

    public final void u(long j10, boolean z10) {
        nativeInsertBoolean(this.f7584a, j10, z10);
    }

    public final void v(long j10, Date date) {
        if (date == null) {
            nativeInsertNull(this.f7584a, j10);
        } else {
            nativeInsertDate(this.f7584a, j10, date.getTime());
        }
    }

    public final void w(long j10, Decimal128 decimal128) {
        if (decimal128 == null) {
            nativeInsertNull(this.f7584a, j10);
        } else {
            nativeInsertDecimal128(this.f7584a, j10, decimal128.f12071b, decimal128.f12070a);
        }
    }

    public final void x(long j10, double d10) {
        nativeInsertDouble(this.f7584a, j10, d10);
    }

    public final void y(long j10, float f) {
        nativeInsertFloat(this.f7584a, j10, f);
    }

    public final void z(long j10, long j11) {
        nativeInsertLong(this.f7584a, j10, j11);
    }
}
