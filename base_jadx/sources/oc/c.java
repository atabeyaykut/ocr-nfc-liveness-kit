package oc;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.internal.m;
import nc.j;
import nc.j0;
import nc.k1;
import p9.f;

/* loaded from: classes2.dex */
public final class c extends d {
    private volatile c _immediate;

    /* renamed from: a, reason: collision with root package name */
    public final Handler f11310a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11311b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11312c;

    /* renamed from: d, reason: collision with root package name */
    public final c f11313d;

    public c(Handler handler) {
        this(handler, null, false);
    }

    @Override // nc.g0
    public final void c(long j10, j jVar) {
        a aVar = new a(jVar, this);
        if (j10 > 4611686018427387903L) {
            j10 = 4611686018427387903L;
        }
        if (this.f11310a.postDelayed(aVar, j10)) {
            jVar.D(new b(this, aVar));
        } else {
            g(jVar.f10807e, aVar);
        }
    }

    @Override // nc.k1
    public final k1 d() {
        return this.f11313d;
    }

    @Override // nc.y
    public final void dispatch(f fVar, Runnable runnable) {
        if (this.f11310a.post(runnable)) {
            return;
        }
        g(fVar, runnable);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).f11310a == this.f11310a;
    }

    public final void g(f fVar, Runnable runnable) {
        x5.a.d(fVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        j0.f10809b.dispatch(fVar, runnable);
    }

    public final int hashCode() {
        return System.identityHashCode(this.f11310a);
    }

    @Override // nc.y
    public final boolean isDispatchNeeded(f fVar) {
        return (this.f11312c && h.a(Looper.myLooper(), this.f11310a.getLooper())) ? false : true;
    }

    @Override // nc.k1, nc.y
    public final String toString() {
        k1 k1VarD;
        String str;
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1Var = m.f9167a;
        if (this == k1Var) {
            str = "Dispatchers.Main";
        } else {
            try {
                k1VarD = k1Var.d();
            } catch (UnsupportedOperationException unused) {
                k1VarD = null;
            }
            str = this == k1VarD ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.f11311b;
        if (string == null) {
            string = this.f11310a.toString();
        }
        return this.f11312c ? h.k(".immediate", string) : string;
    }

    public c(Handler handler, String str, boolean z10) {
        this.f11310a = handler;
        this.f11311b = str;
        this.f11312c = z10;
        this._immediate = z10 ? this : null;
        c cVar = this._immediate;
        if (cVar == null) {
            cVar = new c(handler, str, true);
            this._immediate = cVar;
        }
        this.f11313d = cVar;
    }
}
