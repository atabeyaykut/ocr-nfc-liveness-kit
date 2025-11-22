package cc;

import java.util.ArrayDeque;

/* loaded from: classes2.dex */
public class b1 {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2263a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2264b;

    /* renamed from: c, reason: collision with root package name */
    public final fc.n f2265c;

    /* renamed from: d, reason: collision with root package name */
    public final c6.a f2266d;

    /* renamed from: e, reason: collision with root package name */
    public final c6.a f2267e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayDeque<fc.i> f2268g;

    /* renamed from: h, reason: collision with root package name */
    public kc.d f2269h;

    public interface a {

        /* renamed from: cc.b1$a$a, reason: collision with other inner class name */
        public static final class C0055a implements a {

            /* renamed from: a, reason: collision with root package name */
            public boolean f2270a;

            @Override // cc.b1.a
            public final void a(e eVar) {
                if (this.f2270a) {
                    return;
                }
                this.f2270a = ((Boolean) eVar.invoke()).booleanValue();
            }
        }

        void a(e eVar);
    }

    public static abstract class b {

        public static abstract class a extends b {
        }

        /* renamed from: cc.b1$b$b, reason: collision with other inner class name */
        public static final class C0056b extends b {

            /* renamed from: a, reason: collision with root package name */
            public static final C0056b f2271a = new C0056b();

            @Override // cc.b1.b
            public final fc.i a(b1 state, fc.h type) {
                kotlin.jvm.internal.h.f(state, "state");
                kotlin.jvm.internal.h.f(type, "type");
                return state.f2265c.Z(type);
            }
        }

        public static final class c extends b {

            /* renamed from: a, reason: collision with root package name */
            public static final c f2272a = new c();

            @Override // cc.b1.b
            public final fc.i a(b1 state, fc.h type) {
                kotlin.jvm.internal.h.f(state, "state");
                kotlin.jvm.internal.h.f(type, "type");
                throw new UnsupportedOperationException("Should not be called");
            }
        }

        public static final class d extends b {

            /* renamed from: a, reason: collision with root package name */
            public static final d f2273a = new d();

            @Override // cc.b1.b
            public final fc.i a(b1 state, fc.h type) {
                kotlin.jvm.internal.h.f(state, "state");
                kotlin.jvm.internal.h.f(type, "type");
                return state.f2265c.g(type);
            }
        }

        public abstract fc.i a(b1 b1Var, fc.h hVar);
    }

    public b1(boolean z10, boolean z11, fc.n typeSystemContext, c6.a kotlinTypePreparator, c6.a kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(typeSystemContext, "typeSystemContext");
        kotlin.jvm.internal.h.f(kotlinTypePreparator, "kotlinTypePreparator");
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        this.f2263a = z10;
        this.f2264b = z11;
        this.f2265c = typeSystemContext;
        this.f2266d = kotlinTypePreparator;
        this.f2267e = kotlinTypeRefiner;
    }

    public final void a() {
        ArrayDeque<fc.i> arrayDeque = this.f2268g;
        kotlin.jvm.internal.h.c(arrayDeque);
        arrayDeque.clear();
        kc.d dVar = this.f2269h;
        kotlin.jvm.internal.h.c(dVar);
        dVar.clear();
    }

    public boolean b(fc.h subType, fc.h superType) {
        kotlin.jvm.internal.h.f(subType, "subType");
        kotlin.jvm.internal.h.f(superType, "superType");
        return true;
    }

    public final void c() {
        if (this.f2268g == null) {
            this.f2268g = new ArrayDeque<>(4);
        }
        if (this.f2269h == null) {
            this.f2269h = new kc.d();
        }
    }

    public final fc.h d(fc.h type) {
        kotlin.jvm.internal.h.f(type, "type");
        return this.f2266d.q(type);
    }
}
