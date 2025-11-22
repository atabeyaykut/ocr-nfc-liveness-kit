package kotlinx.coroutines.internal;

import nc.k1;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public static final k1 f9167a;

    /* JADX WARN: Removed duplicated region for block: B:33:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0085 A[Catch: all -> 0x008d, TRY_ENTER, TryCatch #2 {, blocks: (B:10:0x0014, B:14:0x0035, B:26:0x0073, B:35:0x0085, B:36:0x008c, B:31:0x007d, B:17:0x004c, B:20:0x0057, B:21:0x005e, B:24:0x006d, B:13:0x002f, B:29:0x0078), top: B:43:0x0014, inners: #1 }] */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.fast.service.loader"
            int r1 = kotlinx.coroutines.internal.v.f9177a
            r1 = 0
            java.lang.String r0 = java.lang.System.getProperty(r0)     // Catch: java.lang.SecurityException -> La
            goto Lc
        La:
            r0 = r1
        Lc:
            if (r0 != 0) goto Lf
            goto L12
        Lf:
            java.lang.Boolean.parseBoolean(r0)
        L12:
            java.lang.Class<kotlinx.coroutines.internal.MainDispatcherFactory> r0 = kotlinx.coroutines.internal.MainDispatcherFactory.class
            java.lang.ClassLoader r2 = r0.getClassLoader()     // Catch: java.lang.Throwable -> L8d
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0, r2)     // Catch: java.lang.Throwable -> L8d
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L8d
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.h.f(r0, r2)     // Catch: java.lang.Throwable -> L8d
            lc.l r2 = new lc.l     // Catch: java.lang.Throwable -> L8d
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L8d
            boolean r0 = r2 instanceof lc.a     // Catch: java.lang.Throwable -> L8d
            if (r0 == 0) goto L2f
            goto L35
        L2f:
            lc.a r0 = new lc.a     // Catch: java.lang.Throwable -> L8d
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L8d
            r2 = r0
        L35:
            java.util.ArrayList r0 = lc.w.c1(r2)     // Catch: java.lang.Throwable -> L8d
            java.util.List r0 = b8.f.Z(r0)     // Catch: java.lang.Throwable -> L8d
            r2 = r0
            java.lang.Iterable r2 = (java.lang.Iterable) r2     // Catch: java.lang.Throwable -> L8d
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8d
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L8d
            if (r3 != 0) goto L4c
            r3 = r1
            goto L73
        L4c:
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L8d
            boolean r4 = r2.hasNext()     // Catch: java.lang.Throwable -> L8d
            if (r4 != 0) goto L57
            goto L73
        L57:
            r4 = r3
            kotlinx.coroutines.internal.MainDispatcherFactory r4 = (kotlinx.coroutines.internal.MainDispatcherFactory) r4     // Catch: java.lang.Throwable -> L8d
            int r4 = r4.getLoadPriority()     // Catch: java.lang.Throwable -> L8d
        L5e:
            java.lang.Object r5 = r2.next()     // Catch: java.lang.Throwable -> L8d
            r6 = r5
            kotlinx.coroutines.internal.MainDispatcherFactory r6 = (kotlinx.coroutines.internal.MainDispatcherFactory) r6     // Catch: java.lang.Throwable -> L8d
            int r6 = r6.getLoadPriority()     // Catch: java.lang.Throwable -> L8d
            if (r4 >= r6) goto L6d
            r3 = r5
            r4 = r6
        L6d:
            boolean r5 = r2.hasNext()     // Catch: java.lang.Throwable -> L8d
            if (r5 != 0) goto L5e
        L73:
            kotlinx.coroutines.internal.MainDispatcherFactory r3 = (kotlinx.coroutines.internal.MainDispatcherFactory) r3     // Catch: java.lang.Throwable -> L8d
            if (r3 != 0) goto L78
            goto L80
        L78:
            nc.k1 r1 = r3.createDispatcher(r0)     // Catch: java.lang.Throwable -> L7d
            goto L80
        L7d:
            r3.hintOnError()     // Catch: java.lang.Throwable -> L8d
        L80:
            if (r1 == 0) goto L85
            kotlinx.coroutines.internal.m.f9167a = r1
            return
        L85:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L8d
            java.lang.String r1 = "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L8d
            throw r0     // Catch: java.lang.Throwable -> L8d
        L8d:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.m.<clinit>():void");
    }
}
