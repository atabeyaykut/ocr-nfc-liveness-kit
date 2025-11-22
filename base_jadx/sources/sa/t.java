package sa;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class t extends e0 implements cb.j {

    /* renamed from: a, reason: collision with root package name */
    public final Type f15365a;

    /* renamed from: b, reason: collision with root package name */
    public final v f15366b;

    public t(Type reflectType) {
        v rVar;
        kotlin.jvm.internal.h.f(reflectType, "reflectType");
        this.f15365a = reflectType;
        if (reflectType instanceof Class) {
            rVar = new r((Class) reflectType);
        } else if (reflectType instanceof TypeVariable) {
            rVar = new f0((TypeVariable) reflectType);
        } else {
            if (!(reflectType instanceof ParameterizedType)) {
                throw new IllegalStateException("Not a classifier type (" + reflectType.getClass() + "): " + reflectType);
            }
            Type rawType = ((ParameterizedType) reflectType).getRawType();
            kotlin.jvm.internal.h.d(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
            rVar = new r((Class) rawType);
        }
        this.f15366b = rVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    @Override // cb.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList C() {
        /*
            r6 = this;
            java.lang.reflect.Type r0 = r6.f15365a
            java.util.List r0 = sa.d.c(r0)
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = m9.n.Q0(r0)
            r1.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
        L15:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L65
            java.lang.Object r2 = r0.next()
            java.lang.reflect.Type r2 = (java.lang.reflect.Type) r2
            java.lang.String r3 = "type"
            kotlin.jvm.internal.h.f(r2, r3)
            boolean r3 = r2 instanceof java.lang.Class
            if (r3 == 0) goto L39
            r4 = r2
            java.lang.Class r4 = (java.lang.Class) r4
            boolean r5 = r4.isPrimitive()
            if (r5 == 0) goto L39
            sa.c0 r2 = new sa.c0
            r2.<init>(r4)
            goto L61
        L39:
            boolean r4 = r2 instanceof java.lang.reflect.GenericArrayType
            if (r4 != 0) goto L5b
            if (r3 == 0) goto L49
            r3 = r2
            java.lang.Class r3 = (java.lang.Class) r3
            boolean r3 = r3.isArray()
            if (r3 == 0) goto L49
            goto L5b
        L49:
            boolean r3 = r2 instanceof java.lang.reflect.WildcardType
            if (r3 == 0) goto L55
            sa.h0 r3 = new sa.h0
            java.lang.reflect.WildcardType r2 = (java.lang.reflect.WildcardType) r2
            r3.<init>(r2)
            goto L60
        L55:
            sa.t r3 = new sa.t
            r3.<init>(r2)
            goto L60
        L5b:
            sa.i r3 = new sa.i
            r3.<init>(r2)
        L60:
            r2 = r3
        L61:
            r1.add(r2)
            goto L15
        L65:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: sa.t.C():java.util.ArrayList");
    }

    @Override // sa.e0
    public final Type O() {
        return this.f15365a;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [cb.i, sa.v] */
    @Override // cb.j
    public final cb.i b() {
        return this.f15366b;
    }

    @Override // cb.d
    public final Collection<cb.a> getAnnotations() {
        return m9.v.f10173a;
    }

    @Override // cb.j
    public final String j() {
        return this.f15365a.toString();
    }

    @Override // sa.e0, cb.d
    public final cb.a n(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return null;
    }

    @Override // cb.d
    public final void o() {
    }

    @Override // cb.j
    public final boolean v() {
        Type type = this.f15365a;
        if (!(type instanceof Class)) {
            return false;
        }
        TypeVariable[] typeParameters = ((Class) type).getTypeParameters();
        kotlin.jvm.internal.h.e(typeParameters, "getTypeParameters()");
        return (typeParameters.length == 0) ^ true;
    }

    @Override // cb.j
    public final String w() {
        throw new UnsupportedOperationException("Type not found: " + this.f15365a);
    }
}
