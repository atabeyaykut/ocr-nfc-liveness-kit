package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import h4.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import n3.e;
import n3.f;
import n3.h;
import o3.b1;
import o3.c1;
import o3.e0;
import o3.s0;
import r3.r;

@KeepName
/* loaded from: classes.dex */
public abstract class BasePendingResult<R extends h> extends e<R> {

    /* renamed from: j, reason: collision with root package name */
    public static final b1 f2983j = new b1();

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public h f2988e;
    public Status f;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f2989g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2990h;

    @KeepName
    private c1 mResultGuardian;

    /* renamed from: a, reason: collision with root package name */
    public final Object f2984a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final CountDownLatch f2985b = new CountDownLatch(1);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2986c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f2987d = new AtomicReference();

    /* renamed from: i, reason: collision with root package name */
    public boolean f2991i = false;

    public static class a<R extends h> extends i {
        public a(@NonNull Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(@NonNull Message message) {
            int r02 = message.what;
            if (r02 != 1) {
                if (r02 == 2) {
                    ((BasePendingResult) message.obj).c(Status.f2976j);
                    return;
                }
                Log.wtf("BasePendingResult", "Don't know how to handle message: " + r02, new Exception());
                return;
            }
            Pair pair = (Pair) message.obj;
            n3.i iVar = (n3.i) pair.first;
            h hVar = (h) pair.second;
            try {
                iVar.a();
            } catch (RuntimeException e10) {
                BasePendingResult.h(hVar);
                throw e10;
            }
        }
    }

    @Deprecated
    public BasePendingResult() {
        new a(Looper.getMainLooper());
        new WeakReference(null);
    }

    public BasePendingResult(@Nullable e0 e0Var) {
        new a(e0Var != null ? e0Var.f11124b.f : Looper.getMainLooper());
        new WeakReference(e0Var);
    }

    public static void h(@Nullable h hVar) {
        if (hVar instanceof f) {
            try {
                ((f) hVar).release();
            } catch (RuntimeException e10) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(hVar)), e10);
            }
        }
    }

    public final void a(@NonNull e.a aVar) {
        synchronized (this.f2984a) {
            if (d()) {
                aVar.a(this.f);
            } else {
                this.f2986c.add(aVar);
            }
        }
    }

    @NonNull
    public abstract R b(@NonNull Status status);

    @Deprecated
    public final void c(@NonNull Status status) {
        synchronized (this.f2984a) {
            if (!d()) {
                e(b(status));
                this.f2990h = true;
            }
        }
    }

    public final boolean d() {
        return this.f2985b.getCount() == 0;
    }

    public final void e(@NonNull R r6) {
        synchronized (this.f2984a) {
            if (this.f2990h) {
                h(r6);
                return;
            }
            d();
            r.k("Results have already been set", !d());
            r.k("Result has already been consumed", !this.f2989g);
            g(r6);
        }
    }

    public final h f() {
        h hVar;
        synchronized (this.f2984a) {
            r.k("Result has already been consumed.", !this.f2989g);
            r.k("Result is not ready.", d());
            hVar = this.f2988e;
            this.f2988e = null;
            this.f2989g = true;
        }
        if (((s0) this.f2987d.getAndSet(null)) != null) {
            throw null;
        }
        r.i(hVar);
        return hVar;
    }

    public final void g(h hVar) {
        this.f2988e = hVar;
        this.f = hVar.y();
        this.f2985b.countDown();
        if (this.f2988e instanceof f) {
            this.mResultGuardian = new c1(this);
        }
        ArrayList arrayList = this.f2986c;
        int size = arrayList.size();
        for (int r12 = 0; r12 < size; r12++) {
            ((e.a) arrayList.get(r12)).a(this.f);
        }
        arrayList.clear();
    }
}
