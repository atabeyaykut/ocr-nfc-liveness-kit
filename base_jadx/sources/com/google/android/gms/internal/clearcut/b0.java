package com.google.android.gms.internal.clearcut;

import android.os.Build;
import android.os.RemoteException;
import androidx.core.location.LocationRequestCompat;
import com.google.android.gms.location.LocationRequest;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import n3.a;
import o3.h;
import wa.h;

/* loaded from: classes.dex */
public final class b0 implements o3.k {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3031a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3032b;

    public /* synthetic */ b0() {
        this.f3031a = new ConcurrentHashMap(16, 0.75f, 10);
        this.f3032b = new ReferenceQueue();
    }

    public /* synthetic */ b0(w4.a aVar, h5.q qVar) {
        this.f3031a = aVar;
        this.f3032b = qVar;
    }

    public /* synthetic */ b0(ya.f fVar) {
        h.a aVar = wa.h.f18846a;
        this.f3031a = fVar;
        this.f3032b = aVar;
    }

    public /* synthetic */ b0(byte[] bArr) {
        this.f3032b = bArr;
        ArrayList arrayList = new ArrayList();
        a(arrayList, 0, bArr.length < 31 ? bArr.length : 31);
        if (bArr.length > 31) {
            a(arrayList, 31, bArr.length);
        }
        this.f3031a = arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.ArrayList r8, int r9, int r10) {
        /*
            r7 = this;
        L0:
            java.lang.Object r0 = r7.f3032b
            byte[] r0 = (byte[]) r0
            int r1 = r0.length
            int r1 = r1 - r9
            r2 = 2
            if (r1 < r2) goto L2e
            r1 = r0[r9]
            if (r1 <= 0) goto L2e
            int r2 = r9 + 1
            r2 = r0[r2]
            int r3 = r9 + 2
            int r4 = r0.length
            if (r3 >= r4) goto L2e
            nd.d r4 = new nd.d
            r4.<init>()
            int r5 = r9 + r1
            r4.f10874d = r5
            int r6 = r0.length
            if (r5 < r6) goto L27
            int r0 = r0.length
            int r0 = r0 + (-1)
            r4.f10874d = r0
        L27:
            r4.f10871a = r2
            r4.f10872b = r1
            r4.f10873c = r3
            goto L2f
        L2e:
            r4 = 0
        L2f:
            if (r4 == 0) goto L39
            int r0 = r4.f10872b
            int r9 = r9 + r0
            int r9 = r9 + 1
            r8.add(r4)
        L39:
            if (r4 == 0) goto L3d
            if (r9 < r10) goto L0
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b0.a(java.util.ArrayList, int, int):void");
    }

    public final ma.e b(cb.g gVar) {
        lb.c cVarD = gVar.d();
        if (cVarD != null) {
            gVar.G();
        }
        sa.r rVarQ = gVar.q();
        if (rVarQ != null) {
            ma.e eVarB = b(rVarQ);
            vb.i iVarX0 = eVarB != null ? eVarB.x0() : null;
            ma.g gVarE = iVarX0 != null ? iVarX0.e(gVar.getName(), ua.c.FROM_JAVA_LOADER) : null;
            if (gVarE instanceof ma.e) {
                return (ma.e) gVarE;
            }
            return null;
        }
        if (cVarD == null) {
            return null;
        }
        ya.f fVar = (ya.f) this.f3031a;
        lb.c cVarE = cVarD.e();
        kotlin.jvm.internal.h.e(cVarE, "fqName.parent()");
        za.m mVar = (za.m) m9.t.c1(fVar.a(cVarE));
        if (mVar == null) {
            return null;
        }
        za.n nVar = mVar.f19954k.f19893d;
        nVar.getClass();
        return nVar.v(gVar.getName(), gVar);
    }

    @Override // o3.k
    public final void e(a.e eVar, Object obj) throws RemoteException {
        w4.a aVar = (w4.a) this.f3031a;
        h5.q qVar = (h5.q) this.f3032b;
        m4.q qVar2 = (m4.q) eVar;
        h5.l lVar = (h5.l) obj;
        n3.a aVar2 = m4.d.f9993k;
        qVar2.getClass();
        if (qVar2.F(w4.h.f18699a)) {
            r3.l lVarX = ((m4.m0) qVar2.w()).X(aVar, new m4.i(lVar));
            if (qVar != null) {
                ((h5.z) qVar.f6852a).d(h5.m.f6842a, new j0.e((h5.h) new com.airbnb.epoxy.a(3, lVarX)));
                return;
            }
            return;
        }
        o3.h hVar = new o3.h(new m4.f(qVar2, lVar));
        h.a aVar3 = hVar.f11141c;
        aVar3.getClass();
        m4.g gVar = new m4.g(hVar, lVar);
        h5.l lVar2 = new h5.l();
        LocationRequest.a aVar4 = new LocationRequest.a(aVar.f18683c);
        aVar4.f4151c = 0L;
        long j10 = aVar.f18684d;
        r3.r.b(j10 > 0, "durationMillis must be greater than 0");
        aVar4.f4153e = j10;
        aVar4.b(aVar.f18682b);
        long j11 = aVar.f18681a;
        r3.r.b(j11 == -1 || j11 >= 0, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE");
        aVar4.f4156i = j11;
        aVar4.f4160m = aVar.f18685e;
        aVar4.c(aVar.f);
        aVar4.f4155h = true;
        String str = aVar.f18686g;
        int r11 = Build.VERSION.SDK_INT;
        if (r11 < 30) {
            aVar4.f4159l = str;
        }
        aVar4.f4161n = aVar.f18687h;
        LocationRequest locationRequestA = aVar4.a();
        h.a aVar5 = hVar.f11141c;
        aVar5.getClass();
        boolean zF = qVar2.F(w4.h.f18701c);
        synchronized (qVar2.C) {
            try {
                m4.o oVar = (m4.o) qVar2.C.get(aVar5);
                if (oVar != null && !zF) {
                    oVar.f10010b.getClass();
                    throw new IllegalStateException();
                }
                m4.o oVar2 = new m4.o(gVar);
                qVar2.C.put(aVar5, oVar2);
                String str2 = aVar5.f11143b + "@" + System.identityHashCode(aVar5.f11142a);
                if (zF) {
                    m4.m0 m0Var = (m4.m0) qVar2.w();
                    if (oVar == null) {
                        oVar = null;
                    }
                    m0Var.R(new m4.r(2, oVar, oVar2, null, null, str2), locationRequestA, new m4.h(null, lVar2));
                } else {
                    m4.m0 m0Var2 = (m4.m0) qVar2.w();
                    LocationRequest.a aVar6 = new LocationRequest.a(locationRequestA);
                    if (r11 < 30) {
                        aVar6.f4159l = null;
                    }
                    m0Var2.E(new m4.v(1, new m4.t(aVar6.a(), null, false, false, null, false, false, null, LocationRequestCompat.PASSIVE_INTERVAL), null, oVar2, null, new m4.k(lVar2, oVar2), str2));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        lVar2.f6841a.b(new j0.e(lVar));
        if (qVar != null) {
            ((h5.z) qVar.f6852a).d(h5.m.f6842a, new j0.e((h5.h) new qd.f(qVar2, aVar3)));
        }
    }
}
