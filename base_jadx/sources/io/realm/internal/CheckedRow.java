package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Locale;

/* loaded from: classes2.dex */
public class CheckedRow extends UncheckedRow {
    public static final /* synthetic */ int f = 0;

    public CheckedRow(UncheckedRow uncheckedRow) {
        super(uncheckedRow);
    }

    public CheckedRow(h hVar, Table table, long j10) {
        super(hVar, table, j10);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final boolean C(long j10) {
        return super.C(j10);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final OsMap H(long j10) {
        Table table = this.f7644b;
        if (table.k(j10) == RealmFieldType.STRING_TO_LINK_MAP) {
            return new OsMap(this, j10);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' is not a 'RealmDictionary'.", table.i(j10)));
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final OsSet J(long j10, RealmFieldType realmFieldType) {
        Table table = this.f7644b;
        if (realmFieldType == table.k(j10)) {
            return new OsSet(this, j10);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "The type of field '%1$s' is not 'RealmFieldType.%2$s'.", table.i(j10), realmFieldType.name()));
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final boolean L(long j10) {
        RealmFieldType realmFieldTypeV = V(j10);
        if (realmFieldTypeV == RealmFieldType.OBJECT || realmFieldTypeV == RealmFieldType.LIST) {
            return super.L(j10);
        }
        return false;
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final void M(long j10) {
        if (V(j10) != RealmFieldType.BINARY) {
            super.M(j10);
        } else {
            this.f7644b.a();
            nativeSetByteArray(this.f7645c, j10, null);
        }
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final OsList S(long j10, RealmFieldType realmFieldType) {
        Table table = this.f7644b;
        if (realmFieldType == table.k(j10)) {
            return new OsList(this, j10);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "The type of field '%1$s' is not 'RealmFieldType.%2$s'.", table.i(j10), realmFieldType.name()));
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final OsMap T(long j10, RealmFieldType realmFieldType) {
        Table table = this.f7644b;
        if (realmFieldType == table.k(j10)) {
            return new OsMap(this, j10);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "The type of field '%1$s' is not 'RealmFieldType.%2$s'.", table.i(j10), realmFieldType.name()));
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final p X(OsSharedRealm osSharedRealm) {
        if (!isValid()) {
            return g.f7661a;
        }
        return new CheckedRow(this.f7643a, this.f7644b.e(osSharedRealm), nativeFreeze(this.f7645c, osSharedRealm.getNativePtr()));
    }

    @Override // io.realm.internal.UncheckedRow
    public native boolean nativeGetBoolean(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native byte[] nativeGetByteArray(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetColumnKey(long j10, String str);

    @Override // io.realm.internal.UncheckedRow
    public native int nativeGetColumnType(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native long[] nativeGetDecimal128(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native double nativeGetDouble(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native float nativeGetFloat(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetLink(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetLong(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native String nativeGetObjectId(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native String nativeGetString(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetTimestamp(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native boolean nativeIsNullLink(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeNullifyLink(long j10, long j11);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetBoolean(long j10, long j11, boolean z10);

    public native void nativeSetByteArray(long j10, long j11, byte[] bArr);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetDouble(long j10, long j11, double d10);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetLong(long j10, long j11, long j12);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetString(long j10, long j11, String str);

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final OsSet u(long j10) {
        return new OsSet(this, j10);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.p
    public final OsList z(long j10) {
        Table table = this.f7644b;
        if (table.k(j10) == RealmFieldType.LIST) {
            return new OsList(this, j10);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' is not a 'RealmList'.", table.i(j10)));
    }
}
