package la;

import ja.o;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f9598a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f9599b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f9600c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f9601d;

    /* renamed from: e, reason: collision with root package name */
    public static final lb.b f9602e;
    public static final lb.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final lb.b f9603g;

    /* renamed from: h, reason: collision with root package name */
    public static final HashMap<lb.d, lb.b> f9604h;

    /* renamed from: i, reason: collision with root package name */
    public static final HashMap<lb.d, lb.b> f9605i;

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap<lb.d, lb.c> f9606j;

    /* renamed from: k, reason: collision with root package name */
    public static final HashMap<lb.d, lb.c> f9607k;

    /* renamed from: l, reason: collision with root package name */
    public static final HashMap<lb.b, lb.b> f9608l;

    /* renamed from: m, reason: collision with root package name */
    public static final HashMap<lb.b, lb.b> f9609m;

    /* renamed from: n, reason: collision with root package name */
    public static final List<a> f9610n;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final lb.b f9611a;

        /* renamed from: b, reason: collision with root package name */
        public final lb.b f9612b;

        /* renamed from: c, reason: collision with root package name */
        public final lb.b f9613c;

        public a(lb.b bVar, lb.b bVar2, lb.b bVar3) {
            this.f9611a = bVar;
            this.f9612b = bVar2;
            this.f9613c = bVar3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f9611a, aVar.f9611a) && kotlin.jvm.internal.h.a(this.f9612b, aVar.f9612b) && kotlin.jvm.internal.h.a(this.f9613c, aVar.f9613c);
        }

        public final int hashCode() {
            return this.f9613c.hashCode() + ((this.f9612b.hashCode() + (this.f9611a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.f9611a + ", kotlinReadOnly=" + this.f9612b + ", kotlinMutable=" + this.f9613c + ')';
        }
    }

    static {
        StringBuilder sb2 = new StringBuilder();
        ka.c cVar = ka.c.f8800d;
        sb2.append(cVar.f8804a.toString());
        sb2.append('.');
        sb2.append(cVar.f8805b);
        f9598a = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        ka.c cVar2 = ka.c.f;
        sb3.append(cVar2.f8804a.toString());
        sb3.append('.');
        sb3.append(cVar2.f8805b);
        f9599b = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        ka.c cVar3 = ka.c.f8801e;
        sb4.append(cVar3.f8804a.toString());
        sb4.append('.');
        sb4.append(cVar3.f8805b);
        f9600c = sb4.toString();
        StringBuilder sb5 = new StringBuilder();
        ka.c cVar4 = ka.c.f8802g;
        sb5.append(cVar4.f8804a.toString());
        sb5.append('.');
        sb5.append(cVar4.f8805b);
        f9601d = sb5.toString();
        lb.b bVarL = lb.b.l(new lb.c("kotlin.jvm.functions.FunctionN"));
        f9602e = bVarL;
        lb.c cVarB = bVarL.b();
        kotlin.jvm.internal.h.e(cVarB, "FUNCTION_N_CLASS_ID.asSingleFqName()");
        f = cVarB;
        f9603g = lb.i.f9697n;
        d(Class.class);
        f9604h = new HashMap<>();
        f9605i = new HashMap<>();
        f9606j = new HashMap<>();
        f9607k = new HashMap<>();
        f9608l = new HashMap<>();
        f9609m = new HashMap<>();
        lb.b bVarL2 = lb.b.l(o.a.A);
        lb.c cVar5 = o.a.I;
        lb.c cVarH = bVarL2.h();
        lb.c cVarH2 = bVarL2.h();
        kotlin.jvm.internal.h.e(cVarH2, "kotlinReadOnly.packageFqName");
        lb.c cVarA = lb.e.a(cVar5, cVarH2);
        lb.b bVar = new lb.b(cVarH, cVarA, false);
        lb.b bVarL3 = lb.b.l(o.a.f8395z);
        lb.c cVar6 = o.a.H;
        lb.c cVarH3 = bVarL3.h();
        lb.c cVarH4 = bVarL3.h();
        kotlin.jvm.internal.h.e(cVarH4, "kotlinReadOnly.packageFqName");
        lb.b bVar2 = new lb.b(cVarH3, lb.e.a(cVar6, cVarH4), false);
        lb.b bVarL4 = lb.b.l(o.a.B);
        lb.c cVar7 = o.a.J;
        lb.c cVarH5 = bVarL4.h();
        lb.c cVarH6 = bVarL4.h();
        kotlin.jvm.internal.h.e(cVarH6, "kotlinReadOnly.packageFqName");
        lb.b bVar3 = new lb.b(cVarH5, lb.e.a(cVar7, cVarH6), false);
        lb.b bVarL5 = lb.b.l(o.a.C);
        lb.c cVar8 = o.a.K;
        lb.c cVarH7 = bVarL5.h();
        lb.c cVarH8 = bVarL5.h();
        kotlin.jvm.internal.h.e(cVarH8, "kotlinReadOnly.packageFqName");
        lb.b bVar4 = new lb.b(cVarH7, lb.e.a(cVar8, cVarH8), false);
        lb.b bVarL6 = lb.b.l(o.a.E);
        lb.c cVar9 = o.a.M;
        lb.c cVarH9 = bVarL6.h();
        lb.c cVarH10 = bVarL6.h();
        kotlin.jvm.internal.h.e(cVarH10, "kotlinReadOnly.packageFqName");
        lb.b bVar5 = new lb.b(cVarH9, lb.e.a(cVar9, cVarH10), false);
        lb.b bVarL7 = lb.b.l(o.a.D);
        lb.c cVar10 = o.a.L;
        lb.c cVarH11 = bVarL7.h();
        lb.c cVarH12 = bVarL7.h();
        kotlin.jvm.internal.h.e(cVarH12, "kotlinReadOnly.packageFqName");
        lb.b bVar6 = new lb.b(cVarH11, lb.e.a(cVar10, cVarH12), false);
        lb.c cVar11 = o.a.F;
        lb.b bVarL8 = lb.b.l(cVar11);
        lb.c cVar12 = o.a.N;
        lb.c cVarH13 = bVarL8.h();
        lb.c cVarH14 = bVarL8.h();
        kotlin.jvm.internal.h.e(cVarH14, "kotlinReadOnly.packageFqName");
        lb.b bVar7 = new lb.b(cVarH13, lb.e.a(cVar12, cVarH14), false);
        lb.b bVarD = lb.b.l(cVar11).d(o.a.G.f());
        lb.c cVar13 = o.a.O;
        lb.c cVarH15 = bVarD.h();
        lb.c cVarH16 = bVarD.h();
        kotlin.jvm.internal.h.e(cVarH16, "kotlinReadOnly.packageFqName");
        List<a> listT = b8.f.T(new a(d(Iterable.class), bVarL2, bVar), new a(d(Iterator.class), bVarL3, bVar2), new a(d(Collection.class), bVarL4, bVar3), new a(d(List.class), bVarL5, bVar4), new a(d(Set.class), bVarL6, bVar5), new a(d(ListIterator.class), bVarL7, bVar6), new a(d(Map.class), bVarL8, bVar7), new a(d(Map.Entry.class), bVarD, new lb.b(cVarH15, lb.e.a(cVar13, cVarH16), false)));
        f9610n = listT;
        c(Object.class, o.a.f8369a);
        c(String.class, o.a.f);
        c(CharSequence.class, o.a.f8376e);
        a(d(Throwable.class), lb.b.l(o.a.f8381k));
        c(Cloneable.class, o.a.f8373c);
        c(Number.class, o.a.f8379i);
        a(d(Comparable.class), lb.b.l(o.a.f8382l));
        c(Enum.class, o.a.f8380j);
        a(d(Annotation.class), lb.b.l(o.a.f8389s));
        for (a aVar : listT) {
            lb.b bVar8 = aVar.f9611a;
            lb.b bVar9 = aVar.f9612b;
            a(bVar8, bVar9);
            lb.b bVar10 = aVar.f9613c;
            lb.c cVarB2 = bVar10.b();
            kotlin.jvm.internal.h.e(cVarB2, "mutableClassId.asSingleFqName()");
            b(cVarB2, bVar8);
            f9608l.put(bVar10, bVar9);
            f9609m.put(bVar9, bVar10);
            lb.c cVarB3 = bVar9.b();
            kotlin.jvm.internal.h.e(cVarB3, "readOnlyClassId.asSingleFqName()");
            lb.c cVarB4 = bVar10.b();
            kotlin.jvm.internal.h.e(cVarB4, "mutableClassId.asSingleFqName()");
            lb.d dVarI = bVar10.b().i();
            kotlin.jvm.internal.h.e(dVarI, "mutableClassId.asSingleFqName().toUnsafe()");
            f9606j.put(dVarI, cVarB3);
            lb.d dVarI2 = cVarB3.i();
            kotlin.jvm.internal.h.e(dVarI2, "readOnlyFqName.toUnsafe()");
            f9607k.put(dVarI2, cVarB4);
        }
        for (tb.c cVar14 : tb.c.values()) {
            lb.b bVarL9 = lb.b.l(cVar14.t());
            ja.l lVarR = cVar14.r();
            kotlin.jvm.internal.h.e(lVarR, "jvmType.primitiveType");
            a(bVarL9, lb.b.l(ja.o.f8364k.c(lVarR.f8343a)));
        }
        for (lb.b bVar11 : ja.c.f8320a) {
            a(lb.b.l(new lb.c("kotlin.jvm.internal." + bVar11.j().o() + "CompanionObject")), bVar11.d(lb.h.f9680b));
        }
        for (int r02 = 0; r02 < 23; r02++) {
            a(lb.b.l(new lb.c(android.support.v4.media.a.d("kotlin.jvm.functions.Function", r02))), new lb.b(ja.o.f8364k, lb.f.t("Function" + r02)));
            b(new lb.c(f9599b + r02), f9603g);
        }
        for (int r6 = 0; r6 < 22; r6++) {
            ka.c cVar15 = ka.c.f8802g;
            b(new lb.c((cVar15.f8804a.toString() + '.' + cVar15.f8805b) + r6), f9603g);
        }
        lb.c cVarH17 = o.a.f8371b.h();
        kotlin.jvm.internal.h.e(cVarH17, "nothing.toSafe()");
        b(cVarH17, d(Void.class));
    }

    public static void a(lb.b bVar, lb.b bVar2) {
        lb.d dVarI = bVar.b().i();
        kotlin.jvm.internal.h.e(dVarI, "javaClassId.asSingleFqName().toUnsafe()");
        f9604h.put(dVarI, bVar2);
        lb.c cVarB = bVar2.b();
        kotlin.jvm.internal.h.e(cVarB, "kotlinClassId.asSingleFqName()");
        b(cVarB, bVar);
    }

    public static void b(lb.c cVar, lb.b bVar) {
        lb.d dVarI = cVar.i();
        kotlin.jvm.internal.h.e(dVarI, "kotlinFqNameUnsafe.toUnsafe()");
        f9605i.put(dVarI, bVar);
    }

    public static void c(Class cls, lb.d dVar) {
        lb.c cVarH = dVar.h();
        kotlin.jvm.internal.h.e(cVarH, "kotlinFqName.toSafe()");
        a(d(cls), lb.b.l(cVarH));
    }

    public static lb.b d(Class cls) {
        if (!cls.isPrimitive()) {
            cls.isArray();
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        return declaringClass == null ? lb.b.l(new lb.c(cls.getCanonicalName())) : d(declaringClass).d(lb.f.t(cls.getSimpleName()));
    }

    public static boolean e(lb.d dVar, String str) {
        Integer numT;
        String str2 = dVar.f9672a;
        if (str2 != null) {
            String strB0 = mc.n.b0(str2, str, "");
            return (strB0.length() > 0) && !mc.n.Z(strB0, '0') && (numT = mc.i.t(strB0)) != null && numT.intValue() >= 23;
        }
        lb.d.a(4);
        throw null;
    }

    public static lb.b f(lb.c cVar) {
        return f9604h.get(cVar.i());
    }

    public static lb.b g(lb.d dVar) {
        return (e(dVar, f9598a) || e(dVar, f9600c)) ? f9602e : (e(dVar, f9599b) || e(dVar, f9601d)) ? f9603g : f9605i.get(dVar);
    }
}
