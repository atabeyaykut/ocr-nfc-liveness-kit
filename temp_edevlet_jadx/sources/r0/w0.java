package r0;

import r0.p;

/* loaded from: classes.dex */
public final class w0<S extends p> {

    /* renamed from: a, reason: collision with root package name */
    public a<S> f13873a;

    /* renamed from: b, reason: collision with root package name */
    public final S f13874b;

    public static final class a<S extends p> {

        /* renamed from: a, reason: collision with root package name */
        public final int f13875a;

        /* renamed from: b, reason: collision with root package name */
        public final S f13876b;

        public a(S state) {
            kotlin.jvm.internal.h.f(state, "state");
            this.f13876b = state;
            this.f13875a = hashCode();
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f13876b, ((a) obj).f13876b);
            }
            return true;
        }

        public final int hashCode() {
            S s7 = this.f13876b;
            if (s7 != null) {
                return s7.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "StateWrapper(state=" + this.f13876b + ")";
        }
    }

    public w0(S initialState) {
        kotlin.jvm.internal.h.f(initialState, "initialState");
        this.f13874b = initialState;
        this.f13873a = new a<>(initialState);
    }
}
