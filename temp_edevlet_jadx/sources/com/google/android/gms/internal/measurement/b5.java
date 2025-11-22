package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class b5<T> {
    public static final Object f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public static volatile k4 f3386g;

    /* renamed from: h, reason: collision with root package name */
    public static final AtomicInteger f3387h;

    /* renamed from: a, reason: collision with root package name */
    public final z4 f3388a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3389b;

    /* renamed from: c, reason: collision with root package name */
    public final T f3390c;

    /* renamed from: d, reason: collision with root package name */
    public volatile int f3391d = -1;

    /* renamed from: e, reason: collision with root package name */
    public volatile T f3392e;

    static {
        new AtomicReference();
        f3387h = new AtomicInteger();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ b5(z4 z4Var, String str, Object obj) {
        if (z4Var.f3856a == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f3388a = z4Var;
        this.f3389b = str;
        this.f3390c = obj;
    }

    public abstract T a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a5 A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0015, B:11:0x0029, B:13:0x0035, B:15:0x003e, B:17:0x0053, B:19:0x005e, B:18:0x0058, B:48:0x00cb, B:50:0x00d9, B:52:0x00ea, B:55:0x00f9, B:57:0x0105, B:59:0x010f, B:58:0x010a, B:61:0x0118, B:62:0x011b, B:63:0x011f, B:36:0x00a5, B:38:0x00ab, B:42:0x00bb, B:44:0x00c1, B:47:0x00c9, B:41:0x00b9, B:22:0x0065, B:24:0x006b, B:26:0x0073, B:30:0x008f, B:32:0x009c, B:28:0x0089, B:64:0x0124, B:65:0x0129, B:66:0x012a), top: B:72:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d9 A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0015, B:11:0x0029, B:13:0x0035, B:15:0x003e, B:17:0x0053, B:19:0x005e, B:18:0x0058, B:48:0x00cb, B:50:0x00d9, B:52:0x00ea, B:55:0x00f9, B:57:0x0105, B:59:0x010f, B:58:0x010a, B:61:0x0118, B:62:0x011b, B:63:0x011f, B:36:0x00a5, B:38:0x00ab, B:42:0x00bb, B:44:0x00c1, B:47:0x00c9, B:41:0x00b9, B:22:0x0065, B:24:0x006b, B:26:0x0073, B:30:0x008f, B:32:0x009c, B:28:0x0089, B:64:0x0124, B:65:0x0129, B:66:0x012a), top: B:72:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T b() {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.b5.b():java.lang.Object");
    }
}
