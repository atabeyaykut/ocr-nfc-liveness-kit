package io.realm.internal;

import io.realm.l0;
import io.realm.o0;

/* loaded from: classes2.dex */
public class OsObjectStore {
    public static void a(o0 o0Var, l0 l0Var) {
        nativeCallWithLock(o0Var.f7746c, l0Var);
    }

    public static String b(OsSharedRealm osSharedRealm, String str) {
        return nativeGetPrimaryKeyForObject(osSharedRealm.getNativePtr(), Util.nativeGetTablePrefix() + str);
    }

    public static long c(OsSharedRealm osSharedRealm) {
        return nativeGetSchemaVersion(osSharedRealm.getNativePtr());
    }

    public static void d(OsSharedRealm osSharedRealm) {
        nativeSetSchemaVersion(osSharedRealm.getNativePtr(), -1L);
    }

    private static native boolean nativeCallWithLock(String str, Runnable runnable);

    private static native String nativeGetPrimaryKeyForObject(long j10, String str);

    private static native long nativeGetSchemaVersion(long j10);

    private static native void nativeSetSchemaVersion(long j10, long j11);
}
