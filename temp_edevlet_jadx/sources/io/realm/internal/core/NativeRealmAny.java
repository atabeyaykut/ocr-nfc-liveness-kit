package io.realm.internal.core;

import io.realm.h0;
import io.realm.internal.Keep;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.h;
import io.realm.internal.i;
import io.realm.internal.n;
import io.realm.internal.o;
import io.realm.internal.p;
import io.realm.s0;
import java.util.Date;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

@Keep
/* loaded from: classes2.dex */
public class NativeRealmAny implements i {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;

    public NativeRealmAny() {
        this(nativeCreateNull());
    }

    public NativeRealmAny(long j10) {
        this.nativePtr = j10;
        h.f7664b.a(this);
    }

    public NativeRealmAny(n nVar) {
        this(createRealmAnyLink(nVar));
    }

    public NativeRealmAny(Boolean bool) {
        this(nativeCreateBoolean(bool.booleanValue()));
    }

    public NativeRealmAny(Double d10) {
        this(nativeCreateDouble(d10.doubleValue()));
    }

    public NativeRealmAny(Float f) {
        this(nativeCreateFloat(f.floatValue()));
    }

    public NativeRealmAny(Number number) {
        this(nativeCreateLong(number.longValue()));
    }

    public NativeRealmAny(String str) {
        this(nativeCreateString(str));
    }

    public NativeRealmAny(Date date) {
        this(nativeCreateDate(date.getTime()));
    }

    public NativeRealmAny(UUID r32) {
        this(nativeCreateUUID(r32.toString()));
    }

    public NativeRealmAny(Decimal128 decimal128) {
        this(nativeCreateDecimal128(decimal128.f12071b, decimal128.f12070a));
    }

    public NativeRealmAny(ObjectId objectId) {
        this(nativeCreateObjectId(objectId.toString()));
    }

    public NativeRealmAny(byte[] bArr) {
        this(nativeCreateBinary(bArr));
    }

    private static long createRealmAnyLink(n nVar) {
        p pVar = nVar.b().f7531c;
        return nativeCreateLink(pVar.q().f7633a, pVar.Y());
    }

    private static native byte[] nativeAsBinary(long j10);

    private static native boolean nativeAsBoolean(long j10);

    private static native long nativeAsDate(long j10);

    private static native long[] nativeAsDecimal128(long j10);

    private static native double nativeAsDouble(long j10);

    private static native float nativeAsFloat(long j10);

    private static native long nativeAsLong(long j10);

    private static native String nativeAsObjectId(long j10);

    private static native String nativeAsString(long j10);

    private static native String nativeAsUUID(long j10);

    private static native long nativeCreateBinary(byte[] bArr);

    private static native long nativeCreateBoolean(boolean z10);

    private static native long nativeCreateDate(long j10);

    private static native long nativeCreateDecimal128(long j10, long j11);

    private static native long nativeCreateDouble(double d10);

    private static native long nativeCreateFloat(float f);

    private static native long nativeCreateLink(long j10, long j11);

    private static native long nativeCreateLong(long j10);

    private static native long nativeCreateNull();

    private static native long nativeCreateObjectId(String str);

    private static native long nativeCreateString(String str);

    private static native long nativeCreateUUID(String str);

    private static native boolean nativeEquals(long j10, long j11);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetRealmModelRowKey(long j10);

    private static native String nativeGetRealmModelTableName(long j10, long j11);

    private static native int nativeGetType(long j10);

    public byte[] asBinary() {
        return nativeAsBinary(this.nativePtr);
    }

    public boolean asBoolean() {
        return nativeAsBoolean(this.nativePtr);
    }

    public Date asDate() {
        return new Date(nativeAsDate(this.nativePtr));
    }

    public Decimal128 asDecimal128() {
        long[] jArrNativeAsDecimal128 = nativeAsDecimal128(this.nativePtr);
        return Decimal128.fromIEEE754BIDEncoding(jArrNativeAsDecimal128[1], jArrNativeAsDecimal128[0]);
    }

    public double asDouble() {
        return nativeAsDouble(this.nativePtr);
    }

    public float asFloat() {
        return nativeAsFloat(this.nativePtr);
    }

    public long asLong() {
        return nativeAsLong(this.nativePtr);
    }

    public ObjectId asObjectId() {
        return new ObjectId(nativeAsObjectId(this.nativePtr));
    }

    public String asString() {
        return nativeAsString(this.nativePtr);
    }

    public UUID asUUID() {
        return UUID.fromString(nativeAsUUID(this.nativePtr));
    }

    public boolean coercedEquals(NativeRealmAny nativeRealmAny) {
        return nativeEquals(this.nativePtr, nativeRealmAny.nativePtr);
    }

    public <T extends s0> Class<T> getModelClass(OsSharedRealm osSharedRealm, o oVar) {
        return oVar.c(Table.g(nativeGetRealmModelTableName(this.nativePtr, osSharedRealm.getNativePtr())));
    }

    @Override // io.realm.internal.i
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.i
    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getRealmModelRowKey() {
        return nativeGetRealmModelRowKey(this.nativePtr);
    }

    public String getRealmModelTableName(OsSharedRealm osSharedRealm) {
        return nativeGetRealmModelTableName(this.nativePtr, osSharedRealm.getNativePtr());
    }

    public h0.a getType() {
        int r02 = nativeGetType(this.nativePtr);
        return r02 == -1 ? h0.a.NULL : h0.a.f7562q[r02];
    }
}
