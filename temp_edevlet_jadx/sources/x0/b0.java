package x0;

import android.os.SystemClock;
import android.util.Log;
import b1.o;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import x0.h;
import x0.m;

/* loaded from: classes.dex */
public final class b0 implements h, h.a {

    /* renamed from: a, reason: collision with root package name */
    public final i<?> f18935a;

    /* renamed from: b, reason: collision with root package name */
    public final h.a f18936b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f18937c;

    /* renamed from: d, reason: collision with root package name */
    public volatile e f18938d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f18939e;
    public volatile o.a<?> f;

    /* renamed from: g, reason: collision with root package name */
    public volatile f f18940g;

    public b0(i<?> iVar, h.a aVar) {
        this.f18935a = iVar;
        this.f18936b = aVar;
    }

    @Override // x0.h
    public final boolean a() {
        if (this.f18939e != null) {
            Object obj = this.f18939e;
            this.f18939e = null;
            try {
                if (!b(obj)) {
                    return true;
                }
            } catch (IOException e10) {
                if (Log.isLoggable("SourceGenerator", 3)) {
                    Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e10);
                }
            }
        }
        if (this.f18938d != null && this.f18938d.a()) {
            return true;
        }
        this.f18938d = null;
        this.f = null;
        boolean z10 = false;
        while (!z10) {
            if (!(this.f18937c < this.f18935a.b().size())) {
                break;
            }
            ArrayList arrayListB = this.f18935a.b();
            int r42 = this.f18937c;
            this.f18937c = r42 + 1;
            this.f = (o.a) arrayListB.get(r42);
            if (this.f != null) {
                if (!this.f18935a.f18975p.c(this.f.f1051c.d())) {
                    if (this.f18935a.c(this.f.f1051c.a()) != null) {
                    }
                }
                this.f.f1051c.e(this.f18935a.f18974o, new a0(this, this.f));
                z10 = true;
            }
        }
        return z10;
    }

    public final boolean b(Object obj) throws Throwable {
        int r32 = q1.h.f13308b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z10 = false;
        try {
            com.bumptech.glide.load.data.e eVarH = this.f18935a.f18963c.a().h(obj);
            Object objA = eVarH.a();
            v0.d<X> dVarE = this.f18935a.e(objA);
            g gVar = new g(dVarE, objA, this.f18935a.f18968i);
            v0.f fVar = this.f.f1049a;
            i<?> iVar = this.f18935a;
            f fVar2 = new f(fVar, iVar.f18973n);
            z0.a aVarA = ((m.c) iVar.f18967h).a();
            aVarA.f(fVar2, gVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + fVar2 + ", data: " + obj + ", encoder: " + dVarE + ", duration: " + q1.h.a(jElapsedRealtimeNanos));
            }
            if (aVarA.g(fVar2) != null) {
                this.f18940g = fVar2;
                this.f18938d = new e(Collections.singletonList(this.f.f1049a), this.f18935a, this);
                this.f.f1051c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f18940g + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f18936b.n(this.f.f1049a, eVarH.a(), this.f.f1051c, this.f.f1051c.d(), this.f.f1049a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z10 = true;
                if (!z10) {
                    this.f.f1051c.b();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // x0.h
    public final void cancel() {
        o.a<?> aVar = this.f;
        if (aVar != null) {
            aVar.f1051c.cancel();
        }
    }

    @Override // x0.h.a
    public final void n(v0.f fVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, v0.a aVar, v0.f fVar2) {
        this.f18936b.n(fVar, obj, dVar, this.f.f1051c.d(), fVar);
    }

    @Override // x0.h.a
    public final void o() {
        throw new UnsupportedOperationException();
    }

    @Override // x0.h.a
    public final void q(v0.f fVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, v0.a aVar) {
        this.f18936b.q(fVar, exc, dVar, this.f.f1051c.d());
    }
}
