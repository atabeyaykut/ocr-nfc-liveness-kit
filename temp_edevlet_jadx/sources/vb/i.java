package vb;

import java.util.Collection;
import java.util.Set;
import m9.x;

/* loaded from: classes2.dex */
public interface i extends l {

    /* renamed from: a, reason: collision with root package name */
    public static final a f18449a = a.f18450a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f18450a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final C0290a f18451b = C0290a.f18452a;

        /* renamed from: vb.i$a$a, reason: collision with other inner class name */
        public static final class C0290a extends kotlin.jvm.internal.j implements x9.l<lb.f, Boolean> {

            /* renamed from: a, reason: collision with root package name */
            public static final C0290a f18452a = new C0290a();

            public C0290a() {
                super(1);
            }

            @Override // x9.l
            public final Boolean invoke(lb.f fVar) {
                lb.f it = fVar;
                kotlin.jvm.internal.h.f(it, "it");
                return Boolean.TRUE;
            }
        }
    }

    public static final class b extends j {

        /* renamed from: b, reason: collision with root package name */
        public static final b f18453b = new b();

        @Override // vb.j, vb.i
        public final Set<lb.f> b() {
            return x.f10175a;
        }

        @Override // vb.j, vb.i
        public final Set<lb.f> d() {
            return x.f10175a;
        }

        @Override // vb.j, vb.i
        public final Set<lb.f> g() {
            return x.f10175a;
        }
    }

    Collection a(lb.f fVar, ua.c cVar);

    Set<lb.f> b();

    Collection c(lb.f fVar, ua.c cVar);

    Set<lb.f> d();

    Set<lb.f> g();
}
