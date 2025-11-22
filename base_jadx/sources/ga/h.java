package ga;

import ga.t0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class h<R> implements da.c<R>, r0 {

    /* renamed from: a, reason: collision with root package name */
    public final t0.a<List<Annotation>> f6015a = t0.c(new a(this));

    /* renamed from: b, reason: collision with root package name */
    public final t0.a<ArrayList<da.j>> f6016b = t0.c(new b(this));

    /* renamed from: c, reason: collision with root package name */
    public final t0.a<p0> f6017c = t0.c(new c(this));

    /* renamed from: d, reason: collision with root package name */
    public final t0.a<List<q0>> f6018d = t0.c(new d(this));

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends Annotation>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h<R> f6019a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(h<? extends R> hVar) {
            super(0);
            this.f6019a = hVar;
        }

        @Override // x9.a
        public final List<? extends Annotation> invoke() {
            return z0.d(this.f6019a.o());
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<ArrayList<da.j>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h<R> f6020a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(h<? extends R> hVar) {
            super(0);
            this.f6020a = hVar;
        }

        @Override // x9.a
        public final ArrayList<da.j> invoke() {
            int r32;
            h<R> hVar = this.f6020a;
            ma.b bVarO = hVar.o();
            ArrayList<da.j> arrayList = new ArrayList<>();
            int r42 = 0;
            if (hVar.q()) {
                r32 = 0;
            } else {
                ma.o0 o0VarG = z0.g(bVarO);
                if (o0VarG != null) {
                    arrayList.add(new f0(hVar, 0, 1, new i(o0VarG)));
                    r32 = 1;
                } else {
                    r32 = 0;
                }
                ma.o0 o0VarH0 = bVarO.h0();
                if (o0VarH0 != null) {
                    arrayList.add(new f0(hVar, r32, 2, new j(o0VarH0)));
                    r32++;
                }
            }
            int size = bVarO.g().size();
            while (r42 < size) {
                arrayList.add(new f0(hVar, r32, 3, new k(bVarO, r42)));
                r42++;
                r32++;
            }
            if (hVar.p() && (bVarO instanceof xa.a) && arrayList.size() > 1) {
                m9.o.R0(arrayList, new l());
            }
            arrayList.trimToSize();
            return arrayList;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<p0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h<R> f6021a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(h<? extends R> hVar) {
            super(0);
            this.f6021a = hVar;
        }

        @Override // x9.a
        public final p0 invoke() {
            h<R> hVar = this.f6021a;
            cc.e0 returnType = hVar.o().getReturnType();
            kotlin.jvm.internal.h.c(returnType);
            return new p0(returnType, new m(hVar));
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<List<? extends q0>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h<R> f6022a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(h<? extends R> hVar) {
            super(0);
            this.f6022a = hVar;
        }

        @Override // x9.a
        public final List<? extends q0> invoke() {
            h<R> hVar = this.f6022a;
            List<ma.w0> typeParameters = hVar.o().getTypeParameters();
            kotlin.jvm.internal.h.e(typeParameters, "descriptor.typeParameters");
            List<ma.w0> list = typeParameters;
            ArrayList arrayList = new ArrayList(m9.n.Q0(list));
            for (ma.w0 descriptor : list) {
                kotlin.jvm.internal.h.e(descriptor, "descriptor");
                arrayList.add(new q0(hVar, descriptor));
            }
            return arrayList;
        }
    }

    public static Object g(da.n nVar) throws NegativeArraySizeException {
        Class clsQ = com.google.android.gms.internal.clearcut.d0.q(b8.f.L(nVar));
        if (clsQ.isArray()) {
            Object objNewInstance = Array.newInstance(clsQ.getComponentType(), 0);
            kotlin.jvm.internal.h.e(objNewInstance, "type.jvmErasure.java.run…\"\n            )\n        }");
            return objNewInstance;
        }
        throw new l9.f("Cannot instantiate the default empty array of type " + clsQ.getSimpleName() + ", because it is not an array type", 1);
    }

    @Override // da.c
    public final R call(Object... args) throws ea.a {
        kotlin.jvm.internal.h.f(args, "args");
        try {
            return (R) k().call(args);
        } catch (IllegalAccessException e10) {
            throw new ea.a(e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00cb A[SYNTHETIC] */
    @Override // da.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final R callBy(java.util.Map<da.j, ? extends java.lang.Object> r14) throws ea.a, java.lang.NegativeArraySizeException {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.h.callBy(java.util.Map):java.lang.Object");
    }

    @Override // da.b
    public final List<Annotation> getAnnotations() {
        List<Annotation> listInvoke = this.f6015a.invoke();
        kotlin.jvm.internal.h.e(listInvoke, "_annotations()");
        return listInvoke;
    }

    @Override // da.c
    public final List<da.j> getParameters() {
        ArrayList<da.j> arrayListInvoke = this.f6016b.invoke();
        kotlin.jvm.internal.h.e(arrayListInvoke, "_parameters()");
        return arrayListInvoke;
    }

    @Override // da.c
    public final da.n getReturnType() {
        p0 p0VarInvoke = this.f6017c.invoke();
        kotlin.jvm.internal.h.e(p0VarInvoke, "_returnType()");
        return p0VarInvoke;
    }

    @Override // da.c
    public final List<da.o> getTypeParameters() {
        List<q0> listInvoke = this.f6018d.invoke();
        kotlin.jvm.internal.h.e(listInvoke, "_typeParameters()");
        return listInvoke;
    }

    @Override // da.c
    public final da.q getVisibility() {
        ma.q visibility = o().getVisibility();
        kotlin.jvm.internal.h.e(visibility, "descriptor.visibility");
        lb.c cVar = z0.f6145a;
        if (kotlin.jvm.internal.h.a(visibility, ma.p.f10225e)) {
            return da.q.PUBLIC;
        }
        if (kotlin.jvm.internal.h.a(visibility, ma.p.f10223c)) {
            return da.q.PROTECTED;
        }
        if (kotlin.jvm.internal.h.a(visibility, ma.p.f10224d)) {
            return da.q.INTERNAL;
        }
        if (kotlin.jvm.internal.h.a(visibility, ma.p.f10221a) ? true : kotlin.jvm.internal.h.a(visibility, ma.p.f10222b)) {
            return da.q.PRIVATE;
        }
        return null;
    }

    @Override // da.c
    public final boolean isAbstract() {
        return o().j() == ma.a0.ABSTRACT;
    }

    @Override // da.c
    public final boolean isFinal() {
        return o().j() == ma.a0.FINAL;
    }

    @Override // da.c
    public final boolean isOpen() {
        return o().j() == ma.a0.OPEN;
    }

    public abstract ha.f<?> k();

    public abstract s m();

    public abstract ha.f<?> n();

    public abstract ma.b o();

    public final boolean p() {
        return kotlin.jvm.internal.h.a(getName(), "<init>") && m().g().isAnnotation();
    }

    public abstract boolean q();
}
