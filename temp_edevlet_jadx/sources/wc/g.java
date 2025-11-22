package wc;

import rc.d0;
import rc.t;

/* loaded from: classes2.dex */
public final class g extends d0 {

    /* renamed from: b, reason: collision with root package name */
    public final String f18876b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18877c;

    /* renamed from: d, reason: collision with root package name */
    public final ed.g f18878d;

    public g(String str, long j10, ed.d0 d0Var) {
        this.f18876b = str;
        this.f18877c = j10;
        this.f18878d = d0Var;
    }

    @Override // rc.d0
    public final long a() {
        return this.f18877c;
    }

    @Override // rc.d0
    public final t b() {
        String str = this.f18876b;
        if (str == null) {
            return null;
        }
        t.f.getClass();
        try {
            return t.a.a(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // rc.d0
    public final ed.g c() {
        return this.f18878d;
    }
}
