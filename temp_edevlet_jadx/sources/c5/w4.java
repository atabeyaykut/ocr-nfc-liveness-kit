package c5;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class w4 extends u2 {

    /* renamed from: a, reason: collision with root package name */
    public final o7 f2101a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f2102b;

    /* renamed from: c, reason: collision with root package name */
    public String f2103c;

    public w4(o7 o7Var) {
        r3.r.i(o7Var);
        this.f2101a = o7Var;
        this.f2103c = null;
    }

    @Override // c5.v2
    @BinderThread
    public final void A(r7 r7Var, y7 y7Var) {
        r3.r.i(r7Var);
        z0(y7Var);
        y0(new t3(this, r7Var, y7Var, 1));
    }

    @Override // c5.v2
    @BinderThread
    public final void C(y7 y7Var) {
        z0(y7Var);
        y0(new o3.n0(1, this, y7Var));
    }

    @Override // c5.v2
    @BinderThread
    public final void Q(long j10, String str, String str2, String str3) {
        y0(new v4(this, str2, str3, str, j10));
    }

    @Override // c5.v2
    @BinderThread
    public final List<r7> S(String str, String str2, boolean z10, y7 y7Var) {
        z0(y7Var);
        String str3 = y7Var.f2153a;
        r3.r.i(str3);
        o7 o7Var = this.f2101a;
        try {
            List<t7> list = (List) o7Var.l().n(new l4(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (t7 t7Var : list) {
                if (z10 || !v7.S(t7Var.f2010c)) {
                    arrayList.add(new r7(t7Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            e3 e3VarM = o7Var.m();
            e3VarM.f.c(e3.q(str3), "Failed to query user properties. appId", e10);
            return Collections.emptyList();
        }
    }

    @Override // c5.v2
    @BinderThread
    public final byte[] Y(s sVar, String str) {
        r3.r.f(str);
        r3.r.i(sVar);
        x0(str, true);
        o7 o7Var = this.f2101a;
        e3 e3VarM = o7Var.m();
        i4 i4Var = o7Var.f1828m;
        z2 z2Var = i4Var.f1639n;
        String str2 = sVar.f1956a;
        e3VarM.f1512n.b(z2Var.d(str2), "Log and bundle. event");
        ((w) o7Var.i()).getClass();
        long jNanoTime = System.nanoTime() / 1000000;
        h4 h4VarL = o7Var.l();
        t4 t4Var = new t4(this, sVar, str);
        h4VarL.d();
        f4<?> f4Var = new f4<>(h4VarL, t4Var, true);
        if (Thread.currentThread() == h4VarL.f1596c) {
            f4Var.run();
        } else {
            h4VarL.s(f4Var);
        }
        try {
            byte[] bArr = (byte[]) f4Var.get();
            if (bArr == null) {
                o7Var.m().f.b(e3.q(str), "Log and bundle returned null. appId");
                bArr = new byte[0];
            }
            ((w) o7Var.i()).getClass();
            o7Var.m().f1512n.d("Log and bundle processed. event, size, time_ms", i4Var.f1639n.d(str2), Integer.valueOf(bArr.length), Long.valueOf((System.nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e10) {
            e3 e3VarM2 = o7Var.m();
            e3VarM2.f.d("Failed to log and bundle. appId, event, error", e3.q(str), i4Var.f1639n.d(str2), e10);
            return null;
        }
    }

    @Override // c5.v2
    @BinderThread
    public final List<b> b0(String str, String str2, y7 y7Var) {
        z0(y7Var);
        String str3 = y7Var.f2153a;
        r3.r.i(str3);
        o7 o7Var = this.f2101a;
        try {
            return (List) o7Var.l().n(new o4(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e10) {
            o7Var.m().f.b(e10, "Failed to get conditional user properties");
            return Collections.emptyList();
        }
    }

    @Override // c5.v2
    @BinderThread
    public final void d0(y7 y7Var) {
        z0(y7Var);
        y0(new q4(this, y7Var, 1));
    }

    @Override // c5.v2
    @BinderThread
    public final void h0(s sVar, y7 y7Var) {
        r3.r.i(sVar);
        z0(y7Var);
        y0(new r4(this, sVar, y7Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // c5.v2
    @BinderThread
    public final String o(y7 y7Var) {
        z0(y7Var);
        o7 o7Var = this.f2101a;
        try {
            return (String) o7Var.l().n(new l7(o7Var, y7Var)).get(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            e3 e3VarM = o7Var.m();
            e3VarM.f.c(e3.q(y7Var.f2153a), "Failed to get app instance id. appId", e10);
            return null;
        }
    }

    @Override // c5.v2
    @BinderThread
    public final void p(Bundle bundle, y7 y7Var) {
        z0(y7Var);
        String str = y7Var.f2153a;
        r3.r.i(str);
        y0(new o3.f1(this, str, bundle));
    }

    @Override // c5.v2
    @BinderThread
    public final List<r7> q(String str, String str2, String str3, boolean z10) {
        x0(str, true);
        o7 o7Var = this.f2101a;
        try {
            List<t7> list = (List) o7Var.l().n(new n4(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (t7 t7Var : list) {
                if (z10 || !v7.S(t7Var.f2010c)) {
                    arrayList.add(new r7(t7Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            e3 e3VarM = o7Var.m();
            e3VarM.f.c(e3.q(str), "Failed to get user properties as. appId", e10);
            return Collections.emptyList();
        }
    }

    @Override // c5.v2
    @BinderThread
    public final void q0(b bVar, y7 y7Var) {
        r3.r.i(bVar);
        r3.r.i(bVar.f1402c);
        z0(y7Var);
        b bVar2 = new b(bVar);
        bVar2.f1400a = y7Var.f2153a;
        y0(new j4(this, bVar2, y7Var));
    }

    @Override // c5.v2
    @BinderThread
    public final void r(y7 y7Var) {
        r3.r.f(y7Var.f2153a);
        x0(y7Var.f2153a, false);
        y0(new q4(this, y7Var, 0));
    }

    @Override // c5.v2
    @BinderThread
    public final void s0(y7 y7Var) {
        r3.r.f(y7Var.f2153a);
        r3.r.i(y7Var.f2172y);
        l3.m mVar = new l3.m(this, y7Var);
        o7 o7Var = this.f2101a;
        if (o7Var.l().r()) {
            mVar.run();
        } else {
            o7Var.l().q(mVar);
        }
    }

    @BinderThread
    public final void x0(String str, boolean z10) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        o7 o7Var = this.f2101a;
        if (zIsEmpty) {
            o7Var.m().f.a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z10) {
            try {
                if (this.f2102b == null) {
                    this.f2102b = Boolean.valueOf("com.google.android.gms".equals(this.f2103c) || w3.g.a(Binder.getCallingUid(), o7Var.f1828m.f1628a) || m3.k.a(o7Var.f1828m.f1628a).b(Binder.getCallingUid()));
                }
                if (this.f2102b.booleanValue()) {
                    return;
                }
            } catch (SecurityException e10) {
                o7Var.m().f.b(e3.q(str), "Measurement Service called with invalid calling package. appId");
                throw e10;
            }
        }
        if (this.f2103c == null) {
            Context context = o7Var.f1828m.f1628a;
            int callingUid = Binder.getCallingUid();
            AtomicBoolean atomicBoolean = m3.j.f9954a;
            if (w3.g.b(context, callingUid, str)) {
                this.f2103c = str;
            }
        }
        if (str.equals(this.f2103c)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    public final void y0(Runnable runnable) {
        o7 o7Var = this.f2101a;
        if (o7Var.l().r()) {
            runnable.run();
        } else {
            o7Var.l().p(runnable);
        }
    }

    @Override // c5.v2
    @BinderThread
    public final List<b> z(String str, String str2, String str3) {
        x0(str, true);
        o7 o7Var = this.f2101a;
        try {
            return (List) o7Var.l().n(new p4(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e10) {
            o7Var.m().f.b(e10, "Failed to get conditional user properties as");
            return Collections.emptyList();
        }
    }

    @BinderThread
    public final void z0(y7 y7Var) {
        r3.r.i(y7Var);
        String str = y7Var.f2153a;
        r3.r.f(str);
        x0(str, false);
        this.f2101a.Q().G(y7Var.f2154b, y7Var.f2168s, y7Var.f2171x);
    }
}
