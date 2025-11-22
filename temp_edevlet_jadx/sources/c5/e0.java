package c5;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.lifecycle.MutableLiveData;
import com.google.android.gms.internal.measurement.q9;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import u7.c;

/* loaded from: classes.dex */
public final /* synthetic */ class e0 implements p2, l7.j, r2.e, c6.h, t1.c {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ e0 f1487a = new e0();

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f1488b = {"android.permission.CAMERA"};

    /* renamed from: c, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f1489c = new kotlinx.coroutines.internal.u("CLOSED");

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f1490d = {"android.permission.CAMERA"};

    /* renamed from: e, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f1491e = new kotlinx.coroutines.internal.u("COMPLETING_ALREADY");
    public static final kotlinx.coroutines.internal.u f = new kotlinx.coroutines.internal.u("COMPLETING_WAITING_CHILDREN");

    /* renamed from: g, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f1492g = new kotlinx.coroutines.internal.u("COMPLETING_RETRY");

    /* renamed from: h, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f1493h = new kotlinx.coroutines.internal.u("TOO_LATE_TO_CANCEL");

    /* renamed from: j, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f1494j = new kotlinx.coroutines.internal.u("SEALED");

    /* renamed from: k, reason: collision with root package name */
    public static final nc.m0 f1495k = new nc.m0(false);

    /* renamed from: l, reason: collision with root package name */
    public static final nc.m0 f1496l = new nc.m0(true);

    /* renamed from: m, reason: collision with root package name */
    public static final e0 f1497m = new e0();

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ e0 f1498n = new e0();

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ e0 f1499p = new e0();

    /* renamed from: q, reason: collision with root package name */
    public static t1.c f1500q;

    public static void e(Context context, Intent intent) {
        kd.d dVar;
        s4.y1 y1Var = null;
        y1Var = null;
        if (intent == null || intent.getExtras() == null) {
            dVar = null;
        } else {
            if (intent.getExtras().getBundle("monitoringData") != null) {
                Bundle bundle = intent.getExtras().getBundle("monitoringData");
                bundle.setClassLoader(gd.l.class.getClassLoader());
                dVar = new kd.d(Boolean.valueOf(bundle.getBoolean("inside")).booleanValue(), bundle.get("region") != null ? (gd.l) bundle.getSerializable("region") : null);
            } else {
                dVar = null;
            }
            if (intent.getExtras().getBundle("rangingData") != null) {
                Bundle bundle2 = intent.getExtras().getBundle("rangingData");
                bundle2.setClassLoader(gd.l.class.getClassLoader());
                y1Var = new s4.y1(bundle2.get("beacons") != null ? (Collection) bundle2.getSerializable("beacons") : null, bundle2.get("region") != null ? (gd.l) bundle2.getSerializable("region") : null);
            }
        }
        if (y1Var != null) {
            id.b.a("e0", "got ranging data", new Object[0]);
            if (((Collection) y1Var.f15242a) == null) {
                id.b.f("e0", "Ranging data has a null beacons collection", new Object[0]);
            }
            Set setUnmodifiableSet = Collections.unmodifiableSet(gd.e.g(context).f6643d);
            Collection collection = (Collection) y1Var.f15242a;
            if (setUnmodifiableSet != null) {
                Iterator it = setUnmodifiableSet.iterator();
                while (it.hasNext()) {
                    ((gd.k) it.next()).e(collection);
                }
            } else {
                id.b.a("e0", "but ranging notifier is null, so we're dropping it.", new Object[0]);
            }
            gd.e.g(context);
            if (gd.e.g(context).f6659u.get((gd.l) y1Var.f15243b) != null) {
                gd.e eVarG = gd.e.g(context);
                gd.l lVar = (gd.l) y1Var.f15243b;
                HashMap<gd.l, gd.m> map = eVarG.f6659u;
                gd.m mVar = map.get(lVar);
                if (mVar == null) {
                    mVar = new gd.m();
                    map.put(lVar, mVar);
                }
                ((MutableLiveData) mVar.f6698b.getValue()).postValue((Collection) y1Var.f15242a);
            }
        }
        if (dVar != null) {
            id.b.a("e0", "got monitoring data", new Object[0]);
            Set<gd.j> setUnmodifiableSet2 = Collections.unmodifiableSet(gd.e.g(context).f6644e);
            boolean z10 = dVar.f8850a;
            Integer numValueOf = Integer.valueOf(z10 ? 1 : 0);
            gd.l lVar2 = dVar.f8851b;
            if (setUnmodifiableSet2 != null) {
                for (gd.j jVar : setUnmodifiableSet2) {
                    id.b.a("e0", "Calling monitoring notifier: %s", jVar);
                    numValueOf.intValue();
                    jVar.f();
                    kd.e eVarC = kd.e.c(context);
                    kd.h hVarA = eVarC.d().get(lVar2);
                    if (hVarA == null) {
                        hVarA = eVarC.a(lVar2, new kd.a());
                    }
                    if (numValueOf.intValue() == 0) {
                        hVarA.f8866a = false;
                        hVarA.f8867b = 0L;
                    }
                    if (numValueOf.intValue() == 1) {
                        hVarA.getClass();
                        hVarA.f8867b = SystemClock.elapsedRealtime();
                        if (!hVarA.f8866a) {
                            hVarA.f8866a = true;
                        }
                    }
                    if (z10) {
                        jVar.l();
                    } else {
                        jVar.g();
                    }
                }
            }
            if (gd.e.g(context).f6659u.get(lVar2) != null) {
                HashMap<gd.l, gd.m> map2 = gd.e.g(context).f6659u;
                gd.m mVar2 = map2.get(lVar2);
                if (mVar2 == null) {
                    mVar2 = new gd.m();
                    map2.put(lVar2, mVar2);
                }
                ((MutableLiveData) mVar2.f6697a.getValue()).postValue(numValueOf);
            }
        }
    }

    public static final Object f(Object obj) {
        nc.v0 v0Var;
        nc.w0 w0Var = obj instanceof nc.w0 ? (nc.w0) obj : null;
        return (w0Var == null || (v0Var = w0Var.f10848a) == null) ? obj : v0Var;
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Integer.valueOf((int) q9.f3696b.a().i());
    }

    @Override // r2.e
    public Object apply(Object obj) {
        return (byte[]) obj;
    }

    public void d(u6.a aVar) {
        aVar.a(r4.r4.class, r4.z1.f14286a);
        aVar.a(r4.b6.class, r4.j3.f14163a);
        aVar.a(r4.s4.class, r4.a2.f14069a);
        aVar.a(r4.v4.class, r4.c2.f14105a);
        aVar.a(r4.t4.class, r4.b2.f14087a);
        aVar.a(r4.u4.class, r4.d2.f14109a);
        aVar.a(r4.a4.class, r4.l1.f14198a);
        aVar.a(r4.z3.class, r4.k1.f14184a);
        aVar.a(r4.i4.class, r4.t1.f14249a);
        aVar.a(r4.y5.class, r4.h3.f14152a);
        aVar.a(r4.y3.class, r4.j1.f14161a);
        aVar.a(r4.x3.class, r4.i1.f14157a);
        aVar.a(r4.b5.class, r4.j2.f14162a);
        aVar.a(r4.e6.class, r4.q1.f14232a);
        aVar.a(r4.g4.class, r4.r1.f14238a);
        aVar.a(r4.e4.class, r4.p1.f14226a);
        aVar.a(r4.c5.class, r4.k2.f14185a);
        aVar.a(r4.v5.class, r4.e3.f14116a);
        aVar.a(r4.w5.class, r4.f3.f14120a);
        aVar.a(r4.z4.class, r4.h2.f14151a);
        aVar.a(r4.d6.class, r4.v0.f14262a);
        aVar.a(r4.a5.class, r4.i2.f14158a);
        aVar.a(r4.d5.class, r4.l2.f14199a);
        aVar.a(r4.g5.class, r4.o2.f14223a);
        aVar.a(r4.f5.class, r4.n2.f14219a);
        aVar.a(r4.e5.class, r4.m2.f14208a);
        aVar.a(r4.l5.class, r4.t2.f14250a);
        aVar.a(r4.m5.class, r4.u2.f14260a);
        aVar.a(r4.o5.class, r4.w2.f14270a);
        aVar.a(r4.n5.class, r4.v2.f14264a);
        aVar.a(r4.y4.class, r4.g2.f14132a);
        aVar.a(r4.p5.class, r4.x2.f14276a);
        aVar.a(r4.q5.class, r4.y2.f14280a);
        aVar.a(r4.r5.class, r4.a3.f14070a);
        aVar.a(r4.s5.class, r4.b3.f14088a);
        aVar.a(r4.u5.class, r4.c3.f14106a);
        aVar.a(r4.t5.class, r4.d3.f14110a);
        aVar.a(r4.k5.class, r4.p2.f14227a);
        aVar.a(r4.o4.class, r4.x1.f14275a);
        aVar.a(r4.i5.class, r4.r2.f14239a);
        aVar.a(r4.h5.class, r4.q2.f14233a);
        aVar.a(r4.j5.class, r4.s2.f14246a);
        aVar.a(r4.x5.class, r4.g3.f14133a);
        aVar.a(r4.c6.class, r4.k3.f14186a);
        aVar.a(r4.p3.class, r4.a1.f14068a);
        aVar.a(r4.n3.class, r4.y0.f14278a);
        aVar.a(r4.m3.class, r4.x0.f14274a);
        aVar.a(r4.o3.class, r4.z0.f14285a);
        aVar.a(r4.r3.class, r4.c1.f14104a);
        aVar.a(r4.q3.class, r4.b1.f14086a);
        aVar.a(r4.s3.class, r4.d1.f14108a);
        aVar.a(r4.t3.class, r4.e1.f14114a);
        aVar.a(r4.u3.class, r4.f1.f14118a);
        aVar.a(r4.v3.class, r4.g1.f14131a);
        aVar.a(r4.w3.class, r4.h1.f14150a);
        aVar.a(r4.w.class, r4.s0.f14244a);
        aVar.a(r4.y.class, r4.u0.f14252a);
        aVar.a(r4.x.class, r4.t0.f14248a);
        aVar.a(r4.m4.class, r4.v1.f14263a);
        aVar.a(r4.b4.class, r4.m1.f14207a);
        aVar.a(r4.f.class, r4.a0.f14067a);
        aVar.a(r4.e.class, r4.b0.f14085a);
        aVar.a(r4.c4.class, r4.n1.f14218a);
        aVar.a(r4.h.class, r4.c0.f14103a);
        aVar.a(r4.g.class, r4.d0.f14107a);
        aVar.a(r4.l.class, r4.g0.f14130a);
        aVar.a(r4.k.class, r4.h0.f14149a);
        aVar.a(r4.j.class, r4.e0.f14113a);
        aVar.a(r4.i.class, r4.f0.f14117a);
        aVar.a(r4.n.class, r4.i0.f14156a);
        aVar.a(r4.m.class, r4.j0.f14160a);
        aVar.a(r4.p.class, r4.k0.f14183a);
        aVar.a(r4.o.class, r4.l0.f14197a);
        aVar.a(r4.v.class, r4.q0.f14231a);
        aVar.a(r4.u.class, r4.r0.f14237a);
        aVar.a(r4.r.class, r4.m0.f14206a);
        aVar.a(r4.q.class, r4.n0.f14217a);
        aVar.a(r4.t.class, r4.o0.f14221a);
        aVar.a(r4.s.class, r4.p0.f14225a);
        aVar.a(r4.z5.class, r4.i3.f14159a);
        aVar.a(r4.l4.class, r4.u1.f14253a);
        aVar.a(r4.p4.class, r4.y1.f14279a);
        aVar.a(r4.l3.class, r4.w0.f14268a);
        aVar.a(r4.h4.class, r4.s1.f14245a);
        aVar.a(r4.n4.class, r4.w1.f14269a);
        aVar.a(r4.d4.class, r4.o1.f14222a);
        aVar.a(r4.x4.class, r4.f2.f14119a);
        aVar.a(r4.w4.class, r4.e2.f14115a);
        aVar.a(r4.d.class, r4.z.f14284a);
    }

    @Override // l7.j
    public Object h() {
        return new LinkedHashSet();
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return new c.a(yVar.c(t7.a.class));
    }
}
