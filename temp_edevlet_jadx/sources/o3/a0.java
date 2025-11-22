package o3;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import n3.a;
import n3.d;
import o3.h;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import r3.e;

/* loaded from: classes.dex */
public final class a0 implements d.a, d.b {

    /* renamed from: b, reason: collision with root package name */
    @NotOnlyInitialized
    public final a.e f11072b;

    /* renamed from: c, reason: collision with root package name */
    public final a f11073c;

    /* renamed from: d, reason: collision with root package name */
    public final q f11074d;

    /* renamed from: g, reason: collision with root package name */
    public final int f11076g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final p0 f11077h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f11078i;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ d f11082m;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedList f11071a = new LinkedList();

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f11075e = new HashSet();
    public final HashMap f = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f11079j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public m3.b f11080k = null;

    /* renamed from: l, reason: collision with root package name */
    public int f11081l = 0;

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public a0(d dVar, n3.c cVar) {
        this.f11082m = dVar;
        Looper looper = dVar.f11113n.getLooper();
        e.a aVarA = cVar.a();
        r3.e eVar = new r3.e(aVarA.f13951a, aVarA.f13952b, aVarA.f13953c, aVarA.f13954d);
        a.AbstractC0196a abstractC0196a = cVar.f10548c.f10542a;
        r3.r.i(abstractC0196a);
        a.e eVarA = abstractC0196a.a(cVar.f10546a, looper, eVar, cVar.f10549d, this, this);
        String str = cVar.f10547b;
        if (str != null && (eVarA instanceof r3.c)) {
            ((r3.c) eVarA).f13935s = str;
        }
        if (str != null && (eVarA instanceof i)) {
            ((i) eVarA).getClass();
        }
        this.f11072b = eVarA;
        this.f11073c = cVar.f10550e;
        this.f11074d = new q();
        this.f11076g = cVar.f10551g;
        if (!eVarA.o()) {
            this.f11077h = null;
            return;
        }
        Context context = dVar.f11105e;
        h4.i iVar = dVar.f11113n;
        e.a aVarA2 = cVar.a();
        this.f11077h = new p0(context, iVar, new r3.e(aVarA2.f13951a, aVarA2.f13952b, aVarA2.f13953c, aVarA2.f13954d));
    }

    @WorkerThread
    public final void a(m3.b bVar) {
        HashSet hashSet = this.f11075e;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
            return;
        }
        x0 x0Var = (x0) it.next();
        if (r3.p.a(bVar, m3.b.f9924e)) {
            this.f11072b.f();
        }
        x0Var.getClass();
        throw null;
    }

    @WorkerThread
    public final void b(Status status) {
        r3.r.d(this.f11082m.f11113n);
        c(status, null, false);
    }

    @WorkerThread
    public final void c(@Nullable Status status, @Nullable RuntimeException runtimeException, boolean z10) {
        r3.r.d(this.f11082m.f11113n);
        if ((status == null) == (runtimeException == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.f11071a.iterator();
        while (it.hasNext()) {
            w0 w0Var = (w0) it.next();
            if (!z10 || w0Var.f11197a == 2) {
                if (status != null) {
                    w0Var.a(status);
                } else {
                    w0Var.b(runtimeException);
                }
                it.remove();
            }
        }
    }

    @WorkerThread
    public final void d() {
        LinkedList linkedList = this.f11071a;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int r32 = 0; r32 < size; r32++) {
            w0 w0Var = (w0) arrayList.get(r32);
            if (!this.f11072b.isConnected()) {
                return;
            }
            if (h(w0Var)) {
                linkedList.remove(w0Var);
            }
        }
    }

    @WorkerThread
    public final void e() {
        d dVar = this.f11082m;
        r3.r.d(dVar.f11113n);
        this.f11080k = null;
        a(m3.b.f9924e);
        if (this.f11078i) {
            h4.i iVar = dVar.f11113n;
            a aVar = this.f11073c;
            iVar.removeMessages(11, aVar);
            dVar.f11113n.removeMessages(9, aVar);
            this.f11078i = false;
        }
        Iterator it = this.f.values().iterator();
        if (it.hasNext()) {
            ((m0) it.next()).getClass();
            throw null;
        }
        d();
        g();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0078 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0079  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(int r8) {
        /*
            r7 = this;
            o3.d r0 = r7.f11082m
            h4.i r1 = r0.f11113n
            r3.r.d(r1)
            r1 = 0
            r7.f11080k = r1
            r2 = 1
            r7.f11078i = r2
            n3.a$e r3 = r7.f11072b
            java.lang.String r3 = r3.n()
            o3.q r4 = r7.f11074d
            r4.getClass()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "The connection to Google Play services was lost"
            r5.<init>(r6)
            if (r8 != r2) goto L24
            java.lang.String r8 = " due to service disconnection."
            goto L29
        L24:
            r6 = 3
            if (r8 != r6) goto L2c
            java.lang.String r8 = " due to dead object exception."
        L29:
            r5.append(r8)
        L2c:
            if (r3 == 0) goto L36
            java.lang.String r8 = " Last reason for disconnect: "
            r5.append(r8)
            r5.append(r3)
        L36:
            com.google.android.gms.common.api.Status r8 = new com.google.android.gms.common.api.Status
            r3 = 20
            java.lang.String r5 = r5.toString()
            r8.<init>(r3, r5)
            r4.a(r2, r8)
            h4.i r8 = r0.f11113n
            r2 = 9
            o3.a r3 = r7.f11073c
            android.os.Message r2 = android.os.Message.obtain(r8, r2, r3)
            r4 = 5000(0x1388, double:2.4703E-320)
            r8.sendMessageDelayed(r2, r4)
            h4.i r8 = r0.f11113n
            r2 = 11
            android.os.Message r2 = android.os.Message.obtain(r8, r2, r3)
            r3 = 120000(0x1d4c0, double:5.9288E-319)
            r8.sendMessageDelayed(r2, r3)
            r3.g0 r8 = r0.f11106g
            android.util.SparseIntArray r8 = r8.f13982a
            r8.clear()
            java.util.HashMap r8 = r7.f
            java.util.Collection r8 = r8.values()
            java.util.Iterator r8 = r8.iterator()
            boolean r0 = r8.hasNext()
            if (r0 != 0) goto L79
            return
        L79:
            java.lang.Object r8 = r8.next()
            o3.m0 r8 = (o3.m0) r8
            r8.getClass()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.a0.f(int):void");
    }

    public final void g() {
        d dVar = this.f11082m;
        h4.i iVar = dVar.f11113n;
        a aVar = this.f11073c;
        iVar.removeMessages(12, aVar);
        h4.i iVar2 = dVar.f11113n;
        iVar2.sendMessageDelayed(iVar2.obtainMessage(12, aVar), dVar.f11101a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final boolean h(w0 w0Var) {
        m3.d dVar;
        if (!(w0Var instanceof g0)) {
            a.e eVar = this.f11072b;
            w0Var.d(this.f11074d, eVar.o());
            try {
                w0Var.c(this);
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                eVar.d("DeadObjectException thrown while running ApiCallRunner.");
            }
            return true;
        }
        g0 g0Var = (g0) w0Var;
        m3.d[] dVarArrG = g0Var.g(this);
        if (dVarArrG == null || dVarArrG.length == 0) {
            dVar = null;
        } else {
            m3.d[] dVarArrM = this.f11072b.m();
            if (dVarArrM == null) {
                dVarArrM = new m3.d[0];
            }
            ArrayMap arrayMap = new ArrayMap(dVarArrM.length);
            for (m3.d dVar2 : dVarArrM) {
                arrayMap.put(dVar2.f9936a, Long.valueOf(dVar2.E()));
            }
            int length = dVarArrG.length;
            for (int r92 = 0; r92 < length; r92++) {
                dVar = dVarArrG[r92];
                Long l5 = (Long) arrayMap.get(dVar.f9936a);
                if (l5 == null || l5.longValue() < dVar.E()) {
                    break;
                }
            }
            dVar = null;
        }
        if (dVar == null) {
            a.e eVar2 = this.f11072b;
            w0Var.d(this.f11074d, eVar2.o());
            try {
                w0Var.c(this);
            } catch (DeadObjectException unused2) {
                onConnectionSuspended(1);
                eVar2.d("DeadObjectException thrown while running ApiCallRunner.");
            }
            return true;
        }
        Log.w("GoogleApiManager", this.f11072b.getClass().getName() + " could not execute call because it requires feature (" + dVar.f9936a + ", " + dVar.E() + ").");
        if (!this.f11082m.f11114o || !g0Var.f(this)) {
            g0Var.b(new n3.j(dVar));
            return true;
        }
        b0 b0Var = new b0(this.f11073c, dVar);
        int r22 = this.f11079j.indexOf(b0Var);
        if (r22 >= 0) {
            b0 b0Var2 = (b0) this.f11079j.get(r22);
            this.f11082m.f11113n.removeMessages(15, b0Var2);
            h4.i iVar = this.f11082m.f11113n;
            Message messageObtain = Message.obtain(iVar, 15, b0Var2);
            this.f11082m.getClass();
            iVar.sendMessageDelayed(messageObtain, CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        } else {
            this.f11079j.add(b0Var);
            h4.i iVar2 = this.f11082m.f11113n;
            Message messageObtain2 = Message.obtain(iVar2, 15, b0Var);
            this.f11082m.getClass();
            iVar2.sendMessageDelayed(messageObtain2, CoroutineLiveDataKt.DEFAULT_TIMEOUT);
            h4.i iVar3 = this.f11082m.f11113n;
            Message messageObtain3 = Message.obtain(iVar3, 16, b0Var);
            this.f11082m.getClass();
            iVar3.sendMessageDelayed(messageObtain3, 120000L);
            m3.b bVar = new m3.b(2, null);
            if (!i(bVar)) {
                this.f11082m.b(bVar, this.f11076g);
            }
        }
        return false;
    }

    @WorkerThread
    public final boolean i(@NonNull m3.b bVar) {
        boolean z10;
        synchronized (d.f11099r) {
            try {
                d dVar = this.f11082m;
                if (dVar.f11110k == null || !dVar.f11111l.contains(this.f11073c)) {
                    return false;
                }
                r rVar = this.f11082m.f11110k;
                int r22 = this.f11076g;
                rVar.getClass();
                y0 y0Var = new y0(bVar, r22);
                AtomicReference atomicReference = rVar.f11084c;
                while (true) {
                    if (atomicReference.compareAndSet(null, y0Var)) {
                        z10 = true;
                    } else if (atomicReference.get() != null) {
                        z10 = false;
                    } else {
                        continue;
                    }
                    if (z10) {
                        rVar.f11085d.post(new z0(rVar, y0Var));
                        break;
                    }
                    if (atomicReference.get() != null) {
                        break;
                    }
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @WorkerThread
    public final boolean j(boolean z10) {
        r3.r.d(this.f11082m.f11113n);
        a.e eVar = this.f11072b;
        if (!eVar.isConnected() || this.f.size() != 0) {
            return false;
        }
        q qVar = this.f11074d;
        if (!((qVar.f11183a.isEmpty() && qVar.f11184b.isEmpty()) ? false : true)) {
            eVar.d("Timing out service connection.");
            return true;
        }
        if (z10) {
            g();
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r4v6, types: [e5.f, n3.a$e] */
    @WorkerThread
    public final void k() {
        m3.b bVar;
        d dVar = this.f11082m;
        r3.r.d(dVar.f11113n);
        a.e eVar = this.f11072b;
        if (eVar.isConnected() || eVar.e()) {
            return;
        }
        try {
            r3.g0 g0Var = dVar.f11106g;
            Context context = dVar.f11105e;
            g0Var.getClass();
            r3.r.i(context);
            int r6 = 0;
            if (eVar.k()) {
                int r52 = eVar.l();
                SparseIntArray sparseIntArray = g0Var.f13982a;
                int r92 = sparseIntArray.get(r52, -1);
                if (r92 != -1) {
                    r6 = r92;
                } else {
                    int r93 = 0;
                    while (true) {
                        if (r93 >= sparseIntArray.size()) {
                            r6 = -1;
                            break;
                        }
                        int r10 = sparseIntArray.keyAt(r93);
                        if (r10 > r52 && sparseIntArray.get(r10) == 0) {
                            break;
                        } else {
                            r93++;
                        }
                    }
                    if (r6 == -1) {
                        r6 = g0Var.f13983b.c(r52, context);
                    }
                    sparseIntArray.put(r52, r6);
                }
            }
            if (r6 != 0) {
                m3.b bVar2 = new m3.b(r6, null);
                Log.w("GoogleApiManager", "The service for " + eVar.getClass().getName() + " is not available: " + bVar2.toString());
                m(bVar2, null);
                return;
            }
            d0 d0Var = new d0(dVar, eVar, this.f11073c);
            if (eVar.o()) {
                p0 p0Var = this.f11077h;
                r3.r.i(p0Var);
                e5.f fVar = p0Var.f;
                if (fVar != null) {
                    fVar.h();
                }
                Integer numValueOf = Integer.valueOf(System.identityHashCode(p0Var));
                r3.e eVar2 = p0Var.f11181e;
                eVar2.f13950h = numValueOf;
                e5.b bVar3 = p0Var.f11179c;
                Context context2 = p0Var.f11177a;
                Handler handler = p0Var.f11178b;
                p0Var.f = bVar3.a(context2, handler.getLooper(), eVar2, eVar2.f13949g, p0Var, p0Var);
                p0Var.f11182g = d0Var;
                Set set = p0Var.f11180d;
                if (set == null || set.isEmpty()) {
                    handler.post(new l3.l(1, p0Var));
                } else {
                    p0Var.f.a();
                }
            }
            try {
                eVar.c(d0Var);
            } catch (SecurityException e10) {
                e = e10;
                bVar = new m3.b(10);
                m(bVar, e);
            }
        } catch (IllegalStateException e11) {
            e = e11;
            bVar = new m3.b(10);
        }
    }

    @WorkerThread
    public final void l(w0 w0Var) {
        r3.r.d(this.f11082m.f11113n);
        boolean zIsConnected = this.f11072b.isConnected();
        LinkedList linkedList = this.f11071a;
        if (zIsConnected) {
            if (h(w0Var)) {
                g();
                return;
            } else {
                linkedList.add(w0Var);
                return;
            }
        }
        linkedList.add(w0Var);
        m3.b bVar = this.f11080k;
        if (bVar != null) {
            if ((bVar.f9926b == 0 || bVar.f9927c == null) ? false : true) {
                m(bVar, null);
                return;
            }
        }
        k();
    }

    @WorkerThread
    public final void m(@NonNull m3.b bVar, @Nullable RuntimeException runtimeException) {
        e5.f fVar;
        r3.r.d(this.f11082m.f11113n);
        p0 p0Var = this.f11077h;
        if (p0Var != null && (fVar = p0Var.f) != null) {
            fVar.h();
        }
        r3.r.d(this.f11082m.f11113n);
        this.f11080k = null;
        this.f11082m.f11106g.f13982a.clear();
        a(bVar);
        if ((this.f11072b instanceof t3.d) && bVar.f9926b != 24) {
            d dVar = this.f11082m;
            dVar.f11102b = true;
            h4.i iVar = dVar.f11113n;
            iVar.sendMessageDelayed(iVar.obtainMessage(19), PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
        }
        if (bVar.f9926b == 4) {
            b(d.f11098q);
            return;
        }
        if (this.f11071a.isEmpty()) {
            this.f11080k = bVar;
            return;
        }
        if (runtimeException != null) {
            r3.r.d(this.f11082m.f11113n);
            c(null, runtimeException, false);
            return;
        }
        if (!this.f11082m.f11114o) {
            b(d.c(this.f11073c, bVar));
            return;
        }
        c(d.c(this.f11073c, bVar), null, true);
        if (this.f11071a.isEmpty() || i(bVar) || this.f11082m.b(bVar, this.f11076g)) {
            return;
        }
        if (bVar.f9926b == 18) {
            this.f11078i = true;
        }
        if (!this.f11078i) {
            b(d.c(this.f11073c, bVar));
            return;
        }
        h4.i iVar2 = this.f11082m.f11113n;
        Message messageObtain = Message.obtain(iVar2, 9, this.f11073c);
        this.f11082m.getClass();
        iVar2.sendMessageDelayed(messageObtain, CoroutineLiveDataKt.DEFAULT_TIMEOUT);
    }

    @WorkerThread
    public final void n() {
        r3.r.d(this.f11082m.f11113n);
        Status status = d.f11097p;
        b(status);
        q qVar = this.f11074d;
        qVar.getClass();
        qVar.a(false, status);
        for (h.a aVar : (h.a[]) this.f.keySet().toArray(new h.a[0])) {
            l(new v0(aVar, new h5.l()));
        }
        a(new m3.b(4));
        a.e eVar = this.f11072b;
        if (eVar.isConnected()) {
            eVar.g(new z(this));
        }
    }

    @Override // o3.c
    public final void onConnected(@Nullable Bundle bundle) {
        Looper looperMyLooper = Looper.myLooper();
        d dVar = this.f11082m;
        if (looperMyLooper == dVar.f11113n.getLooper()) {
            e();
        } else {
            dVar.f11113n.post(new w(0, this));
        }
    }

    @Override // o3.j
    @WorkerThread
    public final void onConnectionFailed(@NonNull m3.b bVar) {
        m(bVar, null);
    }

    @Override // o3.c
    public final void onConnectionSuspended(int r42) {
        Looper looperMyLooper = Looper.myLooper();
        d dVar = this.f11082m;
        if (looperMyLooper == dVar.f11113n.getLooper()) {
            f(r42);
        } else {
            dVar.f11113n.post(new x(this, r42));
        }
    }
}
