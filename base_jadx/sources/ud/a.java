package ud;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import ud.f;

/* loaded from: classes2.dex */
public final class a extends f.a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f17938a = true;

    /* renamed from: ud.a$a, reason: collision with other inner class name */
    public static final class C0277a implements ud.f<rc.d0, rc.d0> {

        /* renamed from: a, reason: collision with root package name */
        public static final C0277a f17939a = new C0277a();

        @Override // ud.f
        public final rc.d0 a(rc.d0 d0Var) throws IOException {
            rc.d0 d0Var2 = d0Var;
            try {
                return h0.a(d0Var2);
            } finally {
                d0Var2.close();
            }
        }
    }

    public static final class b implements ud.f<rc.a0, rc.a0> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17940a = new b();

        @Override // ud.f
        public final rc.a0 a(rc.a0 a0Var) throws IOException {
            return a0Var;
        }
    }

    public static final class c implements ud.f<rc.d0, rc.d0> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f17941a = new c();

        @Override // ud.f
        public final rc.d0 a(rc.d0 d0Var) throws IOException {
            return d0Var;
        }
    }

    public static final class d implements ud.f<Object, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f17942a = new d();

        @Override // ud.f
        public final String a(Object obj) throws IOException {
            return obj.toString();
        }
    }

    public static final class e implements ud.f<rc.d0, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f17943a = new e();

        @Override // ud.f
        public final l9.m a(rc.d0 d0Var) throws IOException {
            d0Var.close();
            return l9.m.f9594a;
        }
    }

    public static final class f implements ud.f<rc.d0, Void> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f17944a = new f();

        @Override // ud.f
        public final Void a(rc.d0 d0Var) throws IOException {
            d0Var.close();
            return null;
        }
    }

    @Override // ud.f.a
    public final ud.f a(Type type, Annotation[] annotationArr) {
        if (rc.a0.class.isAssignableFrom(h0.f(type))) {
            return b.f17940a;
        }
        return null;
    }

    @Override // ud.f.a
    public final ud.f<rc.d0, ?> b(Type type, Annotation[] annotationArr, d0 d0Var) {
        if (type == rc.d0.class) {
            return h0.i(annotationArr, xd.w.class) ? c.f17941a : C0277a.f17939a;
        }
        if (type == Void.class) {
            return f.f17944a;
        }
        if (!this.f17938a || type != l9.m.class) {
            return null;
        }
        try {
            return e.f17943a;
        } catch (NoClassDefFoundError unused) {
            this.f17938a = false;
            return null;
        }
    }
}
