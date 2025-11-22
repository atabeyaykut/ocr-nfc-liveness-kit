package lb;

import java.util.LinkedHashMap;
import java.util.Set;
import m9.g0;
import m9.n;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final c f9685a;

    /* renamed from: b, reason: collision with root package name */
    public static final c f9686b;

    /* renamed from: c, reason: collision with root package name */
    public static final c f9687c;

    /* renamed from: d, reason: collision with root package name */
    public static final c f9688d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f9689e;
    public static final c f;

    /* renamed from: g, reason: collision with root package name */
    public static final c f9690g;

    /* renamed from: h, reason: collision with root package name */
    public static final b f9691h;

    /* renamed from: i, reason: collision with root package name */
    public static final b f9692i;

    /* renamed from: j, reason: collision with root package name */
    public static final b f9693j;

    /* renamed from: k, reason: collision with root package name */
    public static final b f9694k;

    /* renamed from: l, reason: collision with root package name */
    public static final b f9695l;

    /* renamed from: m, reason: collision with root package name */
    public static final b f9696m;

    /* renamed from: n, reason: collision with root package name */
    public static final b f9697n;

    /* renamed from: o, reason: collision with root package name */
    public static final Set<b> f9698o;

    /* renamed from: p, reason: collision with root package name */
    public static final Set<b> f9699p;

    /* renamed from: q, reason: collision with root package name */
    public static final b f9700q;

    /* renamed from: r, reason: collision with root package name */
    public static final b f9701r;

    /* renamed from: s, reason: collision with root package name */
    public static final b f9702s;

    /* renamed from: t, reason: collision with root package name */
    public static final b f9703t;

    static {
        c cVar = new c("kotlin");
        f9685a = cVar;
        c cVarC = cVar.c(f.t("reflect"));
        f9686b = cVarC;
        c cVarC2 = cVar.c(f.t("collections"));
        f9687c = cVarC2;
        c cVarC3 = cVar.c(f.t("ranges"));
        f9688d = cVarC3;
        cVar.c(f.t("jvm")).c(f.t("internal"));
        c cVarC4 = cVar.c(f.t("annotation"));
        f9689e = cVarC4;
        c cVarC5 = cVar.c(f.t("internal"));
        cVarC5.c(f.t("ir"));
        c cVarC6 = cVar.c(f.t("coroutines"));
        f = cVarC6;
        f9690g = cVar.c(f.t("enums"));
        x5.a.s(cVar, cVarC2, cVarC3, cVarC4, cVarC, cVarC5, cVarC6);
        j.a("Nothing");
        j.a("Unit");
        j.a("Any");
        j.a("Enum");
        j.a("Annotation");
        f9691h = j.a("Array");
        b bVarA = j.a("Boolean");
        b bVarA2 = j.a("Char");
        b bVarA3 = j.a("Byte");
        b bVarA4 = j.a("Short");
        b bVarA5 = j.a("Int");
        b bVarA6 = j.a("Long");
        b bVarA7 = j.a("Float");
        b bVarA8 = j.a("Double");
        f9692i = j.g(bVarA3);
        f9693j = j.g(bVarA4);
        f9694k = j.g(bVarA5);
        f9695l = j.g(bVarA6);
        f9696m = j.a("String");
        j.a("Throwable");
        j.a("Cloneable");
        j.f("KProperty");
        j.f("KMutableProperty");
        j.f("KProperty0");
        j.f("KMutableProperty0");
        j.f("KProperty1");
        j.f("KMutableProperty1");
        j.f("KProperty2");
        j.f("KMutableProperty2");
        f9697n = j.f("KFunction");
        j.f("KClass");
        j.f("KCallable");
        j.a("Comparable");
        j.a("Number");
        j.a("Function");
        Set<b> setS = x5.a.s(bVarA, bVarA2, bVarA3, bVarA4, bVarA5, bVarA6, bVarA7, bVarA8);
        f9698o = setS;
        int r6 = b8.f.V(n.Q0(setS));
        if (r6 < 16) {
            r6 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(r6);
        for (Object obj : setS) {
            f fVarJ = ((b) obj).j();
            kotlin.jvm.internal.h.e(fVarJ, "id.shortClassName");
            linkedHashMap.put(obj, j.d(fVarJ));
        }
        j.c(linkedHashMap);
        Set<b> setS2 = x5.a.s(f9692i, f9693j, f9694k, f9695l);
        f9699p = setS2;
        int r22 = b8.f.V(n.Q0(setS2));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(r22 >= 16 ? r22 : 16);
        for (Object obj2 : setS2) {
            f fVarJ2 = ((b) obj2).j();
            kotlin.jvm.internal.h.e(fVarJ2, "id.shortClassName");
            linkedHashMap2.put(obj2, j.d(fVarJ2));
        }
        j.c(linkedHashMap2);
        g0.G(g0.F(f9698o, f9699p), f9696m);
        c cVar2 = f;
        f fVarT = f.t("Continuation");
        if (cVar2 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarT);
        j.b("Iterator");
        j.b("Iterable");
        j.b("Collection");
        j.b("List");
        j.b("ListIterator");
        j.b("Set");
        b bVarB = j.b("Map");
        j.b("MutableIterator");
        j.b("MutableIterable");
        j.b("MutableCollection");
        f9700q = j.b("MutableList");
        j.b("MutableListIterator");
        f9701r = j.b("MutableSet");
        b bVarB2 = j.b("MutableMap");
        f9702s = bVarB2;
        bVarB.d(f.t("Entry"));
        bVarB2.d(f.t("MutableEntry"));
        j.a("Result");
        j.e("IntRange");
        j.e("LongRange");
        j.e("CharRange");
        c cVar3 = f9689e;
        f fVarT2 = f.t("AnnotationRetention");
        if (cVar3 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarT2);
        c.j(f.t("AnnotationTarget"));
        f9703t = new b(f9690g, f.t("EnumEntries"));
    }
}
