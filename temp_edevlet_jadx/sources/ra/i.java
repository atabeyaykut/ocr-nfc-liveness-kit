package ra;

import cb.l;
import sa.v;

/* loaded from: classes2.dex */
public final class i implements bb.b {

    /* renamed from: a, reason: collision with root package name */
    public static final i f14370a = new i();

    public static final class a implements bb.a {

        /* renamed from: b, reason: collision with root package name */
        public final v f14371b;

        public a(v javaElement) {
            kotlin.jvm.internal.h.f(javaElement, "javaElement");
            this.f14371b = javaElement;
        }

        @Override // ma.r0
        public final void a() {
        }

        @Override // bb.a
        public final v b() {
            return this.f14371b;
        }

        public final String toString() {
            return a.class.getName() + ": " + this.f14371b;
        }
    }

    @Override // bb.b
    public final a a(l javaElement) {
        kotlin.jvm.internal.h.f(javaElement, "javaElement");
        return new a((v) javaElement);
    }
}
