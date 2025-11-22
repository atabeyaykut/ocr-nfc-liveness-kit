package h5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class z<TResult> extends k<TResult> {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6872a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final w f6873b = new w();

    /* renamed from: c, reason: collision with root package name */
    public boolean f6874c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f6875d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public Object f6876e;
    public Exception f;

    @Override // h5.k
    @NonNull
    public final void a(@NonNull x xVar, @NonNull d dVar) {
        this.f6873b.a(new t(xVar, dVar));
        u();
    }

    @Override // h5.k
    @NonNull
    public final void b(@NonNull e eVar) {
        this.f6873b.a(new u(m.f6842a, eVar));
        u();
    }

    @Override // h5.k
    @NonNull
    public final z c(@NonNull Executor executor, @NonNull f fVar) {
        this.f6873b.a(new r(executor, fVar));
        u();
        return this;
    }

    @Override // h5.k
    @NonNull
    public final z d(@NonNull Executor executor, @NonNull g gVar) {
        this.f6873b.a(new s(executor, gVar));
        u();
        return this;
    }

    @Override // h5.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> e(@NonNull Executor executor, @NonNull b<TResult, TContinuationResult> bVar) {
        z zVar = new z();
        this.f6873b.a(new r(executor, bVar, zVar));
        u();
        return zVar;
    }

    @Override // h5.k
    @NonNull
    public final void f(@NonNull b bVar) {
        e(m.f6842a, bVar);
    }

    @Override // h5.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> g(@NonNull Executor executor, @NonNull b<TResult, k<TContinuationResult>> bVar) {
        z zVar = new z();
        this.f6873b.a(new s(executor, bVar, zVar));
        u();
        return zVar;
    }

    @Override // h5.k
    @Nullable
    public final Exception h() {
        Exception exc;
        synchronized (this.f6872a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // h5.k
    public final TResult i() {
        TResult tresult;
        synchronized (this.f6872a) {
            r3.r.k("Task is not yet complete", this.f6874c);
            if (this.f6875d) {
                throw new CancellationException("Task is already canceled.");
            }
            Exception exc = this.f;
            if (exc != null) {
                throw new i(exc);
            }
            tresult = (TResult) this.f6876e;
        }
        return tresult;
    }

    @Override // h5.k
    public final Object j() throws Throwable {
        Object obj;
        synchronized (this.f6872a) {
            r3.r.k("Task is not yet complete", this.f6874c);
            if (this.f6875d) {
                throw new CancellationException("Task is already canceled.");
            }
            if (IOException.class.isInstance(this.f)) {
                throw ((Throwable) IOException.class.cast(this.f));
            }
            Exception exc = this.f;
            if (exc != null) {
                throw new i(exc);
            }
            obj = this.f6876e;
        }
        return obj;
    }

    @Override // h5.k
    public final boolean k() {
        return this.f6875d;
    }

    @Override // h5.k
    public final boolean l() {
        boolean z10;
        synchronized (this.f6872a) {
            z10 = this.f6874c;
        }
        return z10;
    }

    @Override // h5.k
    public final boolean m() {
        boolean z10;
        synchronized (this.f6872a) {
            z10 = false;
            if (this.f6874c && !this.f6875d && this.f == null) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // h5.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> n(Executor executor, j<TResult, TContinuationResult> jVar) {
        z zVar = new z();
        this.f6873b.a(new t(executor, jVar, zVar));
        u();
        return zVar;
    }

    @NonNull
    public final z o(@NonNull Executor executor, @NonNull e eVar) {
        this.f6873b.a(new u(executor, eVar));
        u();
        return this;
    }

    @NonNull
    public final z p(@NonNull f fVar) {
        c(m.f6842a, fVar);
        return this;
    }

    public final void q(@NonNull Exception exc) {
        if (exc == null) {
            throw new NullPointerException("Exception must not be null");
        }
        synchronized (this.f6872a) {
            t();
            this.f6874c = true;
            this.f = exc;
        }
        this.f6873b.b(this);
    }

    public final void r(@Nullable Object obj) {
        synchronized (this.f6872a) {
            t();
            this.f6874c = true;
            this.f6876e = obj;
        }
        this.f6873b.b(this);
    }

    public final void s() {
        synchronized (this.f6872a) {
            if (this.f6874c) {
                return;
            }
            this.f6874c = true;
            this.f6875d = true;
            this.f6873b.b(this);
        }
    }

    public final void t() {
        if (this.f6874c) {
            int r02 = c.f6840a;
            if (!l()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception excH = h();
        }
    }

    public final void u() {
        synchronized (this.f6872a) {
            if (this.f6874c) {
                this.f6873b.b(this);
            }
        }
    }
}
