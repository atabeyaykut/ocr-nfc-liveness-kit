package io.realm.internal;

import io.realm.RealmFieldType;

/* loaded from: classes2.dex */
public class OsObjectSchemaInfo implements i {

    /* renamed from: b, reason: collision with root package name */
    public static final long f7589b = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final long f7590a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f7591a;

        /* renamed from: b, reason: collision with root package name */
        public final long[] f7592b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f7593c;

        /* renamed from: d, reason: collision with root package name */
        public int f7594d = 0;
        public int f = 0;

        /* renamed from: e, reason: collision with root package name */
        public final long[] f7595e = new long[0];

        public a(String str, boolean z10, int r42) {
            this.f7591a = str;
            this.f7593c = z10;
            this.f7592b = new long[r42];
        }

        public final void a(String str, RealmFieldType realmFieldType, String str2) {
            long jNativeCreatePersistedLinkProperty = Property.nativeCreatePersistedLinkProperty(str, "", Property.a(realmFieldType, false), str2);
            int r42 = this.f7594d;
            this.f7592b[r42] = jNativeCreatePersistedLinkProperty;
            this.f7594d = r42 + 1;
        }

        public final void b(String str, RealmFieldType realmFieldType, boolean z10, boolean z11, boolean z12) {
            long jNativeCreatePersistedProperty = Property.nativeCreatePersistedProperty(str, "", Property.a(realmFieldType, z12), z10, z11);
            int r42 = this.f7594d;
            this.f7592b[r42] = jNativeCreatePersistedProperty;
            this.f7594d = r42 + 1;
        }

        public final OsObjectSchemaInfo c() {
            if (this.f7594d == -1 || this.f == -1) {
                throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
            }
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("", this.f7591a, this.f7593c);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.f7590a, this.f7592b, this.f7595e);
            this.f7594d = -1;
            this.f = -1;
            return osObjectSchemaInfo;
        }
    }

    public OsObjectSchemaInfo(long j10) {
        this.f7590a = j10;
        h.f7664b.a(this);
    }

    public OsObjectSchemaInfo(String str, String str2, boolean z10) {
        this(nativeCreateRealmObjectSchema(str, str2, z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeAddProperties(long j10, long[] jArr, long[] jArr2);

    private static native long nativeCreateRealmObjectSchema(String str, String str2, boolean z10);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetProperty(long j10, String str);

    public final Property b(String str) {
        return new Property(nativeGetProperty(this.f7590a, str));
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7589b;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7590a;
    }
}
