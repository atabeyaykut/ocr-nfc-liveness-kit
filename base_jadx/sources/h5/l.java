package h5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class l<TResult> {

    /* renamed from: a, reason: collision with root package name */
    public final z f6841a = new z();

    public l() {
    }

    public l(@NonNull q qVar) {
        q qVar2 = new q(this);
        ((z) qVar.f6852a).d(m.f6842a, new j0.e((h) qVar2));
    }

    public final void a(@NonNull Exception exc) {
        this.f6841a.q(exc);
    }

    public final void b(@Nullable TResult tresult) {
        this.f6841a.r(tresult);
    }

    public final boolean c(@NonNull Exception exc) {
        z zVar = this.f6841a;
        zVar.getClass();
        if (exc == null) {
            throw new NullPointerException("Exception must not be null");
        }
        synchronized (zVar.f6872a) {
            if (zVar.f6874c) {
                return false;
            }
            zVar.f6874c = true;
            zVar.f = exc;
            zVar.f6873b.b(zVar);
            return true;
        }
    }

    public final void d(@Nullable Object obj) {
        z zVar = this.f6841a;
        synchronized (zVar.f6872a) {
            if (zVar.f6874c) {
                return;
            }
            zVar.f6874c = true;
            zVar.f6876e = obj;
            zVar.f6873b.b(zVar);
        }
    }
}
