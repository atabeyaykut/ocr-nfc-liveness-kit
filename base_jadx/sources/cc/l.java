package cc;

import cc.a1;
import na.h;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f2328a = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.f8976a.c(l.class, "descriptors"), "annotationsAttribute", "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"))};

    /* renamed from: b, reason: collision with root package name */
    public static final ic.q f2329b;

    static {
        a1.a aVar = a1.f2258b;
        da.d kClass = kotlin.jvm.internal.w.a(k.class);
        aVar.getClass();
        kotlin.jvm.internal.h.f(kClass, "kClass");
        f2329b = new ic.q(kClass, aVar.b(kClass));
    }

    public static final na.h a(a1 a1Var) {
        na.h hVar;
        kotlin.jvm.internal.h.f(a1Var, "<this>");
        k kVarB = b(a1Var);
        return (kVarB == null || (hVar = kVarB.f2325a) == null) ? h.a.f10653a : hVar;
    }

    public static final k b(a1 a1Var) {
        kotlin.jvm.internal.h.f(a1Var, "<this>");
        da.m<Object> property = f2328a[0];
        ic.q qVar = f2329b;
        qVar.getClass();
        kotlin.jvm.internal.h.f(property, "property");
        return (k) a1Var.f7362a.get(qVar.f7357b);
    }
}
