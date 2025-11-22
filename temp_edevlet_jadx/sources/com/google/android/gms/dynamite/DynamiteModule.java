package com.google.android.gms.dynamite;

import a4.g;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.DynamiteApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import r3.p;
import r3.r;

/* loaded from: classes.dex */
public final class DynamiteModule {

    @Nullable
    public static Boolean f = null;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public static String f3005g = null;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f3006h = false;

    /* renamed from: i, reason: collision with root package name */
    public static int f3007i = -1;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public static Boolean f3008j;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public static a4.f f3012n;

    /* renamed from: o, reason: collision with root package name */
    @Nullable
    public static g f3013o;

    /* renamed from: a, reason: collision with root package name */
    public final Context f3014a;

    /* renamed from: k, reason: collision with root package name */
    public static final ThreadLocal f3009k = new ThreadLocal();

    /* renamed from: l, reason: collision with root package name */
    public static final a4.d f3010l = new a4.d();

    /* renamed from: m, reason: collision with root package name */
    public static final com.google.android.gms.dynamite.a f3011m = new com.google.android.gms.dynamite.a();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public static final com.google.android.gms.dynamite.b f3001b = new com.google.android.gms.dynamite.b();

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public static final c f3002c = new c();

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public static final d f3003d = new d();

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public static final e f3004e = new e();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {

        @Nullable
        public static ClassLoader sClassLoader;
    }

    public static class a extends Exception {
        public /* synthetic */ a(String str) {
            super(str);
        }

        public /* synthetic */ a(String str, Throwable th2) {
            super(str, th2);
        }
    }

    public interface b {

        public interface a {
            int a(@NonNull Context context, @NonNull String str, boolean z10) throws a;

            int b(@NonNull Context context, @NonNull String str);
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b, reason: collision with other inner class name */
        public static class C0060b {

            /* renamed from: a, reason: collision with root package name */
            public int f3015a = 0;

            /* renamed from: b, reason: collision with root package name */
            public int f3016b = 0;

            /* renamed from: c, reason: collision with root package name */
            public int f3017c = 0;
        }

        @NonNull
        C0060b a(@NonNull Context context, @NonNull String str, @NonNull a aVar) throws a;
    }

    public DynamiteModule(Context context) {
        r.i(context);
        this.f3014a = context;
    }

    public static int a(@NonNull Context context, @NonNull String str) throws NoSuchFieldException, ClassNotFoundException {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (p.a(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e10) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e10.getMessage())));
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0084 A[Catch: all -> 0x030f, TRY_LEAVE, TryCatch #8 {all -> 0x030f, blocks: (B:3:0x002d, B:7:0x0076, B:12:0x007e, B:15:0x0084, B:26:0x00ba, B:110:0x023e, B:115:0x024b, B:116:0x0252, B:114:0x0244, B:120:0x0256, B:122:0x0258, B:123:0x025f, B:140:0x02ce, B:141:0x02e1, B:124:0x0260, B:126:0x027e, B:128:0x028e, B:138:0x02c6, B:139:0x02cd, B:142:0x02e2, B:143:0x030e), top: B:162:0x002d, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b8  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.dynamite.DynamiteModule c(@androidx.annotation.NonNull android.content.Context r21, @androidx.annotation.NonNull com.google.android.gms.dynamite.DynamiteModule.b r22, @androidx.annotation.NonNull java.lang.String r23) throws com.google.android.gms.dynamite.DynamiteModule.a {
        /*
            Method dump skipped, instructions count: 816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.c(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$b, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a3 A[Catch: all -> 0x00ac, TryCatch #5 {, blocks: (B:9:0x0027, B:13:0x0037, B:15:0x003e, B:17:0x0044, B:20:0x0047, B:22:0x004b, B:25:0x0054, B:27:0x005c, B:30:0x0063, B:37:0x008d, B:38:0x0095, B:33:0x006a, B:35:0x0070, B:36:0x007f, B:41:0x0098, B:44:0x009b, B:45:0x009f, B:46:0x00a3, B:14:0x003a, B:48:0x00aa, B:47:0x00a8), top: B:137:0x0027, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x016e A[Catch: all -> 0x0203, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0203, blocks: (B:3:0x0002, B:61:0x00d3, B:63:0x00d9, B:68:0x00fa, B:98:0x016e, B:102:0x017b, B:122:0x01fc, B:123:0x01ff, B:118:0x01f4, B:66:0x00df, B:126:0x0202, B:4:0x0003, B:7:0x000a, B:8:0x0026, B:18:0x0045, B:39:0x0096, B:42:0x0099, B:59:0x00d0, B:52:0x00ae, B:60:0x00d2, B:58:0x00b4), top: B:136:0x0002, inners: #0, #7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int d(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.NonNull java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.d(android.content.Context, java.lang.String, boolean):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00d4 A[Catch: all -> 0x00dd, TryCatch #5 {all -> 0x00dd, blocks: (B:45:0x00a6, B:46:0x00ad, B:62:0x00cf, B:64:0x00d4, B:65:0x00d5, B:66:0x00dc), top: B:72:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d5 A[Catch: all -> 0x00dd, TryCatch #5 {all -> 0x00dd, blocks: (B:45:0x00a6, B:46:0x00ad, B:62:0x00cf, B:64:0x00d4, B:65:0x00d5, B:66:0x00dc), top: B:72:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int e(android.content.Context r10, java.lang.String r11, boolean r12, boolean r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.e(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    public static void f(ClassLoader classLoader) throws a {
        g gVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                gVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                gVar = iInterfaceQueryLocalInterface instanceof g ? (g) iInterfaceQueryLocalInterface : new g(iBinder);
            }
            f3013o = gVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            throw new a("Failed to instantiate dynamite loader", e10);
        }
    }

    public static boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f3008j)) {
            return true;
        }
        boolean zBooleanValue = false;
        if (f3008j == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (m3.f.f9946b.c(10000000, context) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                zBooleanValue = true;
            }
            Boolean boolValueOf = Boolean.valueOf(zBooleanValue);
            f3008j = boolValueOf;
            zBooleanValue = boolValueOf.booleanValue();
            if (zBooleanValue && providerInfoResolveContentProvider != null && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f3006h = true;
            }
        }
        if (!zBooleanValue) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return zBooleanValue;
    }

    @Nullable
    public static a4.f h(Context context) {
        a4.f fVar;
        synchronized (DynamiteModule.class) {
            a4.f fVar2 = f3012n;
            if (fVar2 != null) {
                return fVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    fVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    fVar = iInterfaceQueryLocalInterface instanceof a4.f ? (a4.f) iInterfaceQueryLocalInterface : new a4.f(iBinder);
                }
                if (fVar != null) {
                    f3012n = fVar;
                    return fVar;
                }
            } catch (Exception e10) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e10.getMessage());
            }
            return null;
        }
    }

    @NonNull
    public final IBinder b(@NonNull String str) throws a {
        try {
            return (IBinder) this.f3014a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e10) {
            throw new a("Failed to instantiate module class: ".concat(String.valueOf(str)), e10);
        }
    }
}
