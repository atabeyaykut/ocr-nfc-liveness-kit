package o3;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArraySet;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes.dex */
public final class d implements Handler.Callback {

    /* renamed from: p, reason: collision with root package name */
    @NonNull
    public static final Status f11097p = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: q, reason: collision with root package name */
    public static final Status f11098q = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: r, reason: collision with root package name */
    public static final Object f11099r = new Object();

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public static d f11100s;

    /* renamed from: a, reason: collision with root package name */
    public long f11101a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11102b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public r3.v f11103c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public t3.c f11104d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f11105e;
    public final m3.e f;

    /* renamed from: g, reason: collision with root package name */
    public final r3.g0 f11106g;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicInteger f11107h;

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f11108i;

    /* renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f11109j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public r f11110k;

    /* renamed from: l, reason: collision with root package name */
    public final ArraySet f11111l;

    /* renamed from: m, reason: collision with root package name */
    public final ArraySet f11112m;

    /* renamed from: n, reason: collision with root package name */
    @NotOnlyInitialized
    public final h4.i f11113n;

    /* renamed from: o, reason: collision with root package name */
    public volatile boolean f11114o;

    public d(Context context, Looper looper) {
        m3.e eVar = m3.e.f9944d;
        this.f11101a = WorkRequest.MIN_BACKOFF_MILLIS;
        this.f11102b = false;
        this.f11107h = new AtomicInteger(1);
        this.f11108i = new AtomicInteger(0);
        this.f11109j = new ConcurrentHashMap(5, 0.75f, 1);
        this.f11110k = null;
        this.f11111l = new ArraySet();
        this.f11112m = new ArraySet();
        this.f11114o = true;
        this.f11105e = context;
        h4.i iVar = new h4.i(looper, this);
        this.f11113n = iVar;
        this.f = eVar;
        this.f11106g = new r3.g0();
        PackageManager packageManager = context.getPackageManager();
        if (w3.b.f18674d == null) {
            w3.b.f18674d = Boolean.valueOf(w3.d.a() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (w3.b.f18674d.booleanValue()) {
            this.f11114o = false;
        }
        iVar.sendMessage(iVar.obtainMessage(6));
    }

    public static Status c(a aVar, m3.b bVar) {
        return new Status(1, 17, androidx.camera.camera2.internal.c.g("API: ", aVar.f11068b.f10543b, " is not available on this device. Connection failed with: ", String.valueOf(bVar)), bVar.f9927c, bVar);
    }

    @NonNull
    public static d e(@NonNull Context context) {
        d dVar;
        synchronized (f11099r) {
            if (f11100s == null) {
                Looper looper = r3.i.b().getLooper();
                Context applicationContext = context.getApplicationContext();
                Object obj = m3.e.f9943c;
                f11100s = new d(applicationContext, looper);
            }
            dVar = f11100s;
        }
        return dVar;
    }

    @WorkerThread
    public final boolean a() {
        if (this.f11102b) {
            return false;
        }
        r3.t tVar = r3.s.a().f14040a;
        if (tVar != null && !tVar.f14042b) {
            return false;
        }
        int r02 = this.f11106g.f13982a.get(203400000, -1);
        return r02 == -1 || r02 == 0;
    }

    public final boolean b(m3.b bVar, int r10) {
        PendingIntent activity;
        m3.e eVar = this.f;
        eVar.getClass();
        Context context = this.f11105e;
        if (y3.a.a(context)) {
            return false;
        }
        int r22 = bVar.f9926b;
        if ((r22 == 0 || bVar.f9927c == null) ? false : true) {
            activity = bVar.f9927c;
        } else {
            activity = null;
            Intent intentB = eVar.b(context, r22, null);
            if (intentB != null) {
                activity = PendingIntent.getActivity(context, 0, intentB, j4.d.f8000a | 134217728);
            }
        }
        if (activity == null) {
            return false;
        }
        int r52 = GoogleApiActivity.f2970b;
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", activity);
        intent.putExtra("failing_client_id", r10);
        intent.putExtra("notify_manager", true);
        eVar.g(context, r22, PendingIntent.getActivity(context, 0, intent, h4.h.f6838a | 134217728));
        return true;
    }

    @WorkerThread
    public final a0 d(n3.c cVar) {
        a aVar = cVar.f10550e;
        ConcurrentHashMap concurrentHashMap = this.f11109j;
        a0 a0Var = (a0) concurrentHashMap.get(aVar);
        if (a0Var == null) {
            a0Var = new a0(this, cVar);
            concurrentHashMap.put(aVar, a0Var);
        }
        if (a0Var.f11072b.o()) {
            this.f11112m.add(aVar);
        }
        a0Var.k();
        return a0Var;
    }

    public final void f(@NonNull m3.b bVar, int r52) {
        if (b(bVar, r52)) {
            return;
        }
        h4.i iVar = this.f11113n;
        iVar.sendMessage(iVar.obtainMessage(5, r52, 0, bVar));
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public final boolean handleMessage(@NonNull Message message) {
        m3.d[] dVarArrG;
        boolean z10;
        int r02 = message.what;
        h4.i iVar = this.f11113n;
        ConcurrentHashMap concurrentHashMap = this.f11109j;
        Context context = this.f11105e;
        long j10 = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
        a0 a0Var = null;
        switch (r02) {
            case 1:
                if (true == ((Boolean) message.obj).booleanValue()) {
                    j10 = WorkRequest.MIN_BACKOFF_MILLIS;
                }
                this.f11101a = j10;
                iVar.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    iVar.sendMessageDelayed(iVar.obtainMessage(12, (a) it.next()), this.f11101a);
                }
                return true;
            case 2:
                ((x0) message.obj).getClass();
                throw null;
            case 3:
                for (a0 a0Var2 : concurrentHashMap.values()) {
                    r3.r.d(a0Var2.f11082m.f11113n);
                    a0Var2.f11080k = null;
                    a0Var2.k();
                }
                return true;
            case 4:
            case 8:
            case 13:
                l0 l0Var = (l0) message.obj;
                a0 a0VarD = (a0) concurrentHashMap.get(l0Var.f11161c.f10550e);
                if (a0VarD == null) {
                    a0VarD = d(l0Var.f11161c);
                }
                boolean zO = a0VarD.f11072b.o();
                w0 w0Var = l0Var.f11159a;
                if (!zO || this.f11108i.get() == l0Var.f11160b) {
                    a0VarD.l(w0Var);
                } else {
                    w0Var.a(f11097p);
                    a0VarD.n();
                }
                return true;
            case 5:
                int r03 = message.arg1;
                m3.b bVar = (m3.b) message.obj;
                Iterator it2 = concurrentHashMap.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        a0 a0Var3 = (a0) it2.next();
                        if (a0Var3.f11076g == r03) {
                            a0Var = a0Var3;
                        }
                    }
                }
                if (a0Var == null) {
                    Log.wtf("GoogleApiManager", androidx.appcompat.widget.v.e("Could not find API instance ", r03, " while trying to fail enqueued calls.").toString(), new Exception());
                } else if (bVar.f9926b == 13) {
                    this.f.getClass();
                    AtomicBoolean atomicBoolean = m3.j.f9954a;
                    StringBuilder sbL = android.support.v4.media.a.l("Error resolution was canceled by the user, original error message: ", m3.b.E(bVar.f9926b), ": ");
                    sbL.append(bVar.f9928d);
                    a0Var.b(new Status(17, sbL.toString()));
                } else {
                    a0Var.b(c(a0Var.f11073c, bVar));
                }
                return true;
            case 6:
                if (context.getApplicationContext() instanceof Application) {
                    b.b((Application) context.getApplicationContext());
                    b bVar2 = b.f11087e;
                    bVar2.a(new v(this));
                    AtomicBoolean atomicBoolean2 = bVar2.f11089b;
                    boolean z11 = atomicBoolean2.get();
                    AtomicBoolean atomicBoolean3 = bVar2.f11088a;
                    if (!z11) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!atomicBoolean2.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            atomicBoolean3.set(true);
                        }
                    }
                    if (!atomicBoolean3.get()) {
                        this.f11101a = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
                    }
                }
                return true;
            case 7:
                d((n3.c) message.obj);
                return true;
            case 9:
                if (concurrentHashMap.containsKey(message.obj)) {
                    a0 a0Var4 = (a0) concurrentHashMap.get(message.obj);
                    r3.r.d(a0Var4.f11082m.f11113n);
                    if (a0Var4.f11078i) {
                        a0Var4.k();
                    }
                }
                return true;
            case 10:
                ArraySet arraySet = this.f11112m;
                Iterator<E> it3 = arraySet.iterator();
                while (it3.hasNext()) {
                    a0 a0Var5 = (a0) concurrentHashMap.remove((a) it3.next());
                    if (a0Var5 != null) {
                        a0Var5.n();
                    }
                }
                arraySet.clear();
                return true;
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    a0 a0Var6 = (a0) concurrentHashMap.get(message.obj);
                    d dVar = a0Var6.f11082m;
                    r3.r.d(dVar.f11113n);
                    boolean z12 = a0Var6.f11078i;
                    if (z12) {
                        if (z12) {
                            d dVar2 = a0Var6.f11082m;
                            h4.i iVar2 = dVar2.f11113n;
                            a aVar = a0Var6.f11073c;
                            iVar2.removeMessages(11, aVar);
                            dVar2.f11113n.removeMessages(9, aVar);
                            a0Var6.f11078i = false;
                        }
                        a0Var6.b(dVar.f.c(m3.f.f9945a, dVar.f11105e) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
                        a0Var6.f11072b.d("Timing out connection while resuming.");
                    }
                }
                return true;
            case 12:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((a0) concurrentHashMap.get(message.obj)).j(true);
                }
                return true;
            case 14:
                ((s) message.obj).getClass();
                if (!concurrentHashMap.containsKey(null)) {
                    throw null;
                }
                ((a0) concurrentHashMap.get(null)).j(false);
                throw null;
            case 15:
                b0 b0Var = (b0) message.obj;
                if (concurrentHashMap.containsKey(b0Var.f11092a)) {
                    a0 a0Var7 = (a0) concurrentHashMap.get(b0Var.f11092a);
                    if (a0Var7.f11079j.contains(b0Var) && !a0Var7.f11078i) {
                        if (a0Var7.f11072b.isConnected()) {
                            a0Var7.d();
                        } else {
                            a0Var7.k();
                        }
                    }
                }
                return true;
            case 16:
                b0 b0Var2 = (b0) message.obj;
                if (concurrentHashMap.containsKey(b0Var2.f11092a)) {
                    a0 a0Var8 = (a0) concurrentHashMap.get(b0Var2.f11092a);
                    if (a0Var8.f11079j.remove(b0Var2)) {
                        d dVar3 = a0Var8.f11082m;
                        dVar3.f11113n.removeMessages(15, b0Var2);
                        dVar3.f11113n.removeMessages(16, b0Var2);
                        LinkedList linkedList = a0Var8.f11071a;
                        ArrayList arrayList = new ArrayList(linkedList.size());
                        Iterator it4 = linkedList.iterator();
                        while (true) {
                            boolean zHasNext = it4.hasNext();
                            m3.d dVar4 = b0Var2.f11093b;
                            if (zHasNext) {
                                w0 w0Var2 = (w0) it4.next();
                                if ((w0Var2 instanceof g0) && (dVarArrG = ((g0) w0Var2).g(a0Var8)) != null) {
                                    int length = dVarArrG.length;
                                    int r82 = 0;
                                    while (true) {
                                        if (r82 < length) {
                                            if (r3.p.a(dVarArrG[r82], dVar4)) {
                                                z10 = r82 >= 0;
                                            } else {
                                                r82++;
                                            }
                                        }
                                    }
                                    if (z10) {
                                        arrayList.add(w0Var2);
                                    }
                                }
                            } else {
                                int size = arrayList.size();
                                for (int r92 = 0; r92 < size; r92++) {
                                    w0 w0Var3 = (w0) arrayList.get(r92);
                                    linkedList.remove(w0Var3);
                                    w0Var3.b(new n3.j(dVar4));
                                }
                            }
                        }
                    }
                }
                return true;
            case 17:
                r3.v vVar = this.f11103c;
                if (vVar != null) {
                    if (vVar.f14051a > 0 || a()) {
                        if (this.f11104d == null) {
                            this.f11104d = new t3.c(context, r3.w.f14054b);
                        }
                        this.f11104d.d(vVar);
                    }
                    this.f11103c = null;
                }
                return true;
            case 18:
                j0 j0Var = (j0) message.obj;
                long j11 = j0Var.f11154c;
                r3.o oVar = j0Var.f11152a;
                int r22 = j0Var.f11153b;
                if (j11 == 0) {
                    r3.v vVar2 = new r3.v(r22, Arrays.asList(oVar));
                    if (this.f11104d == null) {
                        this.f11104d = new t3.c(context, r3.w.f14054b);
                    }
                    this.f11104d.d(vVar2);
                } else {
                    r3.v vVar3 = this.f11103c;
                    if (vVar3 != null) {
                        List list = vVar3.f14052b;
                        if (vVar3.f14051a != r22 || (list != null && list.size() >= j0Var.f11155d)) {
                            iVar.removeMessages(17);
                            r3.v vVar4 = this.f11103c;
                            if (vVar4 != null) {
                                if (vVar4.f14051a > 0 || a()) {
                                    if (this.f11104d == null) {
                                        this.f11104d = new t3.c(context, r3.w.f14054b);
                                    }
                                    this.f11104d.d(vVar4);
                                }
                                this.f11103c = null;
                            }
                        } else {
                            r3.v vVar5 = this.f11103c;
                            if (vVar5.f14052b == null) {
                                vVar5.f14052b = new ArrayList();
                            }
                            vVar5.f14052b.add(oVar);
                        }
                    }
                    if (this.f11103c == null) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(oVar);
                        this.f11103c = new r3.v(r22, arrayList2);
                        iVar.sendMessageDelayed(iVar.obtainMessage(17), j0Var.f11154c);
                    }
                }
                return true;
            case 19:
                this.f11102b = false;
                return true;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + r02);
                return false;
        }
    }
}
