package kotlin.reflect.jvm.internal.impl.load.java;

import eb.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import lb.f;
import m9.t;
import ma.u;
import x9.l;

/* loaded from: classes2.dex */
public final class c extends e {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f8982m = 0;

    public static final class a extends j implements l<ma.b, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f8983a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final Boolean invoke(ma.b bVar) {
            ma.b it = bVar;
            h.f(it, "it");
            int r02 = c.f8982m;
            return Boolean.valueOf(t.V0(e.f8992g, w.b(it)));
        }
    }

    public static final u a(u functionDescriptor) {
        h.f(functionDescriptor, "functionDescriptor");
        f name = functionDescriptor.getName();
        h.e(name, "functionDescriptor.name");
        if (b(name)) {
            return (u) sb.b.b(functionDescriptor, a.f8983a);
        }
        return null;
    }

    public static boolean b(f fVar) {
        h.f(fVar, "<this>");
        return e.f.contains(fVar);
    }
}
