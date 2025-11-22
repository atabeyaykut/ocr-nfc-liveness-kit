package r3;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class c<T extends IInterface> {

    /* renamed from: x, reason: collision with root package name */
    public static final m3.d[] f13917x = new m3.d[0];

    /* renamed from: b, reason: collision with root package name */
    public m1 f13919b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f13920c;

    /* renamed from: d, reason: collision with root package name */
    public final i f13921d;

    /* renamed from: e, reason: collision with root package name */
    public final m3.f f13922e;
    public final v0 f;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    public m f13925i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public InterfaceC0236c f13926j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public IInterface f13927k;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public y0 f13929m;

    /* renamed from: o, reason: collision with root package name */
    @Nullable
    public final a f13931o;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public final b f13932p;

    /* renamed from: q, reason: collision with root package name */
    public final int f13933q;

    /* renamed from: r, reason: collision with root package name */
    @Nullable
    public final String f13934r;

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public volatile String f13935s;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public volatile String f13918a = null;

    /* renamed from: g, reason: collision with root package name */
    public final Object f13923g = new Object();

    /* renamed from: h, reason: collision with root package name */
    public final Object f13924h = new Object();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f13928l = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public int f13930n = 1;

    /* renamed from: t, reason: collision with root package name */
    @Nullable
    public m3.b f13936t = null;

    /* renamed from: u, reason: collision with root package name */
    public boolean f13937u = false;

    /* renamed from: v, reason: collision with root package name */
    @Nullable
    public volatile b1 f13938v = null;

    @NonNull
    public final AtomicInteger w = new AtomicInteger(0);

    public interface a {
        void a();

        void onConnectionSuspended(int r12);
    }

    public interface b {
        void onConnectionFailed(@NonNull m3.b bVar);
    }

    /* renamed from: r3.c$c, reason: collision with other inner class name */
    public interface InterfaceC0236c {
        void a(@NonNull m3.b bVar);
    }

    public class d implements InterfaceC0236c {
        public d() {
        }

        @Override // r3.c.InterfaceC0236c
        public final void a(@NonNull m3.b bVar) {
            boolean z10 = bVar.f9926b == 0;
            c cVar = c.this;
            if (z10) {
                cVar.j(null, cVar.v());
                return;
            }
            b bVar2 = cVar.f13932p;
            if (bVar2 != null) {
                bVar2.onConnectionFailed(bVar);
            }
        }
    }

    public c(@NonNull Context context, @NonNull Looper looper, @NonNull j1 j1Var, @NonNull m3.f fVar, int r72, @Nullable a aVar, @Nullable b bVar, @Nullable String str) {
        if (context == null) {
            throw new NullPointerException("Context must not be null");
        }
        this.f13920c = context;
        if (looper == null) {
            throw new NullPointerException("Looper must not be null");
        }
        if (j1Var == null) {
            throw new NullPointerException("Supervisor must not be null");
        }
        this.f13921d = j1Var;
        r.j(fVar, "API availability must not be null");
        this.f13922e = fVar;
        this.f = new v0(this, looper);
        this.f13933q = r72;
        this.f13931o = aVar;
        this.f13932p = bVar;
        this.f13934r = str;
    }

    public static /* bridge */ /* synthetic */ void B(c cVar) {
        int r12;
        int r02;
        synchronized (cVar.f13923g) {
            r12 = cVar.f13930n;
        }
        if (r12 == 3) {
            cVar.f13937u = true;
            r02 = 5;
        } else {
            r02 = 4;
        }
        v0 v0Var = cVar.f;
        v0Var.sendMessage(v0Var.obtainMessage(r02, cVar.w.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean C(c cVar, int r32, int r42, IInterface iInterface) {
        synchronized (cVar.f13923g) {
            if (cVar.f13930n != r32) {
                return false;
            }
            cVar.D(iInterface, r42);
            return true;
        }
    }

    @CallSuper
    public void A() {
        System.currentTimeMillis();
    }

    public final void D(@Nullable IInterface iInterface, int r19) {
        m1 m1Var;
        r.a((r19 == 4) == (iInterface != null));
        synchronized (this.f13923g) {
            try {
                this.f13930n = r19;
                this.f13927k = iInterface;
                if (r19 == 1) {
                    y0 y0Var = this.f13929m;
                    if (y0Var != null) {
                        i iVar = this.f13921d;
                        String str = this.f13919b.f14018a;
                        r.i(str);
                        this.f13919b.getClass();
                        if (this.f13934r == null) {
                            this.f13920c.getClass();
                        }
                        iVar.c(str, "com.google.android.gms", 4225, y0Var, this.f13919b.f14019b);
                        this.f13929m = null;
                    }
                } else if (r19 == 2 || r19 == 3) {
                    y0 y0Var2 = this.f13929m;
                    if (y0Var2 != null && (m1Var = this.f13919b) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + m1Var.f14018a + " on com.google.android.gms");
                        i iVar2 = this.f13921d;
                        String str2 = this.f13919b.f14018a;
                        r.i(str2);
                        this.f13919b.getClass();
                        if (this.f13934r == null) {
                            this.f13920c.getClass();
                        }
                        iVar2.c(str2, "com.google.android.gms", 4225, y0Var2, this.f13919b.f14019b);
                        this.w.incrementAndGet();
                    }
                    y0 y0Var3 = new y0(this, this.w.get());
                    this.f13929m = y0Var3;
                    String strY = y();
                    Object obj = i.f13992a;
                    boolean z10 = z();
                    this.f13919b = new m1(strY, z10);
                    if (z10 && l() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f13919b.f14018a)));
                    }
                    i iVar3 = this.f13921d;
                    String str3 = this.f13919b.f14018a;
                    r.i(str3);
                    this.f13919b.getClass();
                    String name = this.f13934r;
                    if (name == null) {
                        name = this.f13920c.getClass().getName();
                    }
                    boolean z11 = this.f13919b.f14019b;
                    t();
                    if (!iVar3.d(new f1(str3, "com.google.android.gms", z11, 4225), y0Var3, name, null)) {
                        Log.w("GmsClient", "unable to connect to service: " + this.f13919b.f14018a + " on com.google.android.gms");
                        int r02 = this.w.get();
                        a1 a1Var = new a1(this, 16);
                        v0 v0Var = this.f;
                        v0Var.sendMessage(v0Var.obtainMessage(7, r02, -1, a1Var));
                    }
                } else if (r19 == 4) {
                    r.i(iInterface);
                    System.currentTimeMillis();
                }
            } finally {
            }
        }
    }

    public final void c(@NonNull InterfaceC0236c interfaceC0236c) {
        this.f13926j = interfaceC0236c;
        D(null, 2);
    }

    public final void d(@NonNull String str) {
        this.f13918a = str;
        h();
    }

    public final boolean e() {
        boolean z10;
        synchronized (this.f13923g) {
            int r12 = this.f13930n;
            z10 = true;
            if (r12 != 2 && r12 != 3) {
                z10 = false;
            }
        }
        return z10;
    }

    @NonNull
    public final String f() {
        if (!isConnected() || this.f13919b == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return "com.google.android.gms";
    }

    public final void g(@NonNull o3.z zVar) {
        zVar.f11203a.f11082m.f11113n.post(new o3.y(zVar));
    }

    public final void h() {
        this.w.incrementAndGet();
        synchronized (this.f13928l) {
            int size = this.f13928l.size();
            for (int r22 = 0; r22 < size; r22++) {
                ((w0) this.f13928l.get(r22)).c();
            }
            this.f13928l.clear();
        }
        synchronized (this.f13924h) {
            this.f13925i = null;
        }
        D(null, 1);
    }

    public final boolean isConnected() {
        boolean z10;
        synchronized (this.f13923g) {
            z10 = this.f13930n == 4;
        }
        return z10;
    }

    @WorkerThread
    public final void j(@Nullable k kVar, @NonNull Set<Scope> set) {
        Bundle bundleU = u();
        int r52 = this.f13933q;
        String str = this.f13935s;
        int r6 = m3.f.f9945a;
        Scope[] scopeArr = g.f13967q;
        Bundle bundle = new Bundle();
        m3.d[] dVarArr = g.f13968r;
        g gVar = new g(6, r52, r6, null, null, scopeArr, bundle, null, dVarArr, dVarArr, true, 0, false, str);
        gVar.f13972d = this.f13920c.getPackageName();
        gVar.f13974g = bundleU;
        if (set != null) {
            gVar.f = (Scope[]) set.toArray(new Scope[0]);
        }
        if (o()) {
            Account accountR = r();
            if (accountR == null) {
                accountR = new Account("<<default account>>", "com.google");
            }
            gVar.f13975h = accountR;
            if (kVar != null) {
                gVar.f13973e = kVar.asBinder();
            }
        }
        gVar.f13976j = f13917x;
        gVar.f13977k = s();
        if (this instanceof m4.q) {
            gVar.f13980n = true;
        }
        try {
            synchronized (this.f13924h) {
                m mVar = this.f13925i;
                if (mVar != null) {
                    mVar.U(new x0(this, this.w.get()), gVar);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e10) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e10);
            v0 v0Var = this.f;
            v0Var.sendMessage(v0Var.obtainMessage(6, this.w.get(), 3));
        } catch (RemoteException e11) {
            e = e11;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int r02 = this.w.get();
            z0 z0Var = new z0(this, 8, null, null);
            v0 v0Var2 = this.f;
            v0Var2.sendMessage(v0Var2.obtainMessage(1, r02, -1, z0Var));
        } catch (SecurityException e12) {
            throw e12;
        } catch (RuntimeException e13) {
            e = e13;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int r022 = this.w.get();
            z0 z0Var2 = new z0(this, 8, null, null);
            v0 v0Var22 = this.f;
            v0Var22.sendMessage(v0Var22.obtainMessage(1, r022, -1, z0Var2));
        }
    }

    public final boolean k() {
        return true;
    }

    public int l() {
        return m3.f.f9945a;
    }

    @Nullable
    public final m3.d[] m() {
        b1 b1Var = this.f13938v;
        if (b1Var == null) {
            return null;
        }
        return b1Var.f13914b;
    }

    @Nullable
    public final String n() {
        return this.f13918a;
    }

    public boolean o() {
        return false;
    }

    public final void p() {
        int r02 = this.f13922e.c(l(), this.f13920c);
        if (r02 == 0) {
            c(new d());
            return;
        }
        D(null, 1);
        this.f13926j = new d();
        int r22 = this.w.get();
        v0 v0Var = this.f;
        v0Var.sendMessage(v0Var.obtainMessage(3, r22, r02, null));
    }

    @Nullable
    public abstract T q(@NonNull IBinder iBinder);

    @Nullable
    public Account r() {
        return null;
    }

    @NonNull
    public m3.d[] s() {
        return f13917x;
    }

    @Nullable
    public void t() {
    }

    @NonNull
    public Bundle u() {
        return new Bundle();
    }

    @NonNull
    public Set<Scope> v() {
        return Collections.emptySet();
    }

    @NonNull
    public final T w() throws DeadObjectException {
        T t10;
        synchronized (this.f13923g) {
            try {
                if (this.f13930n == 5) {
                    throw new DeadObjectException();
                }
                if (!isConnected()) {
                    throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                }
                t10 = (T) this.f13927k;
                r.j(t10, "Client is connected but service is null");
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return t10;
    }

    @NonNull
    public abstract String x();

    @NonNull
    public abstract String y();

    public boolean z() {
        return l() >= 211700000;
    }
}
