package kd;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: e, reason: collision with root package name */
    public static volatile e f8852e;
    public static final Object f = new Object();

    /* renamed from: b, reason: collision with root package name */
    public AbstractMap f8854b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8855c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f8853a = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8856d = true;

    public e(Context context) {
        this.f8855c = context;
    }

    public static e c(Context context) {
        e eVar = f8852e;
        if (eVar == null) {
            synchronized (f) {
                eVar = f8852e;
                if (eVar == null) {
                    eVar = new e(context.getApplicationContext());
                    f8852e = eVar;
                }
            }
        }
        return eVar;
    }

    public final h a(gd.l lVar, a aVar) {
        if (d().containsKey(lVar)) {
            Iterator<gd.l> it = d().keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                gd.l next = it.next();
                if (next.equals(lVar)) {
                    if (!next.b(lVar)) {
                        id.b.a("e", "Replacing region with unique identifier " + lVar.f6696c, new Object[0]);
                        id.b.a("e", "Old definition: " + next, new Object[0]);
                        id.b.a("e", "New definition: " + lVar, new Object[0]);
                        id.b.a("e", "clearing state", new Object[0]);
                        d().remove(lVar);
                    } else if (!this.f8853a) {
                        return d().get(next);
                    }
                }
            }
        }
        h hVar = new h(aVar);
        id.b.a("e", "Region marked as active: " + lVar, new Object[0]);
        hVar.f8869d = true;
        d().put(lVar, hVar);
        return hVar;
    }

    public final synchronized void b(gd.l lVar, a aVar) {
        a(lVar, aVar);
        i();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:10|(13:95|11|91|12|93|13|(2:16|14)|97|17|(4:20|(3:99|22|(3:100|24|104)(1:103))(1:102)|101|18)|98|31|(2:83|33))|80|63|64) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0108 A[Catch: all -> 0x0131, TryCatch #6 {all -> 0x0131, blocks: (B:54:0x0104, B:56:0x0108, B:57:0x0110), top: B:82:0x0104 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0110 A[Catch: all -> 0x0131, TRY_LEAVE, TryCatch #6 {all -> 0x0131, blocks: (B:54:0x0104, B:56:0x0108, B:57:0x0110), top: B:82:0x0104 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0126 A[EXC_TOP_SPLITTER, PHI: r3
      0x0126: PHI (r3v4 ??) = (r3v3 ??), (r3v7 ??), (r3v7 ??), (r3v7 ??) binds: [B:62:0x0124, B:32:0x00e8, B:77:0x0126, B:33:0x00ea] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x013f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0138 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.ObjectInputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<gd.l, kd.h> d() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kd.e.d():java.util.Map");
    }

    public final synchronized void e() {
        if (this.f8853a) {
            id.b.a("e", "Time to purge inactive regions.", new Object[0]);
            HashMap map = new HashMap();
            boolean z10 = false;
            for (gd.l lVar : d().keySet()) {
                h hVar = d().get(lVar);
                if (hVar.f8869d) {
                    map.put(lVar, hVar);
                } else {
                    id.b.a("e", "We will purge this inactive region: " + lVar, new Object[0]);
                    z10 = true;
                }
            }
            if (z10) {
                this.f8854b = map;
                i();
            }
            this.f8853a = false;
        }
    }

    public final synchronized Set<gd.l> f() {
        return d().keySet();
    }

    public final synchronized int g() {
        return f().size();
    }

    public final ArrayList h(gd.c cVar) {
        ArrayList arrayList = new ArrayList();
        for (gd.l lVar : f()) {
            if (lVar.c(cVar)) {
                arrayList.add(lVar);
            } else {
                id.b.a("e", "This region (%s) does not match beacon: %s", lVar, cVar);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() throws java.lang.Throwable {
        /*
            r10 = this;
            boolean r0 = r10.f8856d
            if (r0 != 0) goto L5
            return
        L5:
            java.lang.String r0 = "saveMonitoringStatusIfOn()"
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "e"
            id.b.a(r3, r0, r2)
            java.util.Map r0 = r10.d()
            int r0 = r0.size()
            r2 = 50
            java.lang.String r4 = "org.altbeacon.beacon.service.monitoring_status_state"
            android.content.Context r5 = r10.f8855c
            if (r0 <= r2) goto L2b
            java.lang.String r0 = "Too many regions being monitored.  Will not persist region state"
            java.lang.Object[] r1 = new java.lang.Object[r1]
            id.b.f(r3, r0, r1)
            r5.deleteFile(r4)
            goto L94
        L2b:
            r0 = 0
            java.io.FileOutputStream r2 = r5.openFileOutput(r4, r1)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L77
            java.io.ObjectOutputStream r4 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            java.util.Map r0 = r10.d()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            java.util.HashMap r5 = new java.util.HashMap     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            r5.<init>()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            java.util.Set r6 = r0.keySet()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            java.util.Iterator r6 = r6.iterator()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
        L46:
            boolean r7 = r6.hasNext()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            if (r7 == 0) goto L5c
            java.lang.Object r7 = r6.next()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            gd.l r7 = (gd.l) r7     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            java.lang.Object r8 = r0.get(r7)     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            kd.h r8 = (kd.h) r8     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            r5.put(r7, r8)     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            goto L46
        L5c:
            r4.writeObject(r5)     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L95
            if (r2 == 0) goto L64
            r2.close()     // Catch: java.io.IOException -> L64
        L64:
            r4.close()     // Catch: java.io.IOException -> L94
            goto L94
        L68:
            r0 = move-exception
            goto L7b
        L6a:
            r1 = move-exception
            r4 = r0
            goto L75
        L6d:
            r4 = move-exception
            r9 = r4
            r4 = r0
            r0 = r9
            goto L7b
        L72:
            r1 = move-exception
            r2 = r0
            r4 = r2
        L75:
            r0 = r1
            goto L96
        L77:
            r2 = move-exception
            r4 = r0
            r0 = r2
            r2 = r4
        L7b:
            java.lang.String r5 = "Error while saving monitored region states to file "
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L95
            r6[r1] = r0     // Catch: java.lang.Throwable -> L95
            id.b.c(r3, r5, r6)     // Catch: java.lang.Throwable -> L95
            java.io.PrintStream r1 = java.lang.System.err     // Catch: java.lang.Throwable -> L95
            r0.printStackTrace(r1)     // Catch: java.lang.Throwable -> L95
            if (r2 == 0) goto L91
            r2.close()     // Catch: java.io.IOException -> L90
            goto L91
        L90:
        L91:
            if (r4 == 0) goto L94
            goto L64
        L94:
            return
        L95:
            r0 = move-exception
        L96:
            if (r2 == 0) goto L9d
            r2.close()     // Catch: java.io.IOException -> L9c
            goto L9d
        L9c:
        L9d:
            if (r4 == 0) goto La2
            r4.close()     // Catch: java.io.IOException -> La2
        La2:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kd.e.i():void");
    }

    public final synchronized h j(gd.l lVar) {
        return d().get(lVar);
    }

    public final synchronized void k() {
        this.f8855c.deleteFile("org.altbeacon.beacon.service.monitoring_status_state");
        this.f8856d = false;
    }

    public final synchronized void l(gd.c cVar) {
        boolean z10;
        Iterator it = h(cVar).iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            gd.l lVar = (gd.l) it.next();
            h hVar = d().get(lVar);
            if (hVar != null) {
                hVar.f8867b = SystemClock.elapsedRealtime();
                if (hVar.f8866a) {
                    z10 = false;
                } else {
                    hVar.f8866a = true;
                    z10 = true;
                }
                if (z10) {
                    if (hVar.f8869d) {
                        a aVar = hVar.f8868c;
                        Context context = this.f8855c;
                        boolean z12 = hVar.f8866a;
                        Bundle bundle = new Bundle();
                        bundle.putSerializable("region", lVar);
                        bundle.putBoolean("inside", z12);
                        aVar.getClass();
                        a.a(context, "monitoringData", bundle);
                    } else {
                        id.b.a("e", "Not sending region update for region not active since last launch.", new Object[0]);
                    }
                    z11 = true;
                }
            }
        }
        if (z11) {
            i();
        } else {
            this.f8855c.getFileStreamPath("org.altbeacon.beacon.service.monitoring_status_state").setLastModified(System.currentTimeMillis());
        }
    }
}
