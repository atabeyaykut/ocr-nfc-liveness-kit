package io.realm.internal;

import io.realm.CompactOnLaunchCallback;
import io.realm.internal.OsSharedRealm;
import io.realm.o0;
import java.net.Proxy;
import java.net.URI;

/* loaded from: classes2.dex */
public class OsRealmConfig implements i {

    /* renamed from: k, reason: collision with root package name */
    public static final long f7596k = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final Object f7597a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7598b;

    /* renamed from: c, reason: collision with root package name */
    public final o0 f7599c;

    /* renamed from: d, reason: collision with root package name */
    public final URI f7600d;

    /* renamed from: e, reason: collision with root package name */
    public final long f7601e;
    public final h f = new h();

    /* renamed from: g, reason: collision with root package name */
    public final CompactOnLaunchCallback f7602g;

    /* renamed from: h, reason: collision with root package name */
    public final OsSharedRealm.MigrationCallback f7603h;

    /* renamed from: j, reason: collision with root package name */
    public final OsSharedRealm.InitializationCallback f7604j;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7605a;

        static {
            int[] r02 = new int[Proxy.Type.values().length];
            f7605a = r02;
            try {
                r02[Proxy.Type.HTTP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final o0 f7606a;

        /* renamed from: b, reason: collision with root package name */
        public OsSchemaInfo f7607b = null;

        /* renamed from: c, reason: collision with root package name */
        public OsSharedRealm.MigrationCallback f7608c = null;

        /* renamed from: d, reason: collision with root package name */
        public OsSharedRealm.InitializationCallback f7609d = null;

        /* renamed from: e, reason: collision with root package name */
        public boolean f7610e = false;
        public String f = "";

        public b(o0 o0Var) {
            this.f7606a = o0Var;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0223  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OsRealmConfig(io.realm.o0 r41, java.lang.String r42, boolean r43, io.realm.internal.OsSchemaInfo r44, io.realm.internal.OsSharedRealm.MigrationCallback r45, io.realm.internal.OsSharedRealm.InitializationCallback r46) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.OsRealmConfig.<init>(io.realm.o0, java.lang.String, boolean, io.realm.internal.OsSchemaInfo, io.realm.internal.OsSharedRealm$MigrationCallback, io.realm.internal.OsSharedRealm$InitializationCallback):void");
    }

    private static native long nativeCreate(String str, String str2, boolean z10, long j10);

    private native String nativeCreateAndSetSyncConfig(long j10, long j11, String str, String str2, String str3, String str4, String str5, String str6, byte b10, String str7, String str8, String[] strArr, byte b11, Object obj, Object obj2, String str9, Object obj3);

    private static native void nativeEnableChangeNotification(long j10, boolean z10);

    private static native long nativeGetFinalizerPtr();

    private static native void nativeSetCompactOnLaunchCallback(long j10, CompactOnLaunchCallback compactOnLaunchCallback);

    private static native void nativeSetEncryptionKey(long j10, byte[] bArr);

    private static native void nativeSetInMemory(long j10, boolean z10);

    private native void nativeSetInitializationCallback(long j10, OsSharedRealm.InitializationCallback initializationCallback);

    private native void nativeSetSchemaConfig(long j10, byte b10, long j11, long j12, OsSharedRealm.MigrationCallback migrationCallback);

    private static native void nativeSetSyncConfigProxySettings(long j10, byte b10, String str, int r42);

    private static native void nativeSetSyncConfigSslSettings(long j10, boolean z10, String str);

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7596k;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7601e;
    }
}
