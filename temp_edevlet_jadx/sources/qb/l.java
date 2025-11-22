package qb;

import cc.e0;
import ma.b0;

/* loaded from: classes2.dex */
public abstract class l extends g<l9.m> {

    public static final class a extends l {

        /* renamed from: b, reason: collision with root package name */
        public final String f13474b;

        public a(String message) {
            kotlin.jvm.internal.h.f(message, "message");
            this.f13474b = message;
        }

        @Override // qb.g
        public final e0 a(b0 module) {
            kotlin.jvm.internal.h.f(module, "module");
            return ec.i.c(ec.h.ERROR_CONSTANT_VALUE, this.f13474b);
        }

        @Override // qb.g
        public final String toString() {
            return this.f13474b;
        }
    }

    public l() {
        super(l9.m.f9594a);
    }

    @Override // qb.g
    public final l9.m b() {
        throw new UnsupportedOperationException();
    }
}
