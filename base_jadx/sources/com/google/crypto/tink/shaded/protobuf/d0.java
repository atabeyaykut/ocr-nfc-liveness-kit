package com.google.crypto.tink.shaded.protobuf;

/* loaded from: classes2.dex */
public class d0 {

    /* renamed from: a, reason: collision with root package name */
    public volatile q0 f4250a;

    /* renamed from: b, reason: collision with root package name */
    public volatile i f4251b;

    static {
        p.a();
    }

    public final q0 a(q0 q0Var) {
        if (this.f4250a == null) {
            synchronized (this) {
                if (this.f4250a == null) {
                    try {
                        this.f4250a = q0Var;
                        this.f4251b = i.f4287b;
                    } catch (a0 unused) {
                        this.f4250a = q0Var;
                        this.f4251b = i.f4287b;
                    }
                }
            }
        }
        return this.f4250a;
    }

    public final i b() {
        if (this.f4251b != null) {
            return this.f4251b;
        }
        synchronized (this) {
            if (this.f4251b != null) {
                return this.f4251b;
            }
            this.f4251b = this.f4250a == null ? i.f4287b : this.f4250a.f();
            return this.f4251b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        q0 q0Var = this.f4250a;
        q0 q0Var2 = d0Var.f4250a;
        return (q0Var == null && q0Var2 == null) ? b().equals(d0Var.b()) : (q0Var == null || q0Var2 == null) ? q0Var != null ? q0Var.equals(d0Var.a(q0Var.e())) : a(q0Var2.e()).equals(q0Var2) : q0Var.equals(q0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
