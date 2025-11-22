package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.exceptions.RealmException;
import io.realm.internal.k;
import io.realm.s0;
import io.realm.w0;
import java.util.UUID;
import org.bson.types.ObjectId;

@Keep
/* loaded from: classes2.dex */
public class OsObject implements i {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;
    private k<b> observerPairs = new k<>();

    public static class a implements k.a<b> {
        public a(String[] strArr) {
        }

        @Override // io.realm.internal.k.a
        public final void a(k.b bVar, Object obj) {
            ((w0) ((b) bVar).f7670b).a((s0) obj);
        }
    }

    public static class b<T extends s0> extends k.b<T, w0<T>> {
        public b(T t10, w0<T> w0Var) {
            super(t10, w0Var);
        }
    }

    public OsObject(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow) {
        this.nativePtr = nativeCreate(osSharedRealm.getNativePtr(), uncheckedRow.f7645c);
        osSharedRealm.context.a(this);
    }

    public static UncheckedRow create(Table table) {
        return new UncheckedRow(table.f7635c.context, table, nativeCreateNewObject(table.f7633a));
    }

    public static long createEmbeddedObject(Table table, long j10, long j11) {
        return nativeCreateEmbeddedObject(table.f7633a, j10, j11);
    }

    public static long createRow(Table table) {
        return nativeCreateRow(table.f7633a);
    }

    public static long createRowWithPrimaryKey(Table table, long j10, Object obj) {
        RealmFieldType realmFieldTypeK = table.k(j10);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        OsSharedRealm osSharedRealm = table.f7635c;
        if (realmFieldTypeK == realmFieldType) {
            if (obj == null || (obj instanceof String)) {
                return nativeCreateRowWithStringPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, j10, (String) obj);
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + obj);
        }
        if (realmFieldTypeK == RealmFieldType.INTEGER) {
            return nativeCreateRowWithLongPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, j10, obj == null ? 0L : Long.parseLong(obj.toString()), obj == null);
        }
        if (realmFieldTypeK == RealmFieldType.OBJECT_ID) {
            if (obj == null || (obj instanceof ObjectId)) {
                return nativeCreateRowWithObjectIdPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, j10, obj != null ? obj.toString() : null);
            }
            throw new IllegalArgumentException("Primary key value is not an ObjectId: " + obj);
        }
        if (realmFieldTypeK != RealmFieldType.UUID) {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + realmFieldTypeK);
        }
        if (obj == null || (obj instanceof UUID)) {
            return nativeCreateRowWithUUIDPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, j10, obj != null ? obj.toString() : null);
        }
        throw new IllegalArgumentException("Primary key value is not an UUID: " + obj);
    }

    public static UncheckedRow createWithPrimaryKey(Table table, Object obj) {
        long andVerifyPrimaryKeyColumnIndex = getAndVerifyPrimaryKeyColumnIndex(table);
        RealmFieldType realmFieldTypeK = table.k(andVerifyPrimaryKeyColumnIndex);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        OsSharedRealm osSharedRealm = table.f7635c;
        if (realmFieldTypeK == realmFieldType) {
            if (obj == null || (obj instanceof String)) {
                return new UncheckedRow(osSharedRealm.context, table, nativeCreateNewObjectWithStringPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, andVerifyPrimaryKeyColumnIndex, (String) obj));
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + obj);
        }
        if (realmFieldTypeK == RealmFieldType.INTEGER) {
            return new UncheckedRow(osSharedRealm.context, table, nativeCreateNewObjectWithLongPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, andVerifyPrimaryKeyColumnIndex, obj == null ? 0L : Long.parseLong(obj.toString()), obj == null));
        }
        if (realmFieldTypeK == RealmFieldType.OBJECT_ID) {
            return new UncheckedRow(osSharedRealm.context, table, nativeCreateNewObjectWithObjectIdPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, andVerifyPrimaryKeyColumnIndex, obj == null ? null : obj.toString()));
        }
        if (realmFieldTypeK == RealmFieldType.UUID) {
            return new UncheckedRow(osSharedRealm.context, table, nativeCreateNewObjectWithUUIDPrimaryKey(osSharedRealm.getNativePtr(), table.f7633a, andVerifyPrimaryKeyColumnIndex, obj == null ? null : obj.toString()));
        }
        throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + realmFieldTypeK);
    }

    private static long getAndVerifyPrimaryKeyColumnIndex(Table table) {
        String strB = OsObjectStore.b(table.f7635c, table.f());
        if (strB != null) {
            return table.h(strB);
        }
        throw new IllegalStateException(table.m() + " has no primary key defined.");
    }

    private static native long nativeCreate(long j10, long j11);

    private static native long nativeCreateEmbeddedObject(long j10, long j11, long j12);

    private static native long nativeCreateNewObject(long j10);

    private static native long nativeCreateNewObjectWithLongPrimaryKey(long j10, long j11, long j12, long j13, boolean z10);

    private static native long nativeCreateNewObjectWithObjectIdPrimaryKey(long j10, long j11, long j12, String str);

    private static native long nativeCreateNewObjectWithStringPrimaryKey(long j10, long j11, long j12, String str);

    private static native long nativeCreateNewObjectWithUUIDPrimaryKey(long j10, long j11, long j12, String str);

    private static native long nativeCreateRow(long j10);

    private static native long nativeCreateRowWithLongPrimaryKey(long j10, long j11, long j12, long j13, boolean z10);

    private static native long nativeCreateRowWithObjectIdPrimaryKey(long j10, long j11, long j12, String str);

    private static native long nativeCreateRowWithStringPrimaryKey(long j10, long j11, long j12, String str);

    private static native long nativeCreateRowWithUUIDPrimaryKey(long j10, long j11, long j12, String str);

    private static native long nativeGetFinalizerPtr();

    private native void nativeStartListening(long j10);

    private native void nativeStopListening(long j10);

    private void notifyChangeListeners(String[] strArr) {
        this.observerPairs.b(new a(strArr));
    }

    public <T extends s0> void addListener(T t10, w0<T> w0Var) {
        if (this.observerPairs.c()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.a(new b(t10, w0Var));
    }

    @Override // io.realm.internal.i
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.i
    public long getNativePtr() {
        return this.nativePtr;
    }

    public <T extends s0> void removeListener(T t10) {
        this.observerPairs.e(t10);
        if (this.observerPairs.c()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T extends s0> void removeListener(T t10, w0<T> w0Var) {
        this.observerPairs.d(t10, w0Var);
        if (this.observerPairs.c()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public void setObserverPairs(k<b> kVar) {
        if (!this.observerPairs.c()) {
            throw new IllegalStateException("'observerPairs' is not empty. Listeners have been added before.");
        }
        this.observerPairs = kVar;
        if (kVar.c()) {
            return;
        }
        nativeStartListening(this.nativePtr);
    }
}
