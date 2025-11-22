package h5;

import androidx.annotation.NonNull;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class p<T> implements g, f, d {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6845a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final int f6846b;

    /* renamed from: c, reason: collision with root package name */
    public final z f6847c;

    /* renamed from: d, reason: collision with root package name */
    public int f6848d;

    /* renamed from: e, reason: collision with root package name */
    public int f6849e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public Exception f6850g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6851h;

    public p(int r22, z zVar) {
        this.f6846b = r22;
        this.f6847c = zVar;
    }

    @Override // h5.d
    public final void a() {
        synchronized (this.f6845a) {
            this.f++;
            this.f6851h = true;
            b();
        }
    }

    public final void b() {
        int r02 = this.f6848d + this.f6849e + this.f;
        int r12 = this.f6846b;
        if (r02 == r12) {
            Exception exc = this.f6850g;
            z zVar = this.f6847c;
            if (exc == null) {
                if (this.f6851h) {
                    zVar.s();
                    return;
                } else {
                    zVar.r(null);
                    return;
                }
            }
            zVar.q(new ExecutionException(this.f6849e + " out of " + r12 + " underlying tasks failed", this.f6850g));
        }
    }

    @Override // h5.f
    public final void e(@NonNull Exception exc) {
        synchronized (this.f6845a) {
            this.f6849e++;
            this.f6850g = exc;
            b();
        }
    }

    @Override // h5.g
    public final void onSuccess(T t10) {
        synchronized (this.f6845a) {
            this.f6848d++;
            b();
        }
    }
}
