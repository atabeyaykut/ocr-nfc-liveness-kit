package kotlinx.coroutines.internal;

import nc.v1;
import p9.f;

/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static final u f9178a = new u("NO_THREAD_ELEMENTS");

    /* renamed from: b, reason: collision with root package name */
    public static final a f9179b = a.f9182a;

    /* renamed from: c, reason: collision with root package name */
    public static final b f9180c = b.f9183a;

    /* renamed from: d, reason: collision with root package name */
    public static final c f9181d = c.f9184a;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<Object, f.b, Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f9182a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(Object obj, f.b bVar) {
            f.b bVar2 = bVar;
            if (!(bVar2 instanceof v1)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int r22 = num == null ? 1 : num.intValue();
            return r22 == 0 ? bVar2 : Integer.valueOf(r22 + 1);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.p<v1<?>, f.b, v1<?>> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f9183a = new b();

        public b() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final v1<?> mo7invoke(v1<?> v1Var, f.b bVar) {
            v1<?> v1Var2 = v1Var;
            f.b bVar2 = bVar;
            if (v1Var2 != null) {
                return v1Var2;
            }
            if (bVar2 instanceof v1) {
                return (v1) bVar2;
            }
            return null;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.p<z, f.b, z> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f9184a = new c();

        public c() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final z mo7invoke(z zVar, f.b bVar) {
            z zVar2 = zVar;
            f.b bVar2 = bVar;
            if (bVar2 instanceof v1) {
                v1<Object> v1Var = (v1) bVar2;
                String strV = v1Var.v(zVar2.f9186a);
                int r12 = zVar2.f9189d;
                zVar2.f9187b[r12] = strV;
                zVar2.f9189d = r12 + 1;
                zVar2.f9188c[r12] = v1Var;
            }
            return zVar2;
        }
    }

    public static final void a(p9.f fVar, Object obj) {
        if (obj == f9178a) {
            return;
        }
        if (!(obj instanceof z)) {
            Object objFold = fVar.fold(null, f9180c);
            if (objFold == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            }
            ((v1) objFold).y(obj);
            return;
        }
        z zVar = (z) obj;
        v1<Object>[] v1VarArr = zVar.f9188c;
        int length = v1VarArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int r12 = length - 1;
            v1<Object> v1Var = v1VarArr[length];
            kotlin.jvm.internal.h.c(v1Var);
            v1Var.y(zVar.f9187b[length]);
            if (r12 < 0) {
                return;
            } else {
                length = r12;
            }
        }
    }

    public static final Object b(p9.f fVar) {
        Object objFold = fVar.fold(0, f9179b);
        kotlin.jvm.internal.h.c(objFold);
        return objFold;
    }

    public static final Object c(p9.f fVar, Object obj) {
        if (obj == null) {
            obj = b(fVar);
        }
        return obj == 0 ? f9178a : obj instanceof Integer ? fVar.fold(new z(fVar, ((Number) obj).intValue()), f9181d) : ((v1) obj).v(fVar);
    }
}
