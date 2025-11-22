package kd;

import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class f implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static boolean f8857c = false;

    /* renamed from: a, reason: collision with root package name */
    public final a f8858a;

    /* renamed from: b, reason: collision with root package name */
    public HashMap f8859b = new HashMap();

    public f(a aVar) {
        this.f8858a = aVar;
    }

    public final void a(gd.c cVar) {
        g gVar = (g) this.f8859b.get(cVar);
        if (gVar != null) {
            if (id.b.f7423b) {
                id.b.a("RangeState", "adding %s to existing range for: %s", cVar, gVar);
            }
            gVar.c(cVar);
        } else {
            if (id.b.f7423b) {
                id.b.a("RangeState", "adding %s to new rangedBeacon", cVar);
            }
            this.f8859b.put(cVar, new g(cVar));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0069 A[Catch: all -> 0x0045, TryCatch #1 {all -> 0x0045, blocks: (B:5:0x000e, B:6:0x0018, B:8:0x001e, B:10:0x002e, B:12:0x0032, B:14:0x003f, B:17:0x0047, B:19:0x0054, B:21:0x0058, B:27:0x006b, B:26:0x0069, B:28:0x006f, B:29:0x0079, B:30:0x007b), top: B:39:0x000e, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.ArrayList b() {
        /*
            r13 = this;
            monitor-enter(r13)
            java.util.HashMap r0 = new java.util.HashMap     // Catch: java.lang.Throwable -> L80
            r0.<init>()     // Catch: java.lang.Throwable -> L80
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L80
            r1.<init>()     // Catch: java.lang.Throwable -> L80
            java.util.HashMap r2 = r13.f8859b     // Catch: java.lang.Throwable -> L80
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L80
            java.util.HashMap r3 = r13.f8859b     // Catch: java.lang.Throwable -> L45
            java.util.Set r3 = r3.keySet()     // Catch: java.lang.Throwable -> L45
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L45
        L18:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L45
            if (r4 == 0) goto L79
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L45
            gd.c r4 = (gd.c) r4     // Catch: java.lang.Throwable -> L45
            java.util.HashMap r5 = r13.f8859b     // Catch: java.lang.Throwable -> L45
            java.lang.Object r5 = r5.get(r4)     // Catch: java.lang.Throwable -> L45
            kd.g r5 = (kd.g) r5     // Catch: java.lang.Throwable -> L45
            if (r5 == 0) goto L18
            boolean r6 = r5.f8860a     // Catch: java.lang.Throwable -> L45
            if (r6 == 0) goto L47
            r5.a()     // Catch: java.lang.Throwable -> L45
            kd.i r6 = r5.b()     // Catch: java.lang.Throwable -> L45
            boolean r6 = r6.a()     // Catch: java.lang.Throwable -> L45
            if (r6 != 0) goto L47
            gd.c r6 = r5.f8862c     // Catch: java.lang.Throwable -> L45
            r1.add(r6)     // Catch: java.lang.Throwable -> L45
            goto L47
        L45:
            r0 = move-exception
            goto L7e
        L47:
            kd.i r6 = r5.b()     // Catch: java.lang.Throwable -> L45
            boolean r6 = r6.a()     // Catch: java.lang.Throwable -> L45
            r7 = 1
            r6 = r6 ^ r7
            r8 = 0
            if (r6 != r7) goto L6f
            boolean r6 = kd.f.f8857c     // Catch: java.lang.Throwable -> L45
            if (r6 == 0) goto L69
            long r9 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L45
            long r11 = r5.f8861b     // Catch: java.lang.Throwable -> L45
            long r9 = r9 - r11
            r11 = 5000(0x1388, double:2.4703E-320)
            int r6 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r6 <= 0) goto L66
            goto L67
        L66:
            r7 = 0
        L67:
            if (r7 == 0) goto L6b
        L69:
            r5.f8860a = r8     // Catch: java.lang.Throwable -> L45
        L6b:
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L45
            goto L18
        L6f:
            java.lang.String r4 = "RangeState"
            java.lang.String r5 = "Dumping beacon from RangeState because it has no recent measurements."
            java.lang.Object[] r6 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> L45
            id.b.a(r4, r5, r6)     // Catch: java.lang.Throwable -> L45
            goto L18
        L79:
            r13.f8859b = r0     // Catch: java.lang.Throwable -> L45
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L45
            monitor-exit(r13)
            return r1
        L7e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L45
            throw r0     // Catch: java.lang.Throwable -> L80
        L80:
            r0 = move-exception
            monitor-exit(r13)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kd.f.b():java.util.ArrayList");
    }
}
